class Kpup < Formula
  desc "Kill Process Using Port"
  homepage "https://github.com/pittst3r/kpup"
  url "https://github.com/pittst3r/kpup/archive/v0.1.4.tar.gz"
  sha256 "ef059cb371fd6937fcd730d6c9f9e3a7ca38fc97066e089027dec806f49aaafe"
  license "MIT"

  bottle do
    root_url "https://dl.bintray.com/pittst3r/bottles-formulae"
    cellar :any_skip_relocation
    sha256 "94a1680c2884b3d5a0c25db669c717fa05a3f01e80bcbbb3037054fe59d21c3c" => :catalina
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/kpup --version")
  end
end
