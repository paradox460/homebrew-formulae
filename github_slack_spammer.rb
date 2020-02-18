class GithubSlackSpammer < Formula
  desc "A utility for taking open PRs that need approvals, and spamming them into a slack channel."
  homepage "https://github.com/paradox460/github_slack_spammer"
  version "0.1.3"
  url "https://github.com/paradox460/github_slack_spammer/releases/download/v#{version}/github_slack_spammer"
  sha256 "8ea0de3cc6501242eca905f356838c53310d6fb577b61dbb188fef63a1ad3290"

  def install
    bin.install "github_slack_spammer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/github_slack_spammer --version")
  end
end
