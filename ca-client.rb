class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "8307c4d9de578c93d0064d209b748a1ba0a57fbb0a5d9533e139cd04af6e3140"
  license ""
  version "1.1"

  depends_on "python3"
  depends_on "rsync"
  depends_on "pwgen"
  depends_on "chong-credentials"
  depends_on "step-cli"


  def install
    system 'mkdir', '-p', "#{prefix}/share/ca-client"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/bootstrap-ca'
    bin.install 'bin/configure-ssh-client'
    bin.install 'bin/ssh-client-verify'
    bin.install 'bin/request-provisioner'
    bin.install 'bin/create-kms-key'
    bin.install 'bin/create-certificate'
    system 'cp', 'share/create-jwks.sh', "#{prefix}/share/ca-client/create-jwks.sh"
    system 'cp', 'share/create-signature.sh', "#{prefix}/share/ca-client/create-signature.sh"

  end

end