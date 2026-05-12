cask "usagi" do
  version "0.1.1"
  sha256 "a2b4d8061e678d2c74f27e6f8dd435cd65e37c731c76d3fa35ca7e7ba80d7b06"

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
