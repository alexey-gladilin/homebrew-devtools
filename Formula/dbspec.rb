class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.6.0"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.6.0/dbspec-0.6.0-macos-arm64"
  sha256 "6f4b1cdc5090779db16d9e058271742c5a23a2fcc96afa735d147552b6016be0"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
