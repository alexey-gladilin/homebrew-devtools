class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.6"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.6/dbspec-0.4.6-macos-arm64"
  sha256 "676de8df833444f21b2f646d2963014c73108896e13be66e9f73b6229b157596"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
