cask "reglet" do
  version "0.1.19"

  on_arm do
    sha256 "fb4effd5a2ccf15383fff7fbc31da77f650b2778daadcdd7e06140652aae333c"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "5683bd21432c329bc4a03b7cbde2d52836df2214fd0c7a0257748910c5357c97"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-x86_64.dmg"
  end

  name "Reglet"
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"

  depends_on macos: :sonoma

  app "Reglet.app"

  postflight do
    system "xattr", "-dr", "com.apple.quarantine", "#{appdir}/Reglet.app"
  end
end
