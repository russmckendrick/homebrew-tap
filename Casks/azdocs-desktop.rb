cask "azdocs-desktop" do
  version "0.1.1"
  sha256 "4e1b472845fdfb7386491c17957e5aa767daff941029c5d8dc2183b19f763362"

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
