# Edit this cask in github.com/duggan/usagi (homebrew/usagi.rb); the release
# workflow substitutes the version + sha256 and publishes it to the
# duggan/homebrew-usagi tap.  Install:  brew tap duggan/usagi && brew install --cask usagi

cask "usagi" do
  version "1.2.0"
  sha256 "239bbe4169498bac5bb658818d8aabcef1dbb7544224ebb3a68ab2030e471cd8"

  url "https://github.com/duggan/usagi/releases/download/v#{version}/Usagi-#{version}.dmg"
  name "usagi"
  desc "Minimalist Claude usage tracker for the macOS menu bar"
  homepage "https://github.com/duggan/usagi"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Usagi.app"

  zap trash: [
    "~/Library/Preferences/ie.duggan.usagi.plist",
    "~/Library/Application Support/Usagi",
  ]
end
