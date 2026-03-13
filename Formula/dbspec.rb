class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.5.2"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.5.2/dbspec-0.5.2-macos-arm64"
  sha256 "8315cfce08bbedec71a5423229ac11dcf1debc1420290387c2a35357252db0b4"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
