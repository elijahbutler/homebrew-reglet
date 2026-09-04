cask "reglet" do
  version "0.5.17"

  on_arm do
    sha256 "e106e28723fc52c361bbafba1d61d375e6bd00bcf9e0c7605707c9bf8bac6840"

    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-desktop-macos-arm64.dmg"
  end
  on_intel do
    sha256 "eb10da5e116cfaeafb7c258b8cf33d479e11cd7e7ec7b79faeaa0d2b86611a75"

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
