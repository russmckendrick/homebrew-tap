cask "azdocs-desktop" do
  version "0.1.0"
  sha256 "46cda2e32c3a09c70f2988ab26caa07a30b521c712245f622d580a72f1bafae2"

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
