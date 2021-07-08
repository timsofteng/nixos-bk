{ config, pkgs, lib, inputs, ... }:
{

  imports = [
    #./sway.nix
    #./fonts.nix
  ];

  home-manager.users.tim = {lib, ...}:
  {
    #wayland.windowManager.sway.enable = true; 

    home.packages = with pkgs; [

      #terminal-emulators
      foot 
      sakura

      #terminal_utils
      wget 
      gnufdisk
      tmux
      vim
      neovim
      htop
      zip
      unzip
      s-tar
      unrar
      ncdu
      nnn
      fzf
      fd
      ripgrep
      powertop
      chafa
      pistol
      neofetch

      #scree-capturing
      grim
      slurp
      wf-recorder
      swappy

      #desktop_env
      swaylock
      swayidle
      xdg_utils
      wl-clipboard
      wlsunset
      gnome.adwaita-icon-theme
      brightnessctl
      fuzzel
      pcmanfm
      xarchiver
      bitwarden

      #browsers
      firefox
      (chromium.override ({ commandLineArgs = "--enable-features=UseOzonePlatform,WebRTCPipeWireCapturer --ozone-platform=wayland"; }))

      #git
      lazygit 
      git


      #connection
      tdesktop
      discord
      slack
      viber
      anydesk

      #media
      mpv
      zathura
      vimiv-qt
      pqiv
      sxiv
      deadbeef
      transmission-gtk

      #system&helpers
      libnotify
      wev
      gcc
      gnumake
      appimage-run
      xorg.xeyes
      lm_sensors
      libva-utils
      trash-cli
      gebaar-libinput

      #audio
      pulseaudio
      pavucontrol
      pulsemixer
      pamixer
      
      #fonts
      corefonts 
      #nerd-fonts
      (nerdfonts.override { fonts = [ "SourceCodePro" ]; })

    ]; 

    xdg = { 
      enable = true;

      mime.enable = true;
     # mimeApps = {
     #   enable = true;
     #   defaultApplications =  {
     #    "text/plain" = "nvim.desktop";
     #    "text/x-log" = "nvim.desktop";
     #    "text/html"="chromium.desktop";
     #    "x-scheme-handler/http"="chromium.desktop";
     #    "x-scheme-handler/https"="chromium.desktop";
     #    "x-scheme-handler/about"="chromium.desktop";
     #    "x-scheme-handler/unknown"="chromium.desktop";
     #   };
     # };
      userDirs.enable = true;
      userDirs.createDirectories = true;
    };

    programs = {
      direnv.enable = true;
      direnv.nix-direnv.enable = true;

      mako.enable = true;
      waybar.enable = true;
    };
    
    home.file.".config/nvim" = {
      source = ./config/nvim;
      recursive = true;
    };

    home.file.".vim" = {
      source = ./config/vim;
      recursive = true;
    };

    home.file.".terminfo" = {
      source = ./config/terminfo;
      recursive = true;
    };

    xdg.configFile."nnn/plugins" = {
      source = ./config/nnn/plugins;
      recursive = true;
    };

    xdg.configFile."mimeapps.list".source = ./config/mimeapps.list;
    xdg.configFile."sway/config".source = ./config/sway/config;
    home.file.".zshrc".source = ./config/zsh/zshrc;
    xdg.configFile."foot/foot.ini".source = ./config/foot/foot.ini;
    xdg.configFile."alacritty/alacritty.yml".source = ./config/alacritty/alacritty.yml;
    home.file.".config/tmux/tmux.conf".source = ./config/tmux/tmux.conf;
    home.file.".config/jesseduffield/lazygit/config.yml".source = ./config/lazygit/config.yml;
    xdg.configFile."swappy/config".source = ./config/swappy/config;
    xdg.configFile."gebaar/gebaard.toml".source = ./config/gebaar/gebaard.toml;
  };
}
