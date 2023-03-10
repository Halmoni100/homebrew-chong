class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "38802d4b8d26f109895c8d974ce2429c420b71330267589c373d813ce83497ce"
  license ""
  version "0.8"

  depends_on "python3"
  depends_on "rsync"

  def install
    on_arm do
      bin.install 'bin/step_arm64' => "step"
    end
    on_intel do
      bin.install 'bin/step_amd64' => "step"
    end
    bin.install 'bin/bootstrap-step'
    bin.install 'bin/configure-ssh-client'
    bin.install 'bin/ssh-client-verify'
    share.install 'share/ca-url' => 'ca-client/ca-url'
    share.install 'share/root_ca.crt' => 'ca-client/root_ca.crt'
    share.install 'share/ssh_host_ca_key.pub' => 'ca-client/ssh_host_ca_key.pub'
  end

  test do
    system "$#{bin}/step", "--help"
  end
end
