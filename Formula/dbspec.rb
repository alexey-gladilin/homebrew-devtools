class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.7.3"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.7.3/dbspec-0.7.3-macos-arm64"
  sha256 "e77a138be5703f4155d77e314f6050ff1c69c8d7c7c59a3d5bf2ffed77062ef8"

  def install
    bin.install Dir["dbspec-*"].first => "dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
