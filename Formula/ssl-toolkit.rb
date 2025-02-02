class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.3/ssl-toolkit-darwin-arm64"
      sha256 "bb0788dde6fec0022d5b04d72e12ba8589e4aa7e5457c6ccb0005548ee190c84"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.3/ssl-toolkit-darwin-amd64"
      sha256 "b5a74fc019af92bddb3bf6c97a5e002ac360fc4c966fbe068aaad0804a1ede39"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "ssl-toolkit-darwin-arm64" => "ssl-toolkit"
    else
      bin.install "ssl-toolkit-darwin-amd64" => "ssl-toolkit"
    end
  end

  test do
    system "#{bin}/ssl-toolkit", "--version"
  end
end
