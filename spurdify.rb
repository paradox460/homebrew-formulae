class Spurdify < Formula
  desc "Program for mangling text into something said by Spurdo Sparde"
  homepage "https://github.com/paradox460/spurdify"
  version "0.0.5"
  url "https://github.com/paradox460/spurdify/releases/download/v#{version}/spurdify-osx"
  sha256 "4d3ee50700ea8fb3890581730d8d9c9e9fb9fcc58e00ebb8d18758fdfffb5b4f"

  # depends_on "cmake" => :build

  def install
    mv "spurdify-osx", "spurdify"
    bin.install "spurdify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spurdify -v")
  end
end
