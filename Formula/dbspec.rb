class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.0"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.0/dbspec-0.7.0-macos-arm64"
  sha256 "5691a090e563f242b3924d478f6b88c3bcef8feb7dca6afcd0ef0994502c1152"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
