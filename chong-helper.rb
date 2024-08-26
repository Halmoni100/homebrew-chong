class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "364fe18f8004cfb1b470aeb937b9b79780b8471afd34f424f8c960f3227fe733"
  license ""
  version "0.1"



  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-helper"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/ipsed'

  end

end