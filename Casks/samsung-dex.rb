cask "samsung-dex" do
  version "2.0.0.11"
  sha256 :no_check

  url "https://www.samsung.com/global/download/SamsungDeXMac"
  name "Samsung DeX"
  desc "Bring Samsung DeX to your computer"
  homepage "https://www.samsung.com/us/explore/dex"

  pkg "Install Samsung DeX.pkg"

  uninstall script: {
    executable: "#{staged_path}/Uninstall.app/Contents/MacOS/Uninstall",
  }
end
