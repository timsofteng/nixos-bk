{ pkgs, config, lib, ... }:
{
  home-manager.users.tim = {lib, ...}:
  {
    home.packages = with pkgs; [
      (nerdfonts.override { fonts = [ "Hack" "IBMPlexMono"  ]; })
      corefonts
    ];

    #unstable-packages
    #++ (with pkgs.unstable; [ 
    #  corefonts 
    #]);

    fonts.fontconfig.enable = true;
};
    fontConfig = {
      enable = true;
      defaultFonts = {
        monospace = [ "IBM Plex Mono 13" ];
        sansSerif = [ "IBM Plex Sans 13" ];
        serif = [ "IBM Plex Serif 13" ];
      };
      :
    };
}
