cask "tokenuse-desktop" do
  version "1.2.1"
  sha256 "235ad0754223dcc1039db12205bbba6f6a4a607e74ca7b4e6724fcc3d3542330"

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
