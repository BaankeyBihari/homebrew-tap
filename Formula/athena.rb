# .github/workflows/update-athena.yml rewrites both release URLs and `sha256` lines on each athena release.
class Athena < Formula
  desc "Install, pin, and sync AI agent skills and plugins from git repositories"
  homepage "https://github.com/BaankeyBihari/athena"
  license "MIT"

  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.3.1/athena-aarch64-apple-darwin.tar.gz"
      sha256 "9edc29dad1b494f96b541cfa7a1b38a2a7af53877a1963fd182cd3304c9db37d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.3.1/athena-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9755f0e3d6abae7ca7c7edd62d1ecb3e91a29c10f96d46149a9772d858f57ee"
    end
  end

  def install
    bin.install "athena"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/athena --version")
  end
end
