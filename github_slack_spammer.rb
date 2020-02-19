class GithubSlackSpammer < Formula
  desc "A utility for taking open PRs that need approvals, and spamming them into a slack channel."
  homepage "https://github.com/paradox460/github_slack_spammer"
  version "0.1.4"
  url "https://github.com/paradox460/github_slack_spammer/releases/download/v#{version}/github_slack_spammer"
  sha256 "a2eaa415306eafd154b194f51a5b20570ca763d3ab0cd8ac6ba73eb5f5f480b2"

  def install
    bin.install "github_slack_spammer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github_slack_spammer --version")
  end
end
