{ pkgs, ... }: {
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "${pkgs.hyprland}/bin/Hyprland";
        user = "simxnet";
      };
      default_session = initial_session;
    };
  };
}
