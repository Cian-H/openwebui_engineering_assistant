{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = [pkgs.git];

  tasks = {
    "eng-assistant:deploy-stack" = {
      exec = "docker compose up -d";
      before = ["devenv:enterShell"];
    };
  };
}
