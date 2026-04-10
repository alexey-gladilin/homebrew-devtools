class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.5"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.5/dbspec-0.7.5-macos-arm64"
  sha256 "89fb057e16e291e3512164dbbbdaf51efb83225580a1d80c4f9e05cd102addb4"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
