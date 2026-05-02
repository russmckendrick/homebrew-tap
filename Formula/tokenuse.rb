class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.5/tokenuse-darwin-arm64"
      sha256 "ce6246c38fc8b3fae80dcd7dfbb8f2ee3da7c4c6ddc8e6980c5aac9bc53e92b6"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.5/tokenuse-darwin-amd64"
      sha256 "57051ae84b8532423ffc0e62ed587673f7174d6d7836ae336d327902b092a50d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.5/tokenuse-linux-arm64"
      sha256 "bc9183c451bf7f273d0f4a799472b81283b2f1010a6dbf2511813fbb1de0b22e"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.5/tokenuse-linux-amd64"
      sha256 "f370e52a50485d9716c75c508ca670b45831aeb8948502d91c69f0576dc7e3d9"
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
