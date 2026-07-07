class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.5.0/terminal-svg-darwin-arm64"
      sha256 "db6f901ccd2ee9666a37ca49425cd5939cf490310fe6a6bc4273cc2d7e32760f"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.5.0/terminal-svg-darwin-amd64"
      sha256 "37ed4fa8174057bb9ba6117dbea5ed0f00e0d52adf8e501be7570caa0fbe8aab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.5.0/terminal-svg-linux-arm64"
      sha256 "b8018e96a0f37c21f43137bd675e2853c355ed91243c9f15f538f78b6cb13f86"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.5.0/terminal-svg-linux-amd64"
      sha256 "c40f9a8b8734fba71de8f033d2ddf17f98d76b776b5aa1df5c9bfb5730f52e50"
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
