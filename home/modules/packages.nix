{ pkgs, ... }: { home.packages = with pkgs; [ ripgrep jq btop ]; }

