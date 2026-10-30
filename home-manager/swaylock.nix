{pkgs,...}:
{
  programs.swaylock = {
    enable = true;
    package = pkgs.swaylock-effects;

    settings = {
      screenshots = true;
      clock = true;
      indicator = true;
      grace = 5;
      fade-in = 1;
      effect-blur = "10x5";
      indicator-caps-lock = true;
      hide-keyboard-layout = true;
      effect-vignette = "0.5:1";
      ring-color = "66008833";
      text-color = "4400ddff";
    };
  };
}
