cask "ableton-live-theme-dracula" do
  version :latest
  sha256 :no_check

  # github.com/dracula/ableton-live/ was verified as official when first introduced to the cask
  url "https://github.com/dracula/ableton-live/archive/master.zip"
  name "Dracula"
  desc "Dark theme for Ableton Live"
  homepage "https://draculatheme.com/ableton-live"

  theme = "ableton-live-master/#{name.first}.ask"
  app, = Dir["#{appdir}/Ableton Live*.app"]

  if app && File.directory?(app)
    artifact theme, target: "#{app}/Contents/App-Resources/Themes/#{name.first}.ask"
  else
    installer manual: theme
    uninstall {}
  end
end
