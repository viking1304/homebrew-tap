cask "avtouchbar" do
  version "3.0.6"
  sha256 "f7d02d0ff050ef42b077f0941ff9ab7e65a4e3ee43f60dcd17758f6733e18c87"

  url "https://www.avtouchbar.com/avtouchbar-#{version.dots_to_hyphens}/"
  name "AVTouchBar"
  desc "Audio Visualizer for the Touch Bar"
  homepage "https://www.avtouchbar.com/"

  app "AVTouchBar.app"
end
