class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.21"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.21/dbspec-0.3.21-macos-arm64"
  sha256 "41acffa3a945ef35c3a454d8ce5f34ab4d6a5a30890489c7b3776e1f20df1c4b"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
