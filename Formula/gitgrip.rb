class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"

  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "d37e99e61b13ac1e8fae2e9f1557f2335575e779d4da53974e4e61a4b1d27fc0"

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
