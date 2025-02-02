class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.4/ssl-toolkit-darwin-arm64"
      sha256 "a10d0e8fcdc227069386bc344dc5f478789b096ea2f266958e3fd73ad146b6de"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.4/ssl-toolkit-darwin-amd64"
      sha256 "5adf7373d782242d7d3a8c08f2acfbbb6aff2ce1193a42503942abe45d1a2ed5"
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
