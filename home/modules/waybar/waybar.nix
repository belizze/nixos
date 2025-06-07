{
  home.file.".config/waybar/themes".source = ./themes;
  programs.waybar = {
    enable = true;
    style = ./waybar.css;

    settings = {
      mainBar = {
        layer = "bottom";
        position = "top";
        height = 40;
        spacing = 2;
        exclusive = true;
        passthrough = false;
        gtk-layer-shell = true;
        fixed-center = true;

        modules-left = [ "tray" "cpu" "memory" ];
        modules-center = [ "hyprland/workspaces" ];
        modules-right = [
          "mpris"
          "pulseaudio"
          "clock"
          "clock#simpleclock"
          "hyprland/language"
        ];

        "mpris" = {
          player = "spotify";
          dynamic-order = [ "artist" "title" ];
          format = "{player_icon} {dynamic}";
          format-paused = "{status_icon} <i>{dynamic}</i>";
          status-icons = { paused = ""; };
          player-icons = { default = ""; };
        };

        "hyprland/workspaces" = {
          on-click = "activate";
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
          };
          all-outputs = true;
          disable-scroll = false;
          active-only = false;
        };

        "hyprland/language" = { format = "{short}"; };

        tray = {
          show-passive-items = true;
          spacing = 10;
        };

        "clock#simpleclock" = {
          tooltip = false;
          format = " {:%H:%M}";
        };

        clock = {
          format = " {:%a %d %b}";
          tooltip-format =
            "<span color='#cdd6f4' font='lexend 16'><tt><small>{calendar}</small></tt></span>";
          calendar = {
            format = {
              days = "<span weight='normal'>{}</span>";
              months = "<span color='#cdd6f4'><b>{}</b></span>";
              today = "<span color='#f38ba8' weight='700'><u>{}</u></span>";
              weekdays = "<span color='#f9e2af'><b>{}</b></span>";
              weeks = "<span color='#a6e3a1'><b>w{}</b></span>";
            };
            mode = "month";
            mode-mon-col = 1;
            on-scroll = 1;
          };
        };

        cpu = {
          format = " {usage}%";
          tooltip = true;
          interval = 1;
        };

        memory = { format = " {used:0.1f}gi"; };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-muted = "  muted";
          format-icons = {
            headphone = "";
            default = [ " " " " " " ];
          };
          on-click = "pavucontrol";
        };

        "custom/sep" = {
          format = "|";
          tooltip = false;
        };
      };
    };
  };
}

