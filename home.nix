{ nixpkgs-f2k, ... }:
{ config, pkgs, ... }:
{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "itzrealduck";
  home.homeDirectory = "/home/itzrealduck";
  # customNodePackages = pkgs.callPackage ./customNodePackages { };

  home.packages = with pkgs; [                              
    htop 
 nixpkgs-f2k.packages.${pkgs.system}.awesome-git
    jetbrains.idea-ultimate

  ];

  home.sessionVariables = {
    EDITOR = "nvim";
  };
  programs = {
      # java.enable = true;
  };


  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
