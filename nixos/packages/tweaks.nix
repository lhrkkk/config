self: super:

{
  obs-studio = super.obs-studio.override {
    ffmpeg = self.ffmpeg-full.override {
      nvenc = true;
    };
  };

  linuxPackages_5_6 = super.linuxPackages_5_6.extend(lself: lsuper: {
    exfat-nofuse = lsuper.exfat-nofuse.overrideAttrs (old: {
      patches = (old.patches or []) ++ [ ./_patches/exfat.patch ];
    });
  });
}
