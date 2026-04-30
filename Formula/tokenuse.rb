class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.3/tokenuse-darwin-arm64"
      sha256 "b255ab9c5a3fb4124e281b7c7dc855aaa68dd892e50c7b2b6373206de3134699"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.3/tokenuse-darwin-amd64"
      sha256 "7301409775deb314b6b7e8fe623d0a60f146fc7d098db0e71052e3ba7cc1ae67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.3/tokenuse-linux-arm64"
      sha256 "5c1f6f1709bd996f5b57fea9666e6e41b2e2e23a6ad485db3e1c7d1beb5fa986"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.3/tokenuse-linux-amd64"
      sha256 "86a8a7ca0f4b84559b7029c7a79d6f4c2512ac7d7f8f271eb067a8caf2f51ad9"
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
