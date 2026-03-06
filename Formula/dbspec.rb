class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.2"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.2/dbspec-0.4.2-macos-arm64"
  sha256 "3a6299496bcad0d82461f11d57aa57c07a65f4f24387285fec6a57e4e387a91b"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
