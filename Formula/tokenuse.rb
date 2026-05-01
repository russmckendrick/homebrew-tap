class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.4/tokenuse-darwin-arm64"
      sha256 "71d29ecdbd37e4bd17e1f29336f382551d8d291dd68339785049ffd8edca821c"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.4/tokenuse-darwin-amd64"
      sha256 "63d0b79b643b01b6bdab2424af36746caf351475d4e94e26f855ade00699ea32"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.4/tokenuse-linux-arm64"
      sha256 "81cec8190189b5a274bca97f3c75fb0f9c558d537dbe0feae3604032cbef959e"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.4/tokenuse-linux-amd64"
      sha256 "578b9efae1ae032f8b31a5ccc5db60bc8e5746877880c8c26906e7c480ede9e3"
    end
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "tokenuse-darwin-arm64" => "tokenuse"
      else
        bin.install "tokenuse-darwin-amd64" => "tokenuse"
      end
    end

    on_linux do
      if Hardware::CPU.arm?
        bin.install "tokenuse-linux-arm64" => "tokenuse"
      else
        bin.install "tokenuse-linux-amd64" => "tokenuse"
      end
    end
  end

  test do
    assert_match "tokenuse", shell_output("#{bin}/tokenuse --version")
  end
end
