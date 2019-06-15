class XcodeSimulatorCert < Formula
  desc "Manage Xcode simulators and their Certificate Authorities"
  homepage "https://github.com/skagedal/xcode-simulator-cert"
  url "https://github.com/skagedal/xcode-simulator-cert.git",
      :tag => "0.2.0", :revision => "9ddde6e92ce40d68907c49f1bfcd9e1cf5397923"
  head "https://github.com/skagedal/xcode-simulator-cert.git"

  depends_on :xcode => ["10.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/xcode-simulator-cert" "list-devices"
  end
end
