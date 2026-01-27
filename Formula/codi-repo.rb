class CodiRepo < Formula
  desc "Multi-repository orchestration CLI for unified PR workflows"
  homepage "https://github.com/laynepenney/codi-repo"
  url "https://registry.npmjs.org/codi-repo/-/codi-repo-0.1.2.tgz"
  sha256 "b41eb6dd89c3cdd8ac17946b0640cf73a16825f767d97378d3d5b7d0a19e0800"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Multi-repository orchestration", shell_output("#{bin}/codi-repo --help")
  end
end
