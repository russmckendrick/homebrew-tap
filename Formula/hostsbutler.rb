class Hostsbutler < Formula
  desc "A cross-platform TUI application for managing the system hosts file"
  homepage "https://github.com/russmckendrick/hostsbutler"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/hostsbutler/releases/download/v0.0.2/hostsbutler-darwin-arm64"
      sha256 "8b51a2157810b422c95f310b07fa6343407787ff64b63d03066afccab04f1d4b"
    else
      url "https://github.com/russmckendrick/hostsbutler/releases/download/v0.0.2/hostsbutler-darwin-amd64"
      sha256 "0351ba3a34a1f2ae9136749fcb0f7fd058f937d8ddb60cd985a0c09f0572c4fb"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "hostsbutler-darwin-arm64" => "hostsbutler"
    else
      bin.install "hostsbutler-darwin-amd64" => "hostsbutler"
    end
  end

  test do
    system "#{bin}/hostsbutler", "--version"
  end
end
