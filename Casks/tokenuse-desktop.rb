cask "tokenuse-desktop" do
  version "0.0.11"
  sha256 "b9c4e71ec374aa8641c28146b3d73d98e6cc21364a80e4d8a8d66f09025ee62d"

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
