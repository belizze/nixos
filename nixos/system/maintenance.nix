{
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 1w";
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}

