{pkgs, ...}:
{

  wayland.windowManager.niri = {

    enable = true;	

    settings = {


      binds = {
        "Mod+N" = {
          spawn = ["firefox"];
        };
        "Mod+Space" = {
          spawn = ["rofi" "-show" "drun"];
        };
        "Mod+Period" = {
          spawn = ["emote"];
        };
        "Mod+Shift+S" = {
          spawn = ["sh" "-c" "slurp | grim -g - - | wl-copy"];
        };
        "Mod+E" = {
          spawn = ["cosmic-files"];
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
      include "${./default-config.kdl}" 
      spawn-at-startup "blueman-applet"
      spawn-at-startup "nfsm"
      prefer-no-csd
      '';
  };


}
