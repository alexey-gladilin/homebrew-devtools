class Dbspec < Formula
  desc "DBSpec CLI/TUI for database design"
  homepage "https://github.com/alexey-gladilin/dbspec"
  version "0.3.13"
  url "https://github.com/alexey-gladilin/dbspec/releases/download/v0.3.13/dbspec-0.3.13-macos-arm64-onedir.tar.gz"
  sha256 "51295e9fb812c39b0e2a7e5a7b9d946bb484b3ff73cc342a31812bfe8f4e4567"

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
