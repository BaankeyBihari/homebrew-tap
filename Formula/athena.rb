# .github/workflows/update-athena.yml rewrites both release URLs and `sha256` lines on each athena release.
class Athena < Formula
  desc "Install, pin, and sync AI agent skills and plugins from git repositories"
  homepage "https://github.com/BaankeyBihari/athena"
  license "MIT"

  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.2.0/athena-aarch64-apple-darwin.tar.gz"
      sha256 "8669049fd8c8f67e25b65c6c7b4162ac0bbc24030806ec21e361af9eedc374ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.2.0/athena-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e88bcb6ee24c759a3bfbc746029e6c9a5e9662a905a36b91c15f5092da4d3ea0"
    end
  end

  def install
    bin.install "athena"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/athena --version")
  end
end
