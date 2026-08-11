class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://synapt.dev/grip"

  # This tap is RETIRED. It now installs the same build as the canonical tap so
  # that anyone still tapped here upgrades rather than strands on an old version.
  #
  #   brew untap laynepenney/tap
  #   brew install synapt-dev/tap/gitgrip
  #
  # It previously installed v0.17.1 from a repository that has since moved to
  # synapt-dev/grip. GitHub redirected the old URL, so the stale formula kept
  # resolving and quietly installed a five-month-old build.
  url "https://github.com/synapt-dev/grip/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "33ad07627f3b2e9e50fae58782a91078796451e5446e3d0f83f9e4182717c260"

  license "MIT"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Multi-repo workflow tool", shell_output("#{bin}/gr --help")
  end
end
