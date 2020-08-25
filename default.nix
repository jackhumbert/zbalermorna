# Note that this is not a derivation, but a collection of derivations.
# Use `callPackage` on the derivations herein _after_ importing this.
{ stdenv, fontforge, xclip, ibus-engines }:

let
    lerfanva = stdenv.mkDerivation {
      name = "lerfanva";
      src = ./.;
      installPhase = ''
        mkdir -p $out/bin
        cp ime/ime.sh $out/bin/lerfanva
      '';

      meta = with stdenv.lib; {
        version = "0.1.0";
        description = "Transliterate latin text into Zbalermorna";
        homepage = https://github.com/jackhumbert/zbalermorna;
        platforms = platforms.linux;
        license = licenses.publicDomain;
      };
    };

    lerfanva-clip = stdenv.mkDerivation {
      name = "lerfanva-clip";
      src = ./.;
      buildInputs = [ lerfanva xclip ];
    
      installPhase = ''
        mkdir -p $out/bin

        ln -s ${lerfanva}/bin/lerfanva $out/bin/lerfanva

        cat << EOF > $out/bin/lerfanva-clip
        #!/usr/bin/env bash
        SEL=0
        case \$1 in
          1) SEL=primary;;
          2) SEL=secondary;;
          *) SEL=clipboard;;
        esac

        OUT=\$(${lerfanva}/bin/lerfanva <(echo \$(xclip -o -selection \$SEL)))
        echo -n \$OUT | ${xclip}/bin/xclip -selection \$SEL
        echo \$OUT
        EOF

        chmod +x $out/bin/lerfanva-clip
      '';

      meta = with stdenv.lib; {
        version = "0.1.0";
        description = "Replace clipboard or selection content with its transliteration into Zbalermorna";
        homepage = https://github.com/jackhumbert/zbalermorna;
        platforms = platforms.linux;
        license = licenses.agpl3;
      };
    };

    mkFontDrv = name: attrs: stdenv.mkDerivation {
      inherit name;
      inherit (attrs) version;
      src = ./.;
      buildInputs = [ fontforge ];
      installPhase = ''
        mkdir -p $out/share/fonts/zbalermorna
        ./build.sh ${name}
        cp fonts/${name}.otf $out/share/fonts/zbalermorna
      '';

      meta = {
        inherit (attrs)
          version
          license;
        description = "A font for the Zbalermorna writing system of the language Lojban";
        homepage = https://github.com/jackhumbert/zbalermorna;
        platforms = stdenv.lib.platforms.linux;
      };
    };

    table-zbalermorna = let version = "0.1.0"; in with ibus-engines; stdenv.mkDerivation {
      name = "table-zbalermorna";
      inherit version;
      src = ./.;
      buildInputs = [ table ];
      buildPhase = ''
        export HOME=$TMP
        ${table}/bin/ibus-table-createdb -n zlm.db -s ime/zlm.ibus
      '';
      installPhase = ''
        TABLE_LOCATION=$out/share/ibus-table/tables
        mkdir -p $TABLE_LOCATION
        cp zlm.db $TABLE_LOCATION/zlm.db
        # TODO: Add icon? What icon to use? Where to get it from? Where do you put it?
        # cp assets/img/favicon.png $out/share/ibus-table/???
      '';

      meta = with stdenv.lib; {
        isIbusEngine = true;
        inherit version;
        description = "Basic input method for Zbalermorna text";
        homepage = https://github.com/jackhumbert/zbalermorna;
        platforms = platforms.linux;
        license = licenses.lgpl3;
      };
    };

    fonts = builtins.mapAttrs mkFontDrv (with stdenv.lib.licenses; {
      # I extracted versions with: grep -oE '^Version: .*$' src/*.sfd
      balvi-regular = {
        version = "1.001";
        license = ofl;
      };
      crisa-light = {
        version = "2.015";
        license = ofl;
      };
      crisa-regular = {
        version = "0.1";
        license = ofl;
      };
      dunda-regular = {
        version = "1.10";
        license = unfree;
      };
      fira-code-zlm = {
        version = "1.208";
        license = ofl;
      };
      lavi-zlm = {
        version = "2.0";
        license = gpl3;
      };
      lobster-zlm = {
        version = "001.001";
        license = unfree;
      };
      nerfopi-regular = {
        version = "001.001";
        license = unfree;
      };
      piper-karot = {
        version = "1.1";
        license = ofl;
      };
      primihi-regular = {
        version = "2008.02.06";
        license = publicDomain;
      };
      ritli-regular = {
        version = "0.1";
        license = gpl3;
      };
      tanbo-regular = {
        version = "2.000";
        license = asl20;
      };
      tisna-bold = {
        version = "0.1";
        license = asl20;
      };
      tnr-zlm = {
        version = "001.000";
        license = unfree;
      };
      unicode-drakono = {
        version = "001.000";
        license = unfree;
      };
      unicode-manri = {
        version = "001.000";
        license = unfree;
      };
      unifont = {
        version = "12.1.02";
        license = gpl2;
      };
      vrude-italic-regular = {
        version = "1.200";
        license = ofl;
      };
      vrude-regular = {
        version = "1.200";
        license = ofl;
      };
      zlm-manri = {
        version = "001.000";
        license = unfree;
      };
      zlm-template = {
        version = "0.1";
        license = ofl;
      };
      zlm-tnr = {
        version = "001.000";
        license = unfree;
      };
    });

in {
  inherit
    lerfanva
    lerfanva-clip
    table-zbalermorna;
} // fonts
