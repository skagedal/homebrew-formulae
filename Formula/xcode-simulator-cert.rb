class XcodeSimulatorCert < Formula
  desc "Manage Xcode simulators and their Certificate Authorities"
  homepage "https://github.com/skagedal/xcode-simulator-cert"
  url "https://github.com/skagedal/xcode-simulator-cert.git",
      :tag => "0.2.1", :revision => "549361c7b29bc4787881d3ece94c745d1a628906"
  head "https://github.com/skagedal/xcode-simulator-cert.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcode-simulator-cert" "list"
  end
end
