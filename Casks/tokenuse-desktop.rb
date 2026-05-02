cask "tokenuse-desktop" do
  version "0.0.6"
  sha256 "bc2d629cb5f65f8f66633fbfacdecff6c7e4633beb132ef0bc61790d308930ce"

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
