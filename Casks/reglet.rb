cask "reglet" do
  version "0.1.4"

  on_arm do
    sha256 "53658fc6a5fd5dc9c4fa6423eb55e64924b9d42349cbfb5a027c93e03ec9bdce"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "63ae3eb5338fc9d2c41570dea024e253a94f416f0b07f0e185c61fadc8be3ead"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-x86_64.app.zip"
  end

  name "Reglet"
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"

  depends_on macos: :sonoma

  app "Reglet.app"
  binary "#{appdir}/Reglet.app/Contents/Resources/reglet"

  postflight do
    system "xattr -dr com.apple.quarantine #{appdir}/Reglet.app"
  end
end
