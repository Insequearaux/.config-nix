{
  services.hypridle = {
    enable = true;
    
    settings = 
    let 
    lock = "swaylock --clock --indicator --screenshots --effect-blur 10x5 -lk";
    monitorsOn = "${nm} power-on-monitors";
    monitorsOff = "${nm} power-on-monitors";
    nm = "niri msg action";
    in {
      general = {
        lock_cmd = lock;
        before_sleep_cmd = lock;
        after_sleep_cmd = "hyprctl dispatch dpms on";
      };
      listener = [
        {
          timeout = 600;
          on-timeout = lock;

        }
        {
          timeout = 1200;
          on-timeout = monitorsOff;
          on-resume = monitorsOn;
        }
      ];
    };
  };
}
