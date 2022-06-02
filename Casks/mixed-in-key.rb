cask "mixed-in-key" do
  version "8.5.3.4078"
  sha256 "5391b67d484ab3b7e377ac137a19c0da7eb8bd2298326810768fdb62f81ba82a"

  vip_code = `security find-generic-password -ws #{token}`

  url "https://builds.mixedinkey.com/download/39/release/latest?key=#{vip_code.chomp}"
  appcast "https://community.mixedinkey.com/Topics/24385/#{token}-changelogs",
          must_contain: "#{version.major_minor_patch} (Mac)"
  name "Mixed In Key"
  desc "Harmonic mixing for DJs and music producers"
  homepage "https://mixedinkey.com/"

  auto_updates true

  app "Mixed In Key #{version.major}.app"

  bundle_id = "com.mixedinkey.application"
  uninstall quit: bundle_id

  support = "~/Library/Application Support"
  zap trash: [
    "~/Library/*/#{bundle_id}*",
    "#{support}/Mixedinkey",
    "#{support}/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/#{bundle_id}.sfl*",
  ]

  caveats <<~EOS
    Cask requires a Keychain entry with your VIP code.

    To add the Keychain entry:
      security add-generic-password -T /usr/bin/security -a #{ENV["USER"]} -s #{token} -Uw <vip code>
  EOS
end
