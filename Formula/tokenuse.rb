class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.9/tokenuse-darwin-arm64"
      sha256 "ed3122146bb805f9082ea6f1c3478c5a3b30ff0957f87a11ccbb367cc0a30879"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.9/tokenuse-darwin-amd64"
      sha256 "640c1bc98484a23ac12db0a30d5dc8a7ea77df68f1ee7580cf59ccdb3b1c6fe6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.9/tokenuse-linux-arm64"
      sha256 "4be073599be236db71215aab0423d0e8b3a4cd12af3943bb6328735dcf68d5dc"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.9/tokenuse-linux-amd64"
      sha256 "0ce11a2e51e58a4b3ebe0a33910d9c99ced9cc8fbad04fcf705fdf39150bf0e9"
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
