class AsciinemaToSvg < Formula
  desc "Convert asciinema v2 and v3 casts into themed animated SVG terminal recordings"
  homepage "https://github.com/russmckendrick/asciinema-to-svg"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/asciinema-to-svg/releases/download/v0.0.1/asciinema-to-svg-darwin-arm64"
      sha256 "1e7c223f389610397bb87d3dcba4c8e1d2dfae7320eb9b2fbe8863d414782de8"
    else
      url "https://github.com/russmckendrick/asciinema-to-svg/releases/download/v0.0.1/asciinema-to-svg-darwin-amd64"
      sha256 "c76167cd15a1accac76e890ec8641cabe931b59caefe5cd386561405bbc1bf44"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "asciinema-to-svg-darwin-arm64" => "asciinema-to-svg"
    else
      bin.install "asciinema-to-svg-darwin-amd64" => "asciinema-to-svg"
    end
  end

  test do
    system "#{bin}/asciinema-to-svg", "--version"
  end
end
