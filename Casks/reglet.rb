cask "reglet" do
  version "0.4.0"

  on_arm do
    sha256 "3c2128eb36b431d96d659da58f358df93567d2ab2ce7f32c9b21a53b68073029"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "b5156d628c05cac369d7a2503fc3d4dde5e30020dedefd914abc567f0ee509d5"

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
