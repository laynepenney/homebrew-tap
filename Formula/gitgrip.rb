class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"

  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "92f11ea8c4836631f6526a901dd6ef33f9e983b38ffb807fafec378490ced614"

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
