cask "jump-desktop-connect" do
    version "4.1.3"
    sha256 :no_check

    url "https://mirror.jumpdesktop.com/downloads/connect/JumpDesktopConnect.dmg"

    name "Jump Desktop Connect"
    desc "Configure your computer for remote access by installing the free Jump Desktop Connect app"
    homepage "https://jumpdesktop.com/"

    depends_on macos: ">= :sierra"

    pkg ".jdc.sparkle_guided.pkg""

    uninstall pkgutil: "com.p5sys.jump.connect"
end