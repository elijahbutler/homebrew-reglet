cask "reglet" do
  version "0.2.2"

  on_arm do
    sha256 "3775c0d7acf5fea83918edaf2041052ea96add9ad9cb3a5774152e59393950a4"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "1263e5ada40e11d6be8e2c8ad022a0beaeceff4b90eab32964eb6285e0ee3cf5"

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
