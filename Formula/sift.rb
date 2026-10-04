class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.4.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.4.0/sift-macos-arm64.tar.gz"
      sha256 "ab92ea933c89d05de970a547e50765ace1f2f039988c5ae37496132afd4b39b6"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.4.0/sift-macos-x86_64.tar.gz"
      sha256 "7b908289894ba2c2cb2139f747e71119bae2f56f816c5757146f9a8cee050b76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.4.0/sift-linux-arm64.tar.gz"
      sha256 "d041404ef300e1d0f4671094f6e27f9f3764c7ab5ffed5fee3df64c3664032fe"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.4.0/sift-linux-x86_64.tar.gz"
      sha256 "2f2a393ab4e26c30a68bc277c9a0d3df72df96e3ba5e606a59564deb72a224de"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
