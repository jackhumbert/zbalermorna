# Using nix to get started with Zbalermorna 

(includes IME via ibus for NixOS users)

See the available packages in `./default.nix`, which includes the fonts found in `./fonts.nix`. At the time of writing this includes:
* lerfanva
* lerfanva-clip
* ibus-table
* balvi-regular
* crisa-light
* crisa-regular
* dunda-regular
* fira-code-zlm
* lavi-zlm
* lobster-zlm
* nerfopi-regular
* piper-karot
* primihi-regular
* ritli-regular
* tanbo-regular
* tisna-bold
* tnr-zlm
* unicode-drakono
* unicode-manri
* unifont
* vrude-italic-regular
* vrude-regular
* zlm-manri
* zlm-template
* zlm-tnr


## On NixOS

Using [Nix flakes](https://www.tweag.io/blog/2020-07-31-nixos-flakes/):
```
{ description = "NixOS configuration with flakes";

  inputs.zbalermorna.url = github:jackhumbert/zbalermorna;

  outputs = { self, nixpkgs, zbalermorna }: {
    # replace <your-hostname> with your actual hostname
    nixosConfigurations.<your-hostname> = nixpkgs.lib.nixosSystem {

      # ...

      # add to your overlay so that the packages appear in pkgs
      nixpkgs.overlays = [
        # ...
        zbalermorna.overlay
      ];

      # You'll want at least the typical fonts
      fonts = with pkgs.zbalermorna; [ crisa-regular fira-code-zlm ];

      # If you want to be able to input zbalermorna characters directly
      i18n.inputMethod = {
        enabled = "ibus";
        ibus.engines = with pkgs.ibus-engines; [ table zbalermorna.ibus-table ];
        # optional (relevant only for plasma users)
        # ibus.panel = "${pkgs.plasma5.plasma-desktop}/libexec/kimpanel-ibus-panel";
      };

      environment.systemPackages = with pkgs.zbalermorna; [ 
        lerfanva 
        lerfanva-clip 
      ];
    };
  };
}
```

### Without using flakes:


Add it to your configuration.nix:
```
{ config, pkgs, ... }:

# see below for how to get zbalermorna.nix.
let 
  zbalermorna = pkgs.callPackage (import /path/to/zbalermorna.nix) {};

in { 
  # ...

  # You'll want at least the typical fonts
  fonts = with pkgs.zbalermorna; [ crisa-regular fira-code-zlm ];

  # If you want to be able to input zbalermorna characters directly
  i18n.inputMethod = {
    enabled = "ibus";
    ibus.engines = with pkgs.ibus-engines; [ table zbalermorna.ibus-table ];
    # optional (relevant only for plasma users)
    # ibus.panel = "${pkgs.plasma5.plasma-desktop}/libexec/kimpanel-ibus-panel";
  };

  environment.systemPackages = with pkgs.zbalermorna; [ 
    lerfanva 
    lerfanva-clip 
  ];
}

```

## Using home-manager

Note: This does not account for IME, only the fonts and lerfanva tools.

In your `home.nix`:
```nix
{ pkgs, ... }:

let
  # see below for how to get zbalermorna.nix.
  zbalermorna = pkgs.callPackage (import /path/to/zbalermorna.nix) {};

in { 
  fonts.fontconfig.enable = true;
  home.packages = with zbalermorna; [
    lerfanva
    lerfanva-clip
    crisa-regular
    fira-code-zlm
  ];
}
```

## Getting the derivation without using flakes

```bash
cd /path/to/wherever/you/want/it
nix run nixpkgs.nix-prefetch-github -c nix-prefetch-github --nix --prefetch jackhumbert zbalermorna > zbalermorna.nix
```
or use `fetchFromGitHub` directly in the appropriate nix expression to get the source.
