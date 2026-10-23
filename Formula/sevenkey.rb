class Sevenkey < Formula
  desc "Give AI agents and CI your secrets without letting them see them"
  homepage "https://7key.online"
  url "https://registry.npmjs.org/@7key/cli/-/cli-1.6.0.tgz"
  sha256 "421b25ecb077c3eabcc193f951320c2fcd232d14de5c542cb33db80877e2436f"
  license "AGPL-3.0-only"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Usage: 7key", shell_output("#{bin}/7key help")
  end
end
