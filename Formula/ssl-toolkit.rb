class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-darwin-arm64"
      sha256 "64516d33d8f993049f1f4261b9c9bbd44d84b1855d9da37c244cbca5a640ea97"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-darwin-amd64"
      sha256 "007fe51c2d9c58fbf5122e331103343fd543d4bffd2ceb403f6fbea1d9734950"
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
