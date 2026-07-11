cask "reglet" do
  version "0.1.3"

  on_arm do
    sha256 "57ab1a3b63fd1c74e8bd2a969b6a80419d6303784200774bc78ad3650469a343"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "1b58c9c38ff85cc32f7ca6f83c296e34e231b951f1630cd3721bcddf9d3bc4da"
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
