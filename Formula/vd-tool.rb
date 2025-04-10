class VdTool < Formula
  desc "vector drawable tool from the Android Studio source code"
  homepage "https://github.com/rharter/vd-tool"
  url "https://github.com/rharter/vd-tool/releases/latest/download/vd-tool.zip"
  version "0.0.1"
  sha256 "9bc7b2046b51e22c62663a93c9e91c3b29b053a36a5484a0d73d8c54def3e595"

  license "Apache-2.0"

  depends_on "openjdk"

  def install
    bin.install "bin/vd-tool"
    lib.install Dir["lib/*"]
  end

  test do
    system "#{bin}/vd-tool", "--help"
  end
end
