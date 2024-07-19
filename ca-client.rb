class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "88e14f6f932ba382ab5b4a6a209eb71b89999de5143eb56420d49ec132a4bd54"
  license ""
  version "0.13"

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
    bin.install 'bin/request-provisioner'
    bin.install 'bin/create-kms-key'
    bin.install 'bin/create-certificate'
    system 'cp', 'share/create-jwks.sh', "#{prefix}/share/ca-client/create-jwks.sh"
    system 'cp', 'share/create-signature.sh', "#{prefix}/share/ca-client/create-signature.sh"

  end

end