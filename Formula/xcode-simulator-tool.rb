class XcodeSimulatorTool < Formula
  desc "Manage Xcode simulators and their Certificate Authorities"
  homepage "https://github.com/skagedal/xcode-simulator-tool"
  head "https://github.com/skagedal/xcode-simulator-tool.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcode-simulator-tool" "list-devices"
  end
end
