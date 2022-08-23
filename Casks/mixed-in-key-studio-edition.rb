cask "mixed-in-key-studio-edition" do
  version "1.2.1.221"
  sha256 :no_check

  key = "dh-745a7ef1648d471e82893bc23806cadc"
  url "https://builds.mixedinkey.com/download/45/release/latest?key=#{key}"
  name token.titleize
  name "Mixed In Key SE"
  desc "Key detection for your DAW"
  homepage "https://mixedinkey.com/studio-edition"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  pkg "#{name.last}.pkg"

  bundle_id = "com.mixedinkey.MIK.SE"
  uninstall pkgutil: "#{bundle_id}.pkg"

  zap trash: "~/Library/Preferences/#{bundle_id}*.plist"
end
