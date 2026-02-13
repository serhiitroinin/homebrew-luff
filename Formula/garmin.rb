class Garmin < Formula
  desc "Garmin Connect health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.1/garmin-darwin-arm64.tar.gz"
      sha256 "71bf9456a0a1590105ea5fbce20bcd6b8bbdd868d0278a2d44f8421dbb384654"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.1/garmin-darwin-x64.tar.gz"
      sha256 "d887e809c28cd11820097c92903edb59d5256f0bedaa7516c5bfb47c3d3c6dcf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.1/garmin-linux-arm64.tar.gz"
      sha256 "8e6fcca41e972dfc04ef14be5ce9b4cb93d622858fac970d7f9466bfdba07adf"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.1/garmin-linux-x64.tar.gz"
      sha256 "642f3f0f7eeaf06baa5fdb2036b5d97694b69409f82fef183a1ccd28071d26d4"
    end
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
