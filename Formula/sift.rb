class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.7.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.7.0/sift-macos-arm64.tar.gz"
      sha256 "5f570d1a1236ed77c388037e595b953f58a3008617cc1d58dd9a129591994d3f"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.7.0/sift-macos-x86_64.tar.gz"
      sha256 "bfa3f790fc1651433a512527884f0efc350b100d28a803c82c7394179cac72ee"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.7.0/sift-linux-arm64.tar.gz"
      sha256 "618c76dcb2ad7e8edad43a84885fb6d812a5d048bb4e62f2c0d709ef6f8421c9"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.7.0/sift-linux-x86_64.tar.gz"
      sha256 "0c96c102c9b48e5813b1af4d33fc61b568c68cae527809e11b3f78b09c217560"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
