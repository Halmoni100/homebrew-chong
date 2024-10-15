class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "d30a3f9c64b5a3019e271265fae09cde2fc4638fba50bff441a2d68be29e378c"
  license ""
  version "0.4"



  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-helper"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/ipsed'
    bin.install 'bin/cython-wheelname'

  end

end