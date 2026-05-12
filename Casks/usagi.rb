# Edit this cask in github.com/duggan/usagi (homebrew/usagi.rb); the release
# workflow substitutes the version + sha256 and publishes it to the
# duggan/homebrew-usagi tap.  Install:  brew tap duggan/usagi && brew install --cask usagi

cask "usagi" do
  version "0.1.3"
  sha256 "cd77190c5d2567b7341fe685deaafe604ac28806e128320f081097732fe7d17c"

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
