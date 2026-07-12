class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.0.0/tokenuse-darwin-arm64"
      sha256 "c7b0177cfae966e7242ac6c84baaaf7eb7d5b93cabbf755ea12cd28504de4e85"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.0.0/tokenuse-darwin-amd64"
      sha256 "1e2c090a5c1b65aa9dac116bcc5cdf20c1c471e8342b0626b4fda7cea9e808b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.0.0/tokenuse-linux-arm64"
      sha256 "27236f0cf565f8c1c9e1bc552603b3144e7dadfe86d5d27f642dca8da338ffb8"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.0.0/tokenuse-linux-amd64"
      sha256 "94dec9599d0b8afa52fd5abb8317cf1d76ca7002f7a707510e872ccdecfd0aac"
    end
  end

  def install
    on_macos do
      if Hardware::CPU.arm?
        bin.install "tokenuse-darwin-arm64" => "tokenuse"
      else
        bin.install "tokenuse-darwin-amd64" => "tokenuse"
      end
    end

    on_linux do
      if Hardware::CPU.arm?
        bin.install "tokenuse-linux-arm64" => "tokenuse"
      else
        bin.install "tokenuse-linux-amd64" => "tokenuse"
      end
    end
  end

  test do
    assert_match "tokenuse", shell_output("#{bin}/tokenuse --version")
  end
end
