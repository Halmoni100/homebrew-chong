# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CaClient < Formula
  desc ""
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew-ca-client-0.2.tar"
  sha256 "948bebc9fc9a06708bbc8472b89efe674e75c91ef2dba64d7feac5935076b60d"
  license ""

  def install
    bin.install 'step'
    bin.install 'configure-ssh-client'
    bin.install 'ssh-client-verify'
  end

  test do
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "$#{bin}/step", "--help"
  end
end
