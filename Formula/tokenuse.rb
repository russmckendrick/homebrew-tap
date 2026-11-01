class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.8/tokenuse-darwin-arm64"
      sha256 "b832bbddc8cc4d1e83ca68a91077c9a50c2da1c53605bf7de1a51cc2a5c61040"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.8/tokenuse-darwin-amd64"
      sha256 "91f301dd04551c6fab3d5beb7e36482f7c9e7068b21e2fd34f16ecad7701dca1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.8/tokenuse-linux-arm64"
      sha256 "5ab94da1adef2765fbe4f778e1d32f552b665f954668850a3d8140f63d8653a5"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.8/tokenuse-linux-amd64"
      sha256 "c37301f7bedd58e8de99bcef523b7bc1695956ae98436eaa2433c8cd14fd4a03"
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
