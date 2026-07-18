cask "tokenuse-desktop" do
  version "1.2.2"
  sha256 "2811c4a4c7bcdc1f56885bae6e18102f7f5e3912f438b6b38293897985ab3205"

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
