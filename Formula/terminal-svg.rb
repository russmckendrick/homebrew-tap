class TerminalSvg < Formula
  desc "Pixel-perfect SVG screenshots of terminal output with window chrome"
  homepage "https://github.com/russmckendrick/terminal-svg"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.2.0/terminal-svg-darwin-arm64"
      sha256 "bc8dfb070730bbd76c73bcb99243b4590607cafdf61121706db2635870d6c173"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.2.0/terminal-svg-darwin-amd64"
      sha256 "a81db19c4c32101f1016fc758dc902f40455a6d7e6a668fd3774c5493f2a2b9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.2.0/terminal-svg-linux-arm64"
      sha256 "98c291ae9d95438e35842ded766b9842ecb3238c8caa0300ee59764e050d8ecf"
    else
      url "https://github.com/russmckendrick/terminal-svg/releases/download/v0.2.0/terminal-svg-linux-amd64"
      sha256 "7e3311adf1f8680d5e594701aabf4619cc2d79edeaeb2959e7e063017c5a608d"
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
