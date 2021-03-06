self: super:

{
  dramPackages = {
    nix-rebuild = super.writeScriptBin "nix-rebuild" ''
      #!${self.runtimeShell}
      exec nix-env -f '<nixpkgs>' -r -iA dramPackages
    '';

    whois = self.lib.hiPrio self.whois;

    inherit (self)
      ark
      bat
      bind
      binutils
      chromium
      cloc
      coq_8_11
      direnv
      ffmpeg-full
      file
      git
      gtkwave
      gwenview
      hexchat
      # hmcl
      jq
      ksshaskpass
      ktimetracker
      libarchive
      lrzsz
      # mathematica
      mono
      obs-studio
      okular
      osu-lazer
      patchelf
      pinta
      plasma-browser-integration
      python3
      ripgrep
      socat
      spectacle
      sqliteInteractive
      steam
      tdesktop
      tmux
      vlc
      vscode;
  };
}

# vim: sw=2 ts=2 cin
