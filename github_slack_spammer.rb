class GithubSlackSpammer < Formula
  desc "A utility for taking open PRs that need approvals, and spamming them into a slack channel."
  homepage "https://github.com/paradox460/github_slack_spammer"
  version "0.1.2"
  url "https://github.com/paradox460/github_slack_spammer/releases/download/v#{version}/github_slack_spammer"
  sha256 "ea591b8d14ea637d27232cc7e32a81c81ad81a4f93759f2f0ee7001f2ae3bec3"

  def install
    bin.install "github_slack_spammer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github_slack_spammer --version")
  end
end
