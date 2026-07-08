class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.6.0/terminal-svg-darwin-arm64"
      sha256 "22da0029cc3ad292c96563a16d90df3b2e63a572551e1d807368891ffa2d792b"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.6.0/terminal-svg-darwin-amd64"
      sha256 "0c6b1e68990a8fbba776c0c357611bf4979577e2fa9c337c41b574ffb540e59c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.6.0/terminal-svg-linux-arm64"
      sha256 "d04d0a74534b24e9c126494010beb06ca2a374f44fba4470b4a667acb032131d"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.6.0/terminal-svg-linux-amd64"
      sha256 "d2143e660791d2be09fc051ba08ced099f7d1b864c90a2f1bf1dad52386b5faa"
    end
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "terminal-svg-darwin-arm64" => "terminal-svg"
      else
        bin.install "terminal-svg-darwin-amd64" => "terminal-svg"
      end
    end

    on_linux do
      if Hardware::CPU.arm?
        bin.install "terminal-svg-linux-arm64" => "terminal-svg"
      else
        bin.install "terminal-svg-linux-amd64" => "terminal-svg"
      end
    end
  end

  test do
    assert_match "terminal-svg", shell_output("#{bin}/terminal-svg --version")
  end
end
