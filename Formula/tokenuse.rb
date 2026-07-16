class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.1/tokenuse-darwin-arm64"
      sha256 "4e44c5e3f3d1fcfe656853174129901712d16fe1ea0733694bac29aef5d42371"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.1/tokenuse-darwin-amd64"
      sha256 "3f8ab242d7fbaeb73391431810d4c882d935a4f46b47d67c6110d57b133d076c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.1/tokenuse-linux-arm64"
      sha256 "5717e1b35ae70232ada58222ac9ff1f7f242e98f6d6c2423dde69a9b7049c88d"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.1.1/tokenuse-linux-amd64"
      sha256 "b4050ccac127f0491e712780cb72280cad4ab251dc17b940e39c2015f7d5443f"
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
