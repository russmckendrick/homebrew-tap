class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.6/tokenuse-darwin-arm64"
      sha256 "aa99c9ff0b792a128c38176491e91511d6f0dccaeea793c52bd8e313f2263cd2"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.6/tokenuse-darwin-amd64"
      sha256 "48dab14b49fe6ffdabf8150fd40a72c6037bfc381ba66b9750455da9cd7f101c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.6/tokenuse-linux-arm64"
      sha256 "e6d0ff1ae311164b3ab73f8a7d2952d0cdd19bdfed9c2acbd56e8c3716f10380"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.6/tokenuse-linux-amd64"
      sha256 "269337d5de2d7323458df6ebfb4582103d1d002ba0adc40b2efc876b3adbfe67"
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
