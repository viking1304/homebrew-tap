cask "smart-dns-proxy-vpn" do
  version "1.0.9"
  sha256 :no_check

  url "https://network.glbls.net/app/sdp/SmartDNSProxyVPN.dmg", verified: "https://network.glbls.net/"
  name "Smart DNS Proxy VPN"
  desc "Visit any blocked website restricted in your place"
  homepage "https://www.smartdnsproxy.com/"

  app "Smart DNS Proxy VPN.app"
end
