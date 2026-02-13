class Garmin < Formula
  desc "Garmin Connect health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.1.0/garmin-darwin-arm64.tar.gz"
      sha256 "d93e325344b596e5897346e0162be9257a4819e76776bf221e6e265293baa6ff"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.1.0/garmin-darwin-x64.tar.gz"
      sha256 "7f72e73e9f4b730ff10a7bcd75f1e4d6c7ab3b0a541371aaf4aca38197a456cd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.1.0/garmin-linux-arm64.tar.gz"
      sha256 "ae60ec4ec3162b0ca1355d09be327ad18edca7cc9f2a525f68282c13cad78ad6"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/garmin-v0.1.0/garmin-linux-x64.tar.gz"
      sha256 "9c768c1a525d6f94cb28968906f662589334a927e036a9ed8ba2f1cf4a775944"
    end
  end

  def install
    bin.install "garmin"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/garmin --version")
  end
end
