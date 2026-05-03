cask "tokenuse-desktop" do
  version "0.0.7"
  sha256 "e26c397a5c61639c55c19e7e993ab1b710f31376e92fc0ec4d19850de447ae83"

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
