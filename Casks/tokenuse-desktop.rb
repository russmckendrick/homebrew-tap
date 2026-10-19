cask "tokenuse-desktop" do
  version "1.2.7"
  sha256 "12904d3ed9f6ea868c3853c84db066cb891321acb6fd8007190a8b174950d212"

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
