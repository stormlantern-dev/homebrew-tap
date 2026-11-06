# Generated from packaging/homebrew/aetherdesk.rb.in in stormlantern-dev/aetherdesk
# by packaging/homebrew/casks.sh. Edit the template there, not this file.
cask "aetherdesk" do
  version "0.1.0-alpha.5"

  on_linux do
    on_intel do
      sha256 "3ad77293774aa77bba0f83d3a01a969f2788c23bba83a15fc2b853913be45abc"
      url "https://github.com/stormlantern-dev/aetherdesk/releases/download/v#{version}/aetherdesk-#{version}-x86_64-linux.tar.gz"
    end
  end

  name "AetherDesk"
  desc "Use your Mac from Linux (Wayland): the client"
  homepage "https://github.com/stormlantern-dev/aetherdesk"

  livecheck do
    skip "Filled in by casks.sh on release."
  end

  binary "aetherdesk-#{version}-x86_64-linux/aetherdesk"

  caveats <<~EOS
    Alpha. Built on current Arch Linux and linked against its SDL3 and FFmpeg
    libraries, so for now it runs on an up-to-date Arch or CachyOS
    (pacman -S sdl3 ffmpeg). Hardware decoding uses CUDA or VA-API when there.

    Pair with your Mac once (on the Mac: sudo aether-agent pair):
      aetherdesk pair
    then connect:
      aetherdesk
  EOS
end
