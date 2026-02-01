class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.5/ssl-toolkit-darwin-arm64"
      sha256 "9e362e94e67679d75a7c3b4e30b553d28d076ee72d041af29413044bf22cfae6"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.5/ssl-toolkit-darwin-amd64"
      sha256 "8a0046bacf1c9edb4d69ef4bc50ece5236f3f50f389683982dbaaa692da5ac0b"
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
