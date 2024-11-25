{config, pkgs, ...}:

{
  home.username = "kerem";
  home.homeDirectory = "/home/kerem";

  home.packages = with pkgs; [
    fastfetch
    yazi

    zip
    xz
    unzip
    p7zip

    ripgrep
    jq
    yq-go
    eza
    fzf
    thefuck
    zoxide

    cowsay
    file
    which
    tree
    gnused
    gnutar
    gawk
    zstd
    gnupg

    glow

    btop
    iotop
    iftop
    powertop

    sysstat
    lm_sensors #sensors
    ethtool
    pciutils #lspci
    usbutils #lsusb

    vesktop
    nodejs_23
    go
    rustup
    gcc
    lua
    nerdfonts

    font-manager
    jetbrains-mono

    starship
    brightnessctl
  ];

  programs.git = {
    enable = true;
    userName = "Kerem Kilic";
    userEmail = "nyaa@live.com";
    extraConfig = {
      init = {
        defaultBranch = "main";
  };
    };
  };
  
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
