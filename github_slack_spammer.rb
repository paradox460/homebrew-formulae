class GithubSlackSpammer < Formula
  desc "A utility for taking open PRs that need approvals, and spamming them into a slack channel."
  homepage "https://github.com/paradox460/github_slack_spammer"
  version "0.1.5"
  url "https://github.com/paradox460/github_slack_spammer/releases/download/v#{version}/github_slack_spammer"
  sha256 "0da2a2b174ba87737328026f8c4113614aa02a2e3c297a2ea307195c9505f6a4"

  def install
    bin.install "github_slack_spammer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github_slack_spammer --version")
  end
end
