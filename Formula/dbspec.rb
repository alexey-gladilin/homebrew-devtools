class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.9"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.9/dbspec-0.7.9-macos-arm64"
  sha256 "2c259c204741e5a1ed4b3532973ecc715be0f9a2c7a37aed9b0e4eea7a36940a"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
