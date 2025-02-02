class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.2/ssl-toolkit-darwin-arm64"
      sha256 "d74b6ed23463ce5a8200f3b93aa8f20a04ff4f98ef6d826931a472f2908a94f3"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.2/ssl-toolkit-darwin-amd64"
      sha256 "4e083387975c4965ce105439c71058f11153f3c9a4ed5e0d369a3121154d347b"
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
