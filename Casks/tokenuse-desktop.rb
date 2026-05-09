cask "tokenuse-desktop" do
  version "0.0.10"
  sha256 "8dbd24ad58396c54a878a05f7f06185b8ecdfe6f6484f22353e6f28bdbf87598"

  url "https://github.com/russmckendrick/tokenuse/releases/download/v#{version}/tokenuse-desktop-macos-arm64.dmg"
  name "Token Use"
  desc "Desktop app for local AI coding tool token and cost usage"
  homepage "https://github.com/russmckendrick/tokenuse"
  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Token Use.app"
end
