cask "reglet" do
  version "0.5.16"

  on_arm do
    sha256 "48038dcc9c065d014264509873e03e873fafb42ac99ff0c81315036a2cd69335"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "6fd5e682b58517d9b44a9aa166080a3123364d2710f3510a87f6062af911dbcb"

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
