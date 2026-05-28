class Subgrove < Formula
  desc "Parallel feature worktrees for a git superproject with submodules"
  homepage "https://github.com/stevencnb/subgrove"
  url "https://github.com/stevencnb/subgrove/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "10faf3480c8dddbb628efac9459843012fdc1024f93ab40029637308c4f693c1"
  license "MIT"

  def install
    bin.install "subgrove"
  end

  test do
    assert_match "subgrove #{version}", shell_output("#{bin}/subgrove --version")
  end
end
