class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://registry.npmjs.org/gitgrip/-/gitgrip-0.4.2.tgz"
  sha256 "477daf79870f83e700455a00e7eb740323ac0d1da6a2b58bd8540b3fdded48a6"
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
