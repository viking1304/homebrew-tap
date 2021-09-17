cask "paragon-ntfs-preview" do
  version "15"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.paragon-software.com/demo/ntfsmac_montereypreview.dmg"
  name "Paragon NTFS for Mac"
  homepage "https://www.paragon-software.com/ufsdhome/ntfs-mac/"

  conflicts_with cask: "paragon-ntfs"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/ntfsmac_montereypreview\.dmg}i)
  end

  auto_updates true

  installer manual: "FSInstaller.app"

  uninstall kext:      "com.paragon-software.filesystems.ntfs",
            launchctl: "com.paragon-software.ntfs*",
            pkgutil:   "com.paragon-software.pkg.ntfs",
            quit:      "com.paragon-software.ntfs*",
            signal:    [
              ["KILL", "com.paragon-software.ntfs.FSMenuApp"],
              ["KILL", "com.paragon-software.ntfs.notification-agent"],
            ]

  zap trash: "~/Library/Preferences/com.paragon-software.ntfs.fsapp.plist"
end
