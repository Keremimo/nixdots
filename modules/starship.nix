{config, pkgs, ...}: {
  programs.starship = {
  enable = true;
  settings = {
    palette = "catppuccin_mocha";

    format = ''
      [ 󰣇 ](bg:#6c7086 fg:#f2cdcd)\
      [](bg:#313244 fg:#6c7086)\
      $directory\
      [](fg:#313244 bg:#394260)\
      $git_branch\
      $git_status\
      [](fg:#394260 bg:#212736)\
      $nodejs\
      $rust\
      $golang\
      $php\
      [](fg:#212736 bg:#1d2230)\
      $time\
      [ ](fg:#1d2230)\
      \n$character
    '';

    character = {
      success_symbol = '[󰋇](#f2cdcd)';
      error_symbol = '[](#f38ba8)';
    };

    directory = {
      style = "fg:#cdd6f4 bg:#313244";
      format = "[ $path ]($style)";
      truncation_length = 3;
      truncation_symbol = "…/";
      substitutions = {
        "Documents" = "󰈙 ";
        "Downloads" = " ";
        "Music" = " ";
        "Pictures" = " ";
      };
    };

    git_branch = {
      symbol = "";
      style = "bg:#394260";
      format = '[[ $symbol $branch ](fg:#cdd6f4 bg:#394260)]($style)';
    };

    git_status = {
      style = "bg:#cdd6f4";
      format = '[[($all_status$ahead_behind )](fg:#769ff0 bg:#394260)]($style)';
    };

    nodejs = {
      symbol = "";
      style = "bg:#212736";
      format = '[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)';
    };

    rust = {
      symbol = "";
      style = "bg:#212736";
      format = '[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)';
    };

    golang = {
      symbol = "";
      style = "bg:#212736";
      format = '[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)';
    };

    php = {
      symbol = "";
      style = "bg:#212736";
      format = '[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)';
    };

    time = {
      disabled = false;
      time_format = "%R";
      style = "bg:#1e1e2e";
      format = '[[  $time ](fg:#a0a9cb bg:#1d2230)]($style)';
    };

    palettes = {
      catppuccin_mocha = {
        rosewater = "#f5e0dc";
        flamingo = "#f2cdcd";
        pink = "#f5c2e7";
        mauve = "#cba6f7";
        red = "#f38ba8";
        maroon = "#eba0ac";
        peach = "#fab387";
        yellow = "#f9e2af";
        green = "#a6e3a1";
        teal = "#94e2d5";
        sky = "#89dceb";
        sapphire = "#74c7ec";
        blue = "#89b4fa";
        lavender = "#b4befe";
        text = "#cdd6f4";
        subtext1 = "#bac2de";
        subtext0 = "#a6adc8";
        overlay2 = "#9399b2";
        overlay1 = "#7f849c";
        overlay0 = "#6c7086";
        surface2 = "#585b70";
        surface1 = "#45475a";
        surface0 = "#313244";
        base = "#1e1e2e";
        mantle = "#181825";
        crust = "#11111b";
      };
    };
  };
};

}
