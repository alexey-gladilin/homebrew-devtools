class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.14"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.14/dbspec-0.3.14-macos-arm64-onedir.tar.gz"
  sha256 "1e8934d512f6a057a4f0d9b9c91749e413c9162c7137e8288a527393bb5c7dfa"

  def install
    candidate = Dir["**/dbspec"].find { |p| File.file?(p) }
    unless candidate
      files = Dir["**/*"].take(20).join(", ")
      odie "Could not find executable dbspec inside onedir artifact. Staged files: #{files}"
    end
    bin.install candidate => "dbspec"
    chmod 0555, bin/"dbspec"
  end

  test do
    assert_match "DBSpec", shell_output("#{bin}/dbspec --help")
  end
end
