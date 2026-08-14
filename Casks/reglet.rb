cask "reglet" do
  version "0.3.3"

  on_arm do
    sha256 "2bcee689437fbdc30f93ae6c265d6f9ea8dd56b4d5837bcd0ee26cab0e32c9d6"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "f89f37b958f7d8551ba15ab070f677e799fadd15ded9f88dd420e917f85399d3"

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
