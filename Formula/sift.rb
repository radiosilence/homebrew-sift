class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.6.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.6.0/sift-macos-arm64.tar.gz"
      sha256 "414fead737637daf06ce35d188f4267f311cc08ba3f335f7e37f1899c62d1561"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.6.0/sift-macos-x86_64.tar.gz"
      sha256 "f45a6539b40abf5a15afb526dfec5ac3a02ecf76c4de652a81f7c14c4241f532"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.6.0/sift-linux-arm64.tar.gz"
      sha256 "3ef1b2a99a78a07103e87bbed64d3b4503672b8eb926497d77d027ff5ddb0af9"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.6.0/sift-linux-x86_64.tar.gz"
      sha256 "5eebec128827ffc27de8adcb6c49f3877e48a74b7845ba22ff91a2b98870b35c"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
