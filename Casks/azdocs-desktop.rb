cask "azdocs-desktop" do
  version "0.3.0"
  sha256 "4d6707b8a020b2612e3595312823c2f4d9754e7851d77cb6973a5200f1d1d804"

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
