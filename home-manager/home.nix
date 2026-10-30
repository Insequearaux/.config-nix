{ config, pkgs, ... }:

{
imports = [
	./niri.nix
        ./rofi.nix
        ./hypridle.nix
        ./syncything.nix
        ./swaylock.nix
];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "ets-c837622227";
  home.homeDirectory = "/home/ets-c837622227";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "26.05";

  services.wayle.enable = true;
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  services.wpaperd = {
      enable = true;
      settings = {
        DP-5 = {
          path = "/home/ets-c837622227/.config/home-manager/wallpapers/main.jpg";
        };
        DP-6 = {
          path = "/home/ets-c837622227/.config/home-manager/wallpapers/side.jpg";
        };
        DP-4 = {
          path = "/home/ets-c837622227/.config/home-manager/wallpapers/main.jpg";
        };
        HDMI-A-4 = {
          path = "/home/ets-c837622227/.config/home-manager/wallpapers/side.jpg";
        };
	any = {
		path = "/home/ets-c837622227/.config/home-manager/wallpapers";
      };
    };
};
home.sessionVariables = {
	BEMOJI_PICKER_CMD = "fuzzel --dmenu";
};
}




