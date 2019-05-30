class XcodeSimulatorTool < Formula
  desc "Manage Xcode simulators and their Certificate Authorities"
  homepage "https://github.com/skagedal/xcode-simulator-tool"
  url "https://github.com/skagedal/xcode-simulator-tool.git",
      :tag => "0.1.0", :revision => "5fb7d6ebc0fb90d6d2edc95199619e032a33aace"
  head "https://github.com/skagedal/xcode-simulator-tool.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcode-simulator-tool" "list-devices"
  end

  bottle do
    root_url "https://github.com/skagedal/xcode-simulator-tool/releases/download/0.1.0/"
    cellar :any_skip_relocation
    sha256 "e6da1be210b440187405ff5fe0809958daeb5d3dd1d3a9e6303f4c52678fa526" => :mojave
  end
end
