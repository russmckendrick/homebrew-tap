class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.3.0/terminal-svg-darwin-arm64"
      sha256 "6f61e95c11d985c928475cc3060ffd5546e3cdc36072d09c511150e5dfe9d423"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.3.0/terminal-svg-darwin-amd64"
      sha256 "2ef23135741dcfbc8c5e1d09c22961e81b399e7e54864a4e238116ea91dca8de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.3.0/terminal-svg-linux-arm64"
      sha256 "e23aece2b870332d1b530567c4525849383ee03cf4d3fa3a44b0a234d3410aaf"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.3.0/terminal-svg-linux-amd64"
      sha256 "6436828c1a99fe7e5ce1fabafb2faed82eb07eec2b913ba2c2f68c61c608ce59"
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
