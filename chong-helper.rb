class ChongHelper < Formula
  desc "Helper scripts"
  homepage ""
  url "https://storage.googleapis.com/12add620-b983-4c5b-aa95-0a89b5c645ca/brew/chong-helper.tar"
  sha256 "3223f684c0ae64b5d0d01390ebbdc21e3c2644ce304ffe81c719198518f3ec29"
  license ""
  version "0.3"



  def install
    system 'mkdir', '-p', "#{prefix}/share/chong-helper"
    on_arm do

    end
    on_intel do

    end
    bin.install 'bin/ipsed'

  end

end
