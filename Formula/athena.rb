# .github/workflows/update-athena.yml rewrites both release URLs and `sha256` lines on each athena release.
class Athena < Formula
  desc "Install, pin, and sync AI agent skills and plugins from git repositories"
  homepage "https://github.com/BaankeyBihari/athena"
  license "MIT"

  uses_from_macos "git"

  on_macos do
    on_arm do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.0.0/athena-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/BaankeyBihari/athena/releases/download/v0.0.0/athena-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "athena"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/athena --version")
  end
end
