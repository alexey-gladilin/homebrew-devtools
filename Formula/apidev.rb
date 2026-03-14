class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.5"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.5/apidev-0.3.5-macos-arm64.tar.gz"
  sha256 "ec44611f30391fc3ca60901f0a3cb1937d53edca21302bb00fa82d346c79366c"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
