class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.7"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.7/apidev-0.1.7-macos-arm64.tar.gz"
  sha256 "140c64c7098d8221124a28f349d1a6eaf72b276d9a9b228149f98953f795623c"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
