class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://registry.npmjs.org/gitgrip/-/gitgrip-0.4.0.tgz"
  sha256 "665ab2102f21602f3c2ebe3bef87846c561f8e2eb9e533cf420c394ce0540f99"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Multi-repo workflow tool", shell_output("#{bin}/gr --help")
  end
end
