class Spurdify < Formula
  desc "Program for mangling text into something said by Spurdo Sparde"
  homepage "https://github.com/paradox460/spurdify"
  version "0.0.6"

  PLATFORM_VARIANT = if OS.mac?
    "osx"
  else
    "linux"
  end

  on_linux do
    sha256 "6b121bf27743c0a6b43b29ab8177710a57e7c5eaf4405bec40ab40489ab22871"
  end

  on_macos do
    sha256 "55fbfd8d46936f68eeb21c1c5e99a30d48d9366faa5217f7931568beb690ed92"
  end

  url "https://github.com/paradox460/spurdify/releases/download/v#{version}/spurdify-#{PLATFORM_VARIANT}"

  # depends_on "cmake" => :build

  def install
    mv "spurdify-#{PLATFORM_VARIANT}", "spurdify"
    bin.install "spurdify"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/spurdify -v")
  end
end
