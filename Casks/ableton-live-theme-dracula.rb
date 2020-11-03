cask "ableton-live-theme-dracula" do
  version :latest
  sha256 :no_check

  # github.com/dracula/ableton-live/ was verified as official when first introduced to the cask
  url "https://github.com/dracula/ableton-live/archive/master.zip"
  name "Dracula"
  desc "Dark theme for Ableton Live"
  homepage "https://draculatheme.com/ableton-live"

  source = "ableton-live-master/#{name.first}.ask"
  latest = "#{appdir}/Ableton Live*.app"
  app = Dir[latest].max
  target = "Contents/App-Resources/Themes/#{name.first}.ask"

  if app && File.directory?(app)
    artifact source, target: "#{app}/#{target}"
  else
    installer manual: source
    uninstall delete: Dir["#{latest}/#{target}"]
  end
end
