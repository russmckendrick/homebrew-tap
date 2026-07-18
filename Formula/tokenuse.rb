class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.2/tokenuse-darwin-arm64"
      sha256 "3a2b9c717886abcb2feb43c680c6d4c4df13abbb8c310de0bf1120c4333e6c33"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.2/tokenuse-darwin-amd64"
      sha256 "104cc919a25eb5e22d4b3d123eb78eb6f44bf447ae3e9559a133975ec4177e75"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.2/tokenuse-linux-arm64"
      sha256 "9fd2055f95ee2a6059c6b41e4e019ad224290685fddf5b9f23b4b83fb7fb7817"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.2/tokenuse-linux-amd64"
      sha256 "06ae9261059e3371db25b0a36a29d9f797d7c080852298f97caf4f2edee1a428"
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
