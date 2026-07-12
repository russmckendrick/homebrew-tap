cask "tokenuse-desktop" do
  version "1.0.0"
  sha256 "332eec682bc9b1cdb1bf1692f1b99c49526c1964f29c04e4f77baab080bec3bb"

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
