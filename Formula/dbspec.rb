class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.5"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.5/dbspec-0.4.5-macos-arm64"
  sha256 "2771d1affeee04ebdcf5c1ebc1a558a10be7270ec55d1f8d122aa20f216c77a5"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
