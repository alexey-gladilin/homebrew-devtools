class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.5.0"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.5.0/dbspec-0.5.0-macos-arm64"
  sha256 "5aee09376994db1cfc686a1f5a245e01c0085ff33514d8ddd58c185006b25e32"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
