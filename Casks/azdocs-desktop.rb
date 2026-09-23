cask "azdocs-desktop" do
  version "0.4.1"
  sha256 "ebc0269967779d6698ef247fd629071aae5ac3149e6b207f018d54c81ab78e0a"

  url "https://github.com/russmckendrick/azdocs/releases/download/v#{version}/azdocs-desktop-macos-arm64.dmg"
  name "azdocs"
  desc "Desktop explorer for offline Azure estate snapshots"
  homepage "https://github.com/russmckendrick/azdocs"

  depends_on arch: :arm64

  livecheck do
    url :url
    strategy :github_latest
  end

  app "azdocs.app"
end
