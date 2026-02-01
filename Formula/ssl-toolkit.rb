class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.6-2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.6-2/ssl-toolkit-darwin-arm64"
      sha256 "e8187adb54db23fccb3a280fd35b48f322ea045671e218f3b8835bcb7d70d489"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.6-2/ssl-toolkit-darwin-amd64"
      sha256 "0b9ba8115d204a42c532629ba5355ef7d0428507644fb890a0460ceb37fb15ed"
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
