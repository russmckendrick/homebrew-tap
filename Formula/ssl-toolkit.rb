class SslToolkit < Formula
  desc "SSL certificate toolkit"
  homepage "https://github.com/russmckendrick/ssl-toolkit"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-darwin-arm64"
      sha256 "64516d33d8f993049f1f4261b9c9bbd44d84b1855d9da37c244cbca5a640ea97"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-darwin-amd64"
      sha256 "007fe51c2d9c58fbf5122e331103343fd543d4bffd2ceb403f6fbea1d9734950"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-linux-arm64"
      sha256 "bee32ad2eb118b4bb0241a389d8ab10c66d9532aabbd443dfebcb593a00d844a"
    else
      url "https://github.com/russmckendrick/ssl-toolkit/releases/download/v0.0.7/ssl-toolkit-linux-amd64"
      sha256 "dd1ce77f80d8e7e20cc883f10a150dcdc635822ea706ebb46f9e396b5e5098d6"
    end
  end

  def install
    os = OS.mac? ? "darwin" : "linux"
    arch = Hardware::CPU.arm? ? "arm64" : "amd64"

    bin.install "ssl-toolkit-#{os}-#{arch}" => "ssl-toolkit"
  end

  test do
    system "#{bin}/ssl-toolkit", "--version"
  end
end
