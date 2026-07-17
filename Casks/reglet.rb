cask "reglet" do
  version "0.1.20"

  on_arm do
    sha256 "9ff7af7175f02c50cadeebc0c38a94c310a69d8595babe878c2fa0998c707aaf"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "626994462a96b246cc5de24b5bff150dee75f35e0632a93e7d80b39917e5cbba"

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
