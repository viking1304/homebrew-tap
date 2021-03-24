cask "lucid" do
  version "4"
  sha256 "1572feaad0ad764543780fce49c358297d223edc07ec13daba085ff2a44110c3"

  url "https://theescapersmonza.s3.amazonaws.com/lucid#{version}.zip", verified: "https://theescapersmonza.s3.amazonaws.com/"
  name "Lucid"
  desc "Quickly and easily add CSS3 transitions/animations to your pages"
  homepage "https://www.theescapers.com/lucid"

  app "Lucid #{version}.app"
end
