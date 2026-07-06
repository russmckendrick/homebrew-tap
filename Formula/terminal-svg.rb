class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.4.0/terminal-svg-darwin-arm64"
      sha256 "f21295cb630c7a634667de4d378a33db48f816635870cb3bcc8083dade1c2926"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.4.0/terminal-svg-darwin-amd64"
      sha256 "376bc6625cc35d311ae03cad65c58009e7317787df05168dfe7d3e1c48d7eb3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.4.0/terminal-svg-linux-arm64"
      sha256 "15f205680a5410b7ac8fb5a8418b071602ebb8dbf90ce3184aa830260d0da7de"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.4.0/terminal-svg-linux-amd64"
      sha256 "1198b0719cee0006feacdf4879a7fed89bd6f6f7f11d287bf45309da6731e2a0"
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
