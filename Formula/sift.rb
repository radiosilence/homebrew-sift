class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.5.2"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.2/sift-macos-arm64.tar.gz"
      sha256 "c0133dd01724e29738d8107a5277a0ccbce9ce93fab3a10abbabeb99decd3d74"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.2/sift-macos-x86_64.tar.gz"
      sha256 "fe6814593459a0f76882f779ad74df6362bac7779ed4bcbe0add31019a1d3be9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.2/sift-linux-arm64.tar.gz"
      sha256 "b009868411797efbbbce2414acb6dda51a947474bf70ddb4031b87452111346d"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.2/sift-linux-x86_64.tar.gz"
      sha256 "0adb738d67ebc22153120763754fb22fe6fb2e8c81a4797be98c4dab5e30b14d"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
