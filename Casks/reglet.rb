cask "reglet" do
  version "0.2.0"

  on_arm do
    sha256 "80a56c385fa935af72cd645bd4c4e1f2dd38428552e3520bbbac057349924c94"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "03671f39465716ab55a0caf3a56bc1d8f999ca2343f3f18b9fd376efd4b548b8"

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
