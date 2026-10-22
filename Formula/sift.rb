class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.9.2"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.9.2/sift-macos-arm64.tar.gz"
    sha256 "d4b509c0ffbd014751f73032543832e738ed41954aaea07049a64d24b2b3fb08"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.2/sift-linux-arm64.tar.gz"
      sha256 "31896596c4fe62f766007171e414ea0d8c638119d68461d6c416ffa2a1306a15"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.2/sift-linux-x86_64.tar.gz"
      sha256 "2ac7f8f8326aec498694786eaeacef0500de33e7fad4d54e42691181afd1dc9c"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
