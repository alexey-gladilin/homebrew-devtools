class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.15"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.15/apidev-0.1.15-macos-arm64.tar.gz"
  sha256 "e6bbdf2cc687ccceb2ab4da8549a87ea330d1a5c82e9a35f478ac13c803b0f58"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
