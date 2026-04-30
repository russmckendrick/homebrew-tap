class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.2/tokenuse-darwin-arm64"
      sha256 "d5c5dd174088ab2c9ac099855a3a30fa1bfc57b12caec00d0a21ba0a0923e7c2"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.2/tokenuse-darwin-amd64"
      sha256 "372f765034f25f1a6864f58228fac14064079618a46f1e94ae9848a27a1788db"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.2/tokenuse-linux-arm64"
      sha256 "e15c2a53e873c64b269aff00fd96fa58abad1ecd0e23348987a1d439e748a9ca"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.2/tokenuse-linux-amd64"
      sha256 "0a6360318a6b3d890092273526a395c4a691dd2aab673db32707090d10fee71a"
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
