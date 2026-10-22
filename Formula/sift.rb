class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.9.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.9.0/sift-macos-arm64.tar.gz"
    sha256 "e3be746feead93710ac587af7f8ad717dc0942d178797ab42f32a5c55cd90a11"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.0/sift-linux-arm64.tar.gz"
      sha256 "e2ce321ea8f113c5869d9c58eb3e7486c31d0b7f2f74de9df1c8514f201d2761"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.9.0/sift-linux-x86_64.tar.gz"
      sha256 "aa1a46c35a9255710d534a4534023058e3d1e595ccf32f7e91fc3cb2bbd4d194"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
