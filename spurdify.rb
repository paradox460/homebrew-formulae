class Spurdify < Formula
  desc "Program for mangling text into something said by Spurdo Sparde"
  homepage "https://github.com/paradox460/spurdify"
  version "0.0.6"
  url "https://github.com/paradox460/spurdify/releases/download/v#{version}/spurdify-osx"
  sha256 "55fbfd8d46936f68eeb21c1c5e99a30d48d9366faa5217f7931568beb690ed92"

  # depends_on "cmake" => :build

  def install
    mv "spurdify-osx", "spurdify"
    bin.install "spurdify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spurdify -v")
  end
end
