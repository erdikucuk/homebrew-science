
class Kollector < Formula
  desc "Targeted de novo Gene Assembly"
  homepage "https://github.com/bcgsc/kollector"
  url "https://github.com/bcgsc/kollector/archive/V1.0.tar.gz"
  version "1.0.0"
  sha256 "76dc3e03398ade0ae39b241943ce7dabcf65c09e3b30180726bfea574c462d15"
  # tag "bioinformatics"
  depends_on "abyss" 
  depends_on "biobloomtools" 
  depends_on "gmap-gsnap" 
  depends_on "samtools" 
  depends_on "bwa" 
  def install
    bin.install "bin/kollector.sh" "bin/kollector-recruit.mk" "bin/kollector-extract.sh" "bin/kollector_multiple.sh"
    doc.install "README.md" "LICENSE.txt"
    prefix.install "test" "data"
  end

  test do
    system "#{bin}/kollector.sh", "-h"
  end
end
