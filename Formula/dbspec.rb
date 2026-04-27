class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.10"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.10/dbspec-0.7.10-macos-arm64"
  sha256 "f5d7992d8a97e5fb7a4448c5e1a5816cc75ff416e172746219ad647381d34c50"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
