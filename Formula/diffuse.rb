class Diffuse < Formula
  desc "Tool for diffing APKs, AABs, AARs, and JARs"
  homepage "https://github.com/JakeWharton/diffuse"
  url "https://github.com/JakeWharton/diffuse/archive/96f9e42952f0bb343d627a08d55c037cd9bb9d77.tar.gz"
  sha256 "a35c93eda56c9c94df7a66b578a7aa7e34126a623c6d3172b94611318006f0ad"

  depends_on java: "1.8"

  def install
    system "./gradlew", "assemble"
    bin.install "diffuse/build/diffuse"
  end

  test do
    shell_output("#{bin}/diffuse")
  end
end
