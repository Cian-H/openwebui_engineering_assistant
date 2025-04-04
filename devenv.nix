{
  pkgs,
  lib,
  config,
  inputs,
  ...
}: {
  packages = [pkgs.git];

  languages = {
    python = {
      enable = true;
      uv.enable = true;
    };
    go.enable = true;
  };

  tasks = {
    "eng-assistant:deploy-stack" = {
      exec = "docker compose up -d";
      before = ["devenv:enterShell"];
    };
  };
}
