{ pkgs, ... }:

{
  users.users.simxnet = {
    isNormalUser = true;
    description = "Juli";
    extraGroups = [ "networkmanager" "wheel" "video" "audio" ];
    shell = pkgs.nushell;
  };
}

