class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.10/tokenuse-darwin-arm64"
      sha256 "c99b56e41f853ce73f615610e36c8312cf8abafc77994e094305e1f5ae398326"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.10/tokenuse-darwin-amd64"
      sha256 "e644e7473d73e0a0c7bc65a87540ae7f3c1bf471b3d6a70fc24c5a7c189a8aca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.10/tokenuse-linux-arm64"
      sha256 "984b761bbe459c0bc2af14db4769327897e82264815a851a27326e7a25b91966"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v0.0.10/tokenuse-linux-amd64"
      sha256 "974582d3c5e30f3ef7d179cb57d02226b64ecf22bb5a5421dea49bfbc7d5df10"
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
