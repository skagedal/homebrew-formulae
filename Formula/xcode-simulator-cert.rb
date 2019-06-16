class XcodeSimulatorCert < Formula
  desc "Manage root certificates in Xcode simulators"
  homepage "https://github.com/skagedal/xcode-simulator-cert"
  url "https://github.com/skagedal/xcode-simulator-cert.git",
      :tag => "0.2.1", :revision => "f1355b685f92f02467b5b33dc101cbc39adde578"
  head "https://github.com/skagedal/xcode-simulator-cert.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcode-simulator-cert" "list"
  end
end
