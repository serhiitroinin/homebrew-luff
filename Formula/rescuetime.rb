class Rescuetime < Formula
  desc "RescueTime productivity data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/rescuetime-v0.1.0/rescuetime-darwin-arm64.tar.gz"
      sha256 "b9f2128f0949e23df563d0a0e09656f894c89e463249d215a017c9aa11b43970"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/rescuetime-v0.1.0/rescuetime-darwin-x64.tar.gz"
      sha256 "1f26258c86783685cc9918e42a1734753ff4ace798321d4e8213341b4e950bf5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/rescuetime-v0.1.0/rescuetime-linux-arm64.tar.gz"
      sha256 "958f9551e49f555302c9a76d8095a8c47e32645d21487b50f986d1ba7f74e287"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/rescuetime-v0.1.0/rescuetime-linux-x64.tar.gz"
      sha256 "f98d514ec2e1fe2c700f9e5d8f17f33d23f8d5c416c2ca9ee44387e83d31b2ba"
    end
  end

  def install
    bin.install "rescuetime"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rescuetime --version")
  end
end
