class ChongCredentials < Formula
  desc "Personal credentials: CA/ssh certificates, gpg keys"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-credentials.tar"
  sha256 "e9ec93ba75ded88e5ee8b0c9a07a97bf7d9ffc0c357c9a85f844857e70861454"
  license ""
  version "0.1"

  depends_on "python3"


  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-credentials"
    on_arm do

    end
    on_intel do

    end
    system 'cp', 'share/root_ca.crt', "#{prefix}/share/chong-credentials/root_ca.crt"
    system 'cp', 'share/ssh_host_ca_key.pub', "#{prefix}/share/chong-credentials/ssh_host_ca_key.pub"
    system 'cp', 'share/chong.gpg', "#{prefix}/share/chong-credentials/chong.gpg"
    system 'cp', 'share/chong.public.asc', "#{prefix}/share/chong-credentials/chong.public.asc"

  end

  
end
