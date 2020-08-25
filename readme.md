
# Zbalermorna Font Development Kit

A collection of tools and processes for using and developing typefaces for
Zbalermorna, an alternative orthography for the constructed language Lojban.

### Project status

###### Done

- Design unicode layout
- Create reference glyphs
- Complete opentype features declaration
- Complete first working ZLM font
- More complete sample jufra for test page
- Create ibus config for existing unicode range
- Port the old ZLM font, now called 'Drakono' to new system

###### To Do

- Decide on Unicode and glyph names
- Finalise Unicode layout and submit to UCSUR
- Finalise build process for new font development
- Update existing fonts
- Create alternate typefaces and add them to this repo

### How to learn ZLM

- [Tinycard deck of the 50 most common words in Lojban](https://tinycards.duolingo.com/decks/NE6TBYur/lojban-words-in-zbalermorna)

### Installation with Nix

Instructions for installing via home-manager or system-wide (recommended for NixOS users) - both with and without using the experimental nix flakes feature - can be found [here](./doc/installing-via-nix.md).

### How to type ZLM text

- Install an IME file and a ZLM font
- Type native ZLM directly into any app or website

**or**

- Clone this repo
- Open `/ime/index.html` and use the IME emulator
- Copy-paste the generated ZLM text

Soon we will also have an online version of the IME emulator you can use to play
with ZLM text. You'll still need a font to support the generated ZLM text~


### How a ZLM font works

Zbalermorna uses special glpyhs which live in the Private Use Area, covering the region from 0xED80 -> 0xEDBF.

A method of inputting these glyphs requires in IME for your particular
operating system, such as `ibus` or `scim`. This project attempts to provide
configurations for as many IMEs as possible.

Once a IME and an appropriate configuration is loaded, it can be used to type
ZLM glyphs, which a correctly constructed ZLM font will automatically display
as assembled composite glpyhs using OpenType features.


### Currently Supported IMEs using ligatured fonts

- Windows (`ime/windows/setup.exe`)
- Javascript (`ime/index.html`)
- ibus (`ime/zlm.ibus`)


### Creating a new Zbalermorna typeface

```
This procedure is still incomplete - build script and feature file have bugs
```

- Install [FontForge](http://fontforge.github.io)
- Launch the Preview page: `gulp preview`
- Clone and rename `src/zlm-manri.sfd` to create your own copy
- Open your new copy using FontForge
- Modify vector shapes for component glyphs; composite glyphs will auto-update
- Self-assembling composites can also be manually overriden with real vectors,
  if your typeface wants to use special forms for certain composites.
- Build the font for preview with `./build.sh <name of file without .sfd> --update-test` or
- When your `.sfd` file is saved, Gulp will automatically recompile it into a
  TrueType font, and refresh the preview page so you can see how your updates
  effect ligatures and kerning.


