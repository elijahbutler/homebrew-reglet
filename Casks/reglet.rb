cask "reglet" do
  version "0.5.15"

  on_arm do
    sha256 "e822eb5b09964710bf7649eeab3bc79cd91ebe6c1f8fd9aae75fb6c0a4299ec0"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "e4a3de850dda38682a46b61fee6c4784d6cba214d08516aa4b786904028914c0"

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
