cask "mixed-in-key-studio-edition" do
  version "1.2.0.183"
  sha256 "1bb1d6aa10158faf2e951f5f85de4a9f46412bdcb8c6eda00f603bf665cf611e"

  url "https://builds.mixedinkey.com/download/45/release/latest?key=dh-745a7ef1648d471e82893bc23806cadc"
  appcast "https://community.mixedinkey.com/Topics/24995/#{token}-changelogs",
          must_contain: "MIK SE #{version.major}.1 (Mac)"
  name token.titleize
  name "Mixed In Key SE"
  desc "Key detection for your DAW"
  homepage "https://mixedinkey.com/studio-edition"

  auto_updates true

  pkg "#{name.last}.pkg"

  bundle_id = "com.mixedinkey.MIK.SE"
  uninstall pkgutil: "#{bundle_id}.pkg"

  zap trash: "~/Library/Preferences/#{bundle_id}*.plist"
end
