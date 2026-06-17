{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
{
  # https://devenv.sh/basics/
  # env.GREET = "devenv";

  # https://devenv.sh/languages/
  # languages.rust.enable = true;

  # https://devenv.sh/packages/
  packages = with pkgs; [ craftos-pc ];

  # https://devenv.sh/processes/
  # processes.cc0 = {
  #   exec = "craftos --mount-ro repo=./";
  # };

  # https://devenv.sh/services/
  # services.postgres.enable = true;

  # https://devenv.sh/scripts/

  scripts = {

    cc0.exec = "craftos --mount-ro repo=./ &";
    cc-test.exec = "craftos --mount-ro /=./ --exec \"shell.run('bin/mcfly.lua')\"  &";
  };

  # https://devenv.sh/basics/
  # enterShell = ''
  #   hello         # Run scripts directly
  #   git --version # Use packages
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
