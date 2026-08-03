class Reglet < Formula
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"
  version "0.2.2"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-arm64"
    sha256 "92409aa3431d1c9dde14e214b2129936373346f1cc0b9bd1bce5c9f96851316a"
  else
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-x64"
    sha256 "91a264940259c5f220237930e4fa52f092a38a9a97d9ffff35422c068bed7f6e"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "reglet-darwin-arm64" => "reglet"
    else
      bin.install "reglet-darwin-x64" => "reglet"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reglet --version")
  end
end
