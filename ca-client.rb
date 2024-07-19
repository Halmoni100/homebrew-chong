class CaClient < Formula
  desc "SSH Certificate Helper Functions for chong IT"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/ca-client.tar"
  sha256 "94f1a37ad870b42073ed44d797749aeeb0b9340096af222fc98fd39da8329b01"
  license ""
  version "1.0"

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