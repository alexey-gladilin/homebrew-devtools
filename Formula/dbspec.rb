class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.1"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.1/dbspec-0.7.1-macos-arm64"
  sha256 "73cc814e2fa6be7732395cdd0e20563dc63bf09a2db851844103740a32e468f2"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
