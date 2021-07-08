{ pkgs, lib, config, ... }:

{
home-manager.users.tim.wayland.windowManager.sway = {
  enable = true; 
  wrapperFeatures.gtk = true ;

  config = {
    bars = [
      {
      command = "waybar";
      }
    ];
    gaps = {
      inner = 5;
    };
    #fonts = ["Hack Nerd Font 10"];
    fonts = {
      names = [ "Hack Nerd Font 10" ];
      style = "Bold Semi-Condensed";
      size = 11.0;
    };
    terminal = "foot";
    menu = "bemenu-run";
    input."*"  = {
      xkb_layout =  "us,ru";
      xkb_options = "grp:win_space_toggle";
      #xkb_options = "ctrl:nocaps";
    };
    keybindings =
      let
        modifier = config.home-manager.users.tim.wayland.windowManager.sway.config.modifier;
        grim = "${pkgs.grim}/bin/grim";
        slurp = "${pkgs.slurp}/bin/slurp";
      in
      # this lib prevents comletely rewriting all binds
      lib.mkOptionDefault {
        "${modifier}+Tab" = "workspace back_and_forth";
        "XF86AudioMute" = "exec ${pkgs.pamixer}/bin/pamixer -t";
        "XF86AudioLowerVolume" = "exec ${pkgs.pamixer}/bin/pamixer -d 5";
        "XF86AudioRaiseVolume" = "exec ${pkgs.pamixer}/bin/pamixer -i 5";
        #"XF86AudioMicMute" = "exec ${pkgs.pamixer}/bin
        "XF86MonBrightnessDown" = "exec ${pkgs.brightnessctl}/bin/brightnessctl set 10%-";
        "XF86MonBrightnessUp" = "exec ${pkgs.brightnessctl}/bin/brightnessctl set 10%+";
         "--release Print" = ''exec ${grim} -g \"$(${slurp})" - | wl-copy'';
      };
  };
};
}
