class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.8"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.8/dbspec-0.3.8-macos-arm64"
  sha256 "352bbcd151a75a06661f264505ca78f0f89295794dbe17898af52f616b12dc37"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
