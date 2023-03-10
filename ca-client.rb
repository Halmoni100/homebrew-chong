# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CaClient < Formula
  desc ""
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew-ca-client-0.1.tar"
  sha256 "3ae1a63089fa688027e42ed7651f4956b711ad7e88654bdb91eaae04fb78fff4"
  license ""

  def install
    bin.install 'step'
  end

  test do
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "$#{bin}/step", "--help"
  end
end
