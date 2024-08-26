class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "3fe020c507fbdf0baed80c4f652e7b88e7ba721da63140fa254a105f9c047239"
  license ""
  version "0.3"



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