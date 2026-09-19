cask "azdocs-desktop" do
  version "0.2.0"
  sha256 "a7a67f51f6ecb462246f88faec85125b5d423d0cdaee8875b042a6cf760e6c16"

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
