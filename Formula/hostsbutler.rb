class Hostsbutler < Formula
  desc "A cross-platform TUI application for managing the system hosts file"
  homepage "https://github.com/russmckendrick/hostsbutler"
  version "0.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/hostsbutler/releases/download/v0.0.3/hostsbutler-darwin-arm64"
      sha256 "c7c61d01b6fdbcabd3e5ea5d01080662b0f618704035c7af22d386c68968ca22"
    else
      url "https://github.com/russmckendrick/hostsbutler/releases/download/v0.0.3/hostsbutler-darwin-amd64"
      sha256 "ba231ef7dcce4e92e898a3aefd5ba728851b3a56c821e02c63a656b7d0c2defa"
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
