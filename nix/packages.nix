{ inputs, ... }:
{
  perSystem =
    { system, pkgs, ... }:
    {
      config.packages = rec {
        agda-base = pkgs.agda;
        agda = agda-base.withPackages (ps: [
        ]);
        agda2-mode = pkgs.emacsPackages.agda2-mode;
      };
    };
}
