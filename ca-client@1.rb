# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CaClient < Formula
  desc ""
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew-ca-client_0.2-0-arm64.tar"
  sha256 "c50a00f5f7101c923c3168c65760e22091ee487b554e3ae4222105b3cb46ba7f"
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
