{pkgs, ...}:
{

programs.rofi = {
  enable = true;
  package = pkgs.rofi;
  theme = ".config/rofi/rofi-themes-collection/themes/simple-tokyonight.rasi";
 
  settings = {
  location = 7;
  };
};

}
