class Tokenuse < Formula
  desc "Local-only Rust TUI for AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  version "1.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.4/tokenuse-darwin-arm64"
      sha256 "9c409f1cefdf3e5fa8090c2fadfb9e55edc0312d7ff946d99d9c402b76824311"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.4/tokenuse-darwin-amd64"
      sha256 "b86741dfbcdb34a58f5afcbdaa6da9722737b3a2cf0d3b2076c3908a718c6fed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.4/tokenuse-linux-arm64"
      sha256 "6dd8fa777011e9bbc49a4d5da9f7b7cdf9479072a8acae8523a11901b257b8f2"
    else
      url "https://github.com/russmckendrick/tokenuse/releases/download/v1.2.4/tokenuse-linux-amd64"
      sha256 "d8cb45fdbb9d93029bcd7f43d5c9073ef3da5e7dbab9041290a38d3682963306"
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
