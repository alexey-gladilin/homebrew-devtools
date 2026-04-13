class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.9"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.9/apidev-0.3.9-macos-arm64.tar.gz"
  sha256 "26386db9f459011712c6f8a6fbbaddb1117e438f936121474297647d0b347eba"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
