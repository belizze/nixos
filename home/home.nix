{
  imports = [
    ./modules/git.nix
    ./modules/hyprland.nix
    ./modules/packages.nix
    ./modules/dunst.nix
    ./modules/obs.nix
    ./modules/wofi/default.nix

    # terminals
    ./modules/terminal/foot/default.nix
    ./modules/terminal/ghostty/default.nix # disabled LLLLL
    ./modules/terminal/alacritty/default.nix

    # ides
    ./modules/ide/nvim/default.nix

    # shell stuff
    ./modules/direnv.nix
    ./modules/shell/bash/default.nix
    ./modules/shell/nushell/default.nix

    # waybar
    ./modules/waybar/waybar.nix
  ];

  home.username = "simxnet";
  home.homeDirectory = "/home/simxnet";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}

