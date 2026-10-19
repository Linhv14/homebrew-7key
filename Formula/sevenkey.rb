class Sevenkey < Formula
  desc "Give AI agents and CI your secrets without letting them see them"
  homepage "https://7key.online"
  url "https://registry.npmjs.org/@7key/cli/-/cli-1.4.2.tgz"
  sha256 "a0964aac72ede33479e600836f025b5224103331ea9825aa4f9c86e3fcc2596d"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Usage: 7key", shell_output("#{bin}/7key help")
  end
end
