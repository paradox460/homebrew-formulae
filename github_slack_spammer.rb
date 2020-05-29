class GithubSlackSpammer < Formula
  desc "A utility for taking open PRs that need approvals, and spamming them into a slack channel."
  homepage "https://github.com/paradox460/github_slack_spammer"
  version "0.1.6"
  url "https://github.com/paradox460/github_slack_spammer/releases/download/v#{version}/github_slack_spammer"
  sha256 "9c49f9fe38ddd6a7a708d6e1ccbc850ceb94bff09afbeb62dd47f667c5b3f7f6"

  def install
    bin.install "github_slack_spammer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github_slack_spammer --version")
  end
end
