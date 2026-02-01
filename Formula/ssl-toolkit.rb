class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.5/ssl-toolkit-darwin-arm64"
      sha256 "Not"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.5/ssl-toolkit-darwin-amd64"
      sha256 "Not"
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
