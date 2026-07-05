class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.1.0/terminal-svg-darwin-arm64"
      sha256 "869e198747eb84e8a74154457ba642de4babb86193900315a96a6ad3cf90f5a1"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.1.0/terminal-svg-darwin-amd64"
      sha256 "70435d29b4623d92635defa3abb10229bd897847214899e3393a2d001ca2a6c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.1.0/terminal-svg-linux-arm64"
      sha256 "c2b4a3500358aff827d2e3e59c9675a4902f205f9e32dc5b637ea28b3da9ffb9"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.1.0/terminal-svg-linux-amd64"
      sha256 "069ca78138a4287269f111b5b5ec6d5179601a0d32dad0e78a36e880c6ace6fa"
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
