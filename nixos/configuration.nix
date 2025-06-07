{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./system/audio.nix
    ./system/boot.nix
    ./system/environment.nix
    ./system/fonts.nix
    ./system/maintenance.nix
    ./system/networking.nix
    ./system/users.nix
    ./system/variables.nix
    ./system/greetd.nix
    ./system/hyprland.nix
    ./system/spicetify.nix
    ./system/virtualization.nix

    inputs.spicetify-nix.nixosModules.default
  ];

  systemd.tmpfiles.rules =
    [ "L+ /usr/local/bin - - - - /run/current-system/sw/bin/" ];

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = { open = true; };

  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;

  nixpkgs.config = { allowUnfree = true; };
  system.stateVersion = "24.11";
}

