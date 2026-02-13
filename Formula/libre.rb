class Libre < Formula
  desc "FreeStyle Libre 3 CGM data CLI via LibreLinkUp"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.2/libre-darwin-arm64.tar.gz"
      sha256 "e4e3206e4e0318734a533b3f0831ea4ee203d3c3140a27a5447ca8b25fd5ee04"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.2/libre-darwin-x64.tar.gz"
      sha256 "616fbde1d04ce31fe2b58882e198bb350e861bfc0647ff9a94fae2765f3434aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.2/libre-linux-arm64.tar.gz"
      sha256 "251e4bda59a1e93b9de7e7f966029edc46139d4d4e20d8a3fd48c0133a40d073"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.2/libre-linux-x64.tar.gz"
      sha256 "00efff232580c7ae39fcf74fed547fac72d81c5b913f3ae061c66fdbceaa2d3b"
    end
  end

  def install
    bin.install "libre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/libre --version")
  end
end
