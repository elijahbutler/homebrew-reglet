class Reglet < Formula
  desc "Local-first control plane for AI agent rules, skills, and MCP configs"
  homepage "https://github.com/elijahbutler/reglet"
  version "0.1.12"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-arm64"
    sha256 "0302c0d9af89ed138d75f3922825fc812bd85d6b82f06009dfd849b8fc0f6e1d"
  else
    url "https://github.com/elijahbutler/reglet/releases/download/v#{version}/reglet-darwin-x64"
    sha256 "c265c5cd59b4288df756e8b74dd16432812c6b8acbc26633e02fc84413ce624c"
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
