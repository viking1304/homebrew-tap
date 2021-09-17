cask "vidjuice-unitube" do
  version "3.8.0"
  sha256 :no_check

  url "https://download.vidjuice.com/unitube.dmg", verified: "https://download.vidjuice.com/"
  name "VidJuice UniTube"
  desc "Download videos and audios from 10,000+ sites across all your devices"
  homepage "https://www.vidjuice.com/"

  app "VidJuice UniTube.app"
end
