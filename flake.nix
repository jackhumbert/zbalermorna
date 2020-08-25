{ description = "A flake for Zbalermorna, including the various fonts, transcribing tools and IME support";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

  outputs = { self, nixpkgs }:
    let
      zbalermorna =
        with import nixpkgs { system = "x86_64-linux"; };
        import ./default.nix { inherit stdenv fontforge xclip ibus-engines; };
      lerfanvaApp = { type = "app"; program = "${zbalermorna.lerfanva}/bin/lerfanva"; };
      lerfanva-clipApp = {
        type = "app";
        program = "${zbalermorna.lerfanva-clip}/bin/lerfanva-clip";
      };

     in {
        overlay = final: prev: with prev; ({
          ibus-engines = ibus-engines // { inherit (zbalermorna) table-zbalermorna; };
        } // zbalermorna);

        # Provide all the packages
        packages.x86_64-linux = zbalermorna;

        # We assume that, unless otherwise specified, the Crisa font is desired
        defaultPackage.x86_64-linux = zbalermorna.crisa-regular;

        # Easily run with `nix run <flake>#<app>`
        apps.x86_64-linux = { inherit lerfanvaApp lerfanva-clipApp;  };
        # lerfanva as default because I deem it the most likely to be immediately useful
        defaultApp.x86_64-linux = lerfanvaApp;
    };
}
