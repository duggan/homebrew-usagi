# Edit this cask in github.com/duggan/usagi (homebrew/usagi.rb); the release
# workflow substitutes the version + sha256 and publishes it to the
# duggan/homebrew-usagi tap.  Install:  brew tap duggan/usagi && brew install --cask usagi

cask "usagi" do
  version "1.1.0"
  sha256 "2d39c5efa4ae5976168c8856d5091c4270064b7a2d42cec79bcbdc129ea6f566"

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
