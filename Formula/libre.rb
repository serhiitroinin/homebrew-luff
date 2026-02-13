class Libre < Formula
  desc "FreeStyle Libre 3 CGM data CLI via LibreLinkUp"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.1/libre-darwin-arm64.tar.gz"
      sha256 "397f840693dd89f3b4e54d249075bb1e1c95dbabda06c205fa7a994d5aceb3f9"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.1/libre-darwin-x64.tar.gz"
      sha256 "ad542b3886ed94ea888f8ffcd3f586077a34c940475851a59b84e43c22fab0de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.1/libre-linux-arm64.tar.gz"
      sha256 "983915438229900148295f242b443f095f2bcf3142128fc98692035b08f25232"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.1/libre-linux-x64.tar.gz"
      sha256 "46806a109c613f9eb1aa1ba21b8c172a9c9e5a880f43b7f397fa7f1a0067fcd8"
    end
  end

  def install
    bin.install "libre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/libre --version")
  end
end
