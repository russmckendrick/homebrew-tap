cask "azdocs-desktop" do
  version "0.4.0"
  sha256 "c9d9452b88cce0ed7c8e4af8c0faced462f5ac03708a464d113693ab2e16c4b7"

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
