class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.4"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.4/dbspec-0.7.4-macos-arm64"
  sha256 "3415a789513680b6d6b9830031d12591e3a59050847714f2d09f9f5f6052f727"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
