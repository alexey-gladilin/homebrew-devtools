class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.4.2"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.4.2/dbspec-0.4.2-macos-arm64"
  sha256 "ec9f2ca1525194b4018c6ba55a1ec9ed2a9fcd9fc615b58062c50d235ffa9eaf"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
