class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"

  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.12.3.tar.gz"
  sha256 "f31e9e37f06a7aafb76738d75eac4dcd5e7c8b59e0a0950beaa78d21e32ecf3c"

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
