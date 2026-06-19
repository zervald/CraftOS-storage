{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
let
  luaPackages = pkgs.lua52Packages;
in
{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/languages/
  languages.lua = {
    enable = true;
    lsp.enable = true;
  };

  # https://devenv.sh/packages/
  packages = with pkgs; [
    craftos-pc
  ];

  # https://devenv.sh/processes/
  # processes.cc0 = {
  #   exec = "craftos --mount-ro repo=./";
  # };

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/

  scripts = {
    dev-cc0.exec = "craftos --mount-ro repo=./ &";
    dev-test.exec = "craftos --mount-ro /=./ --exec \"shell.run('bin/mcfly.lua')\"  &";
  };

  # https://devenv.sh/basics/
  # enterShell = ''
  #   export LUA_PATH="$LUA_PATH;${config.git.root}/craftos2-rom/rom/modules/main/?.lua";
  #   export LUA_PATH="$LUA_PATH;${config.git.root}/craftos2-rom/rom/apis/?.lua"
  # '';

  # https://devenv.sh/tasks/
  # tasks = {
  #   "myproj:setup".exec = "mytool build";
  #   "devenv:enterShell".after = [ "myproj:setup" ];
  # };

  # https://devenv.sh/tests/
  # enterTest = ''
  #   echo "Running tests"
  # '';

  # https://devenv.sh/git-hooks/
  # git-hooks.hooks.shellcheck.enable = true;

  # See full reference at https://devenv.sh/reference/options/
}
