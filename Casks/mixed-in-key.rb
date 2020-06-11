cask 'mixed-in-key' do
  version '8.5.3.4078'
  sha256 '5391b67d484ab3b7e377ac137a19c0da7eb8bd2298326810768fdb62f81ba82a'

  envar = "HOMEBREW_#{token.upcase.tr '-', '_'}_VIP_CODE"
  url "https://builds.mixedinkey.com/download/39/release/latest?key=#{ENV[envar]}"
  appcast 'https://community.mixedinkey.com/Topics/24385/mixed-in-key-changelogs',
          must_contain: "#{version.major_minor_patch} (Mac)"
  name 'Mixed In Key'
  homepage 'http://mixedinkey.com/'

  auto_updates true

  app "Mixed In Key #{version.major}.app"

  bundle_id = 'com.mixedinkey.application'
  uninstall quit: bundle_id

  zap trash: [
               "~/Library/*/#{bundle_id}",
               '~/Library/Application Support/Mixedinkey',
               "~/Library/Preferences/#{bundle_id}.plist",
               "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/#{bundle_id}.sfl*",
             ]

  caveats "Cask requires a #{envar} environment variable to be set with your VIP code."
end
