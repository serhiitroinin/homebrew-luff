class Garmin < Formula
  desc "Garmin Connect health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.0/garmin-darwin-arm64.tar.gz"
      sha256 "55e815871c3984ced93aede7b79cf43c88bcf29e5b75ea739467ef89e84f8550"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.0/garmin-darwin-x64.tar.gz"
      sha256 "b90c94b7f65194c816580fa9bfc12b49d5fb9c70b796d49406a1b4a2217d7575"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.0/garmin-linux-arm64.tar.gz"
      sha256 "41543fc71e353bd3951de3983ff0ee32a76e8fec6899c6fd12e025f84615f569"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.2.0/garmin-linux-x64.tar.gz"
      sha256 "614e0b9c16c2760c47603086a561ac8d9a747810565cafa6fe346e5f097234e8"
    end
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
