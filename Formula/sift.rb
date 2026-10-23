class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.9.3"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.9.3/sift-macos-arm64.tar.gz"
    sha256 "202117bf11942e8ec469de8e80873b9a55472bb376eb931eb58efa37d72ebd2d"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.3/sift-linux-arm64.tar.gz"
      sha256 "c7cbb98c5c183078c7e20c68818157e119254ac0c0152634887e1515cabcd12c"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.3/sift-linux-x86_64.tar.gz"
      sha256 "7eca53340fdb944909b9179b408e868eb4bf4eb811570e5803471dd8e1c34712"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
