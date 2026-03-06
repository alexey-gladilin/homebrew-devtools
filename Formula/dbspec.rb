class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.1"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.1/dbspec-0.4.1-macos-arm64"
  sha256 "39bdc4501c1abe74ff06c56a3c4f2cf2ea9b24ea2805fa67b318e168410fbc33"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
