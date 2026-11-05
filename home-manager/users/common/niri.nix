{pkgs, ...}:
{

  wayland.windowManager.niri = {

    enable = true;	

    settings = {


      binds = {
        "Mod+N" = {
          spawn = ["firefox"];
        };

        "Mod+Period" = {
          spawn = ["emote"];
        };
        "Mod+Shift+S" = {
          spawn-sh = ["grim -g \"$(slurp)\" - | satty -f -"];
        };
        "Mod+Shift+V" = {
          spawn-sh = ["cliphist list | rofi -dmenu | cliphist decode | wl-copy"];#["rofi -modi clipboard:./rofi-cliphist -show clipboard -show-icons"];
        };
        "Mod+E" = {
          spawn = ["dolphin"];
        };
        "Mod+Space" = {
          spawn = ["rofi" "-show" "drun"];
        };
        "Mod+Shift+C" = {
          spawn = ["waylandar-dashboard"];
        };
      };
      

      _children = [
      {
        output = {

          _args = ["DP-4"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {position = {
                        _props = {x=3000;y=456;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["DP-5"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {position = {
                        _props = {x=1080;y=456;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["DP-6"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {transform = "270";}
          {position = {
                        _props = {x=4920;y=0;}; 
                      };}
          ];
        };
      }{
        output = {

          _args = ["HDMI-A-4"];
          _children = [

          {mode = "1920x1080@60";}
          {scale = 1.0;}
          {transform = "90";}
          {position = {
                        _props = {x=0;y=0;}; 
                      };}
          ];
        };
      }
      ];

    };
    extraConfig = ''
      include "${./niri.kdl}" 
      spawn-at-startup "blueman-applet"
      spawn-at-startup "nfsm"
      prefer-no-csd
      spawn-sh-at-startup "wl-paste --watch cliphist store"
      spawn-at-startup "waylandar-widget"
      '';
  };


}
