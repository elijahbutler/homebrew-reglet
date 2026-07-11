cask "reglet" do
  version "0.1.5"

  on_arm do
    sha256 "ebbdc99dc5d04c044eb10e067a67b07efad2d5fd0cc292cc5b5766e1932d21f8"
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-macos-arm64.app.zip"
  end

  on_intel do
    sha256 "f056d6bfccbbf761ddd37bde131dd32fe71bfb71064c830de33f8425d12524e4"
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
