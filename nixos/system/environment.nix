{ pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Networking and downloads
    curl
    gallery-dl
    git
    git-credential-manager
    wget

    # CLI utilities
    just
    yazi

    # Wayland utilities
    grim
    libnotify
    slurp
    swww
    pavucontrol
    wl-clipboard

    # cursor
    bibata-cursors

    # virtualization
    podman-tui
    distrobox

    # External packages
    inputs.zen-browser.packages.${system}.default
  ];
}

