# Edit this cask in github.com/duggan/usagi (homebrew/usagi.rb); the release
# workflow substitutes the version + sha256 and publishes it to the
# duggan/homebrew-usagi tap.  Install:  brew tap duggan/usagi && brew install --cask usagi

cask "usagi" do
  version "0.1.2"
  sha256 "63c7b4aba509cc1e28a1a7d3158af4f893ce5f3a16e2f2bd993e5669f71ab2ea"

  url "https://github.com/duggan/usagi/releases/download/v#{version}/Usagi-#{version}.dmg"
  name "usagi"
  desc "Minimalist Claude usage tracker for the macOS menu bar"
  homepage "https://github.com/duggan/usagi"

  depends_on macos: ">= :sonoma"

  app "Usagi.app"

  zap trash: [
    "~/Library/Preferences/ie.duggan.usagi.plist",
    "~/Library/Application Support/Usagi",
  ]
end
