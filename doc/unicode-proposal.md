# Zbalermorna

This is a list of distinct non-ligatured glyphs and potential names with the current Unicode values - Unicode names were chosen based on the [CSUR guide for naming glyphs](http://www.evertype.com/standards/csur/naming.html) and [the proposal for Tengwar](http://std.dkuug.dk/JTC1/SC2/WG2/docs/n1641/n1641.htm), and the glyph names are based on [the Adobe glyph naming standards](http://blogs.adobe.com/typblography/files/typblography/typotechnica2007/Glyph%20names.pdf). The unicode values currently fall outside of the CSUR domain. The CSUR hasn't been updated in some time, but the [UCSUR](https://www.kreativekorp.com/ucsur/) is acting as a holding area until they can be added to the CSUR - this could be considered being sent there if a new range is selected.


```
Code Point  Glyph Name          Unicode Name
--------------------------------------------------------
0+E2300     denpabu             ZBALERMORNA SYMBOL FOR DENPABU
0+E2310     yhybu               ZBALERMORNA SYMBOL FOR YHYBU
0+E2320     py                  ZBALERMORNA LETTER PY
0+E2330     ty                  ZBALERMORNA LETTER TY
0+E2340     ky                  ZBALERMORNA LETTER KY
0+E2350     fy                  ZBALERMORNA LETTER FY
0+E2360     ly                  ZBALERMORNA LETTER LY
0+E2370     sy                  ZBALERMORNA LETTER SY
0+E2380     cy                  ZBALERMORNA LETTER CY
0+E2390     my                  ZBALERMORNA LETTER MY
0+E23A0     xy                  ZBALERMORNA LETTER XY
0+E23B0     by                  ZBALERMORNA LETTER BY
0+E23C0     dy                  ZBALERMORNA LETTER DY
0+E23D0     gy                  ZBALERMORNA LETTER GY
0+E23E0     vy                  ZBALERMORNA LETTER VY
0+E23F0     ry                  ZBALERMORNA LETTER RY
0+E2400     zy                  ZBALERMORNA LETTER ZY
0+E2410     jy                  ZBALERMORNA LETTER JY
0+E2420     ny                  ZBALERMORNA LETTER NY
0+E2430     leribu              ZBALERMORNA LETTER SEMIVOWEL IBU
0+E2440     lerubu              ZBALERMORNA LETTER SEMIVOWEL UBU

0+E2450     abu                 ZBALERMORNA VOWEL SIGN ABU
0+E2460     ebu                 ZBALERMORNA VOWEL SIGN EBU
0+E2470     ibu                 ZBALERMORNA VOWEL SIGN IBU
0+E2480     obu                 ZBALERMORNA VOWEL SIGN OBU
0+E2490     ubu                 ZBALERMORNA VOWEL SIGN UBU
0+E24A0     ybu                 ZBALERMORNA VOWEL SIGN YBU
0+E24B0     aibu                ZBALERMORNA VOWEL SIGN AIBU
0+E24C0     eibu                ZBALERMORNA VOWEL SIGN EIBU
0+E24D0     oibu                ZBALERMORNA VOWEL SIGN OIBU
0+E24E0     aubu                ZBALERMORNA VOWEL SIGN AUBU

0+E24F1     cluabu              ZBALERMORNA LETTER FULL ABU
0+E24F2     cluebu              ZBALERMORNA LETTER FULL EBU
0+E24F3     cluibu              ZBALERMORNA LETTER FULL IBU
0+E24F4     cluobu              ZBALERMORNA LETTER FULL OBU
0+E24F5     cluubu              ZBALERMORNA LETTER FULL UBU
0+E24F6     clurybu             ZBALERMORNA LETTER FULL YBU
0+E24F7     cluraibu            ZBALERMORNA LETTER FULL AIBU
0+E24F8     clureibu            ZBALERMORNA LETTER FULL EIBU
0+E24F9     cluroibu            ZBALERMORNA LETTER FULL OIBU
0+E24FA     cluraubu            ZBALERMORNA LETTER FULL AUBU

0+E230F     slakabu             ZBALERMORNA SYMBOL FOR SLAKABU
0+E231F     bahotongabu         ZBALERMORNA COMBINING BAHOTONGABU
0+E232F     suhutongabu         ZBALERMORNA COMBINING SUHUTONGABU
0+E233F     bahorsuhutongabu    ZBALERMORNA COMBINING BAHORSUHUTONGABU
0+E234F     suhurbahutongabu    ZBALERMORNA COMBINING SUHURBAHUTONGABU
0+E235F     bahebu              ZBALERMORNA COMBINING BAHEBU
0+E238F     tcenabu             ZBALERMORNA COMBINING TCENABU
0+E23CF     samjibu             ZBALERMORNA SYMBOL FOR SMAJIBU
```

Ligatures would then take the format `ty_abu`, `bahebu_bahebu`, `denpabu_yhybu`, etc and would not be a part of the unicode spec, just as the other ligatures have been removed.

Native Lojban names should/could be used for all of the glyphs - some options for these are below. `bu` is added at the end to indicate a symbol is being talked about:

```
stretch:    tcena   -ten-

tone:       tonga   -tog-   -to'a-  
rising:     banro   -ba'o-  
diving:     sfubu   -sub-   -su'u-  

ba'otonga
su'utonga
ba'orsu'utonga
su'urba'otonga
```

These codes could be arranged in a 3x16 table with 1 slots to spare, similar to this:


|    | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F |
|----|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 0x | 󢌠 | 󢌰 | 󢍀 | 󢍐 | 󢍠 | 󢍰 | 󢎀 | 󢎐 | 󢎠 | 󢌀 | 󢌐 | 󢓰 | 󢒰 | 󢓀 | 󢓐 | 󢓠 |
| 1x | 󢎰 | 󢏀 | 󢏐 | 󢏠 | 󢏰 | 󢐀 | 󢐐 | 󢐠 | 󢑐 | 󢑠 | 󢑰 | 󢒀 | 󢒐 | 󢍟 | 󢏏 | X |
| 2x | 󢓱 | 󢓲 | 󢓳 | 󢓴 | 󢓵 | 󢓶 | 󢓷 | 󢓸 | 󢓹 | 󢓺 | 󢌏 | 󢌟 | 󢌯 | 󢌿 | 󢍏 | 󢎏 |

## Full glyph list for Zbalermorna fonts:

|   |`abu`|`ebu`|`ibu`|`obu`|`ubu`|`ybu`|`aibu`|`eibu`|`oibu`|`aubu`|
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `denpabu`|`denpabu_abu`|`denpabu_ebu`|`denpabu_ibu`|`denpabu_obu`|`denpabu_ubu`|`denpabu_ybu`|`denpabu_aibu`|`denpabu_eibu`|`denpabu_oibu`|`denpabu_aubu`|
| `yhybu`|`yhybu_abu`|`yhybu_ebu`|`yhybu_ibu`|`yhybu_obu`|`yhybu_ubu`|`yhybu_ybu`|`yhybu_aibu`|`yhybu_eibu`|`yhybu_oibu`|`yhybu_aubu`|
| `py`|`py_abu`|`py_ebu`|`py_ibu`|`py_obu`|`py_ubu`|`py_ybu`|`py_aibu`|`py_eibu`|`py_oibu`|`py_aubu`|
| `ty`|`ty_abu`|`ty_ebu`|`ty_ibu`|`ty_obu`|`ty_ubu`|`ty_ybu`|`ty_aibu`|`ty_eibu`|`ty_oibu`|`ty_aubu`|
| `ky`|`ky_abu`|`ky_ebu`|`ky_ibu`|`ky_obu`|`ky_ubu`|`ky_ybu`|`ky_aibu`|`ky_eibu`|`ky_oibu`|`ky_aubu`|
| `fy`|`fy_abu`|`fy_ebu`|`fy_ibu`|`fy_obu`|`fy_ubu`|`fy_ybu`|`fy_aibu`|`fy_eibu`|`fy_oibu`|`fy_aubu`|
| `ly`|`ly_abu`|`ly_ebu`|`ly_ibu`|`ly_obu`|`ly_ubu`|`ly_ybu`|`ly_aibu`|`ly_eibu`|`ly_oibu`|`ly_aubu`|
| `sy`|`sy_abu`|`sy_ebu`|`sy_ibu`|`sy_obu`|`sy_ubu`|`sy_ybu`|`sy_aibu`|`sy_eibu`|`sy_oibu`|`sy_aubu`|
| `cy`|`cy_abu`|`cy_ebu`|`cy_ibu`|`cy_obu`|`cy_ubu`|`cy_ybu`|`cy_aibu`|`cy_eibu`|`cy_oibu`|`cy_aubu`|
| `my`|`my_abu`|`my_ebu`|`my_ibu`|`my_obu`|`my_ubu`|`my_ybu`|`my_aibu`|`my_eibu`|`my_oibu`|`my_aubu`|
| `xy`|`xy_abu`|`xy_ebu`|`xy_ibu`|`xy_obu`|`xy_ubu`|`xy_ybu`|`xy_aibu`|`xy_eibu`|`xy_oibu`|`xy_aubu`|
| `by`|`by_abu`|`by_ebu`|`by_ibu`|`by_obu`|`by_ubu`|`by_ybu`|`by_aibu`|`by_eibu`|`by_oibu`|`by_aubu`|
| `dy`|`dy_abu`|`dy_ebu`|`dy_ibu`|`dy_obu`|`dy_ubu`|`dy_ybu`|`dy_aibu`|`dy_eibu`|`dy_oibu`|`dy_aubu`|
| `gy`|`gy_abu`|`gy_ebu`|`gy_ibu`|`gy_obu`|`gy_ubu`|`gy_ybu`|`gy_aibu`|`gy_eibu`|`gy_oibu`|`gy_aubu`|
| `vy`|`vy_abu`|`vy_ebu`|`vy_ibu`|`vy_obu`|`vy_ubu`|`vy_ybu`|`vy_aibu`|`vy_eibu`|`vy_oibu`|`vy_aubu`|
| `ry`|`ry_abu`|`ry_ebu`|`ry_ibu`|`ry_obu`|`ry_ubu`|`ry_ybu`|`ry_aibu`|`ry_eibu`|`ry_oibu`|`ry_aubu`|
| `zy`|`zy_abu`|`zy_ebu`|`zy_ibu`|`zy_obu`|`zy_ubu`|`zy_ybu`|`zy_aibu`|`zy_eibu`|`zy_oibu`|`zy_aubu`|
| `jy`|`jy_abu`|`jy_ebu`|`jy_ibu`|`jy_obu`|`jy_ubu`|`jy_ybu`|`jy_aibu`|`jy_eibu`|`jy_oibu`|`jy_aubu`|
| `ny`|`ny_abu`|`ny_ebu`|`ny_ibu`|`ny_obu`|`ny_ubu`|`ny_ybu`|`ny_aibu`|`ny_eibu`|`ny_oibu`|`ny_aubu`|
| `leribu`|`leribu_abu`|`leribu_ebu`|`leribu_ibu`|`leribu_obu`|`leribu_ubu`|`leribu_ybu`|`leribu_aibu`|`leribu_eibu`|`leribu_oibu`|`leribu_aubu`|
| `lerubu`|`lerubu_abu`|`lerubu_ebu`|`lerubu_ibu`|`lerubu_obu`|`lerubu_ubu`|`lerubu_ybu`|`lerubu_aibu`|`lerubu_eibu`|`lerubu_oibu`|`lerubu_aubu`|
|   |  |  |  |  |  |  |  |  |  |  |
|   |  |  |  |  |  |  |  |  |  |  |
| `abu`|`denpabu_abu_yhybu_abu`|`denpabu_abu_yhybu_ebu`|`denpabu_abu_yhybu_ibu`|`denpabu_abu_yhybu_obu`|`denpabu_abu_yhybu_ubu`|`denpabu_abu_yhybu_ybu`|`denpabu_abu_yhybu_aibu`|`denpabu_abu_yhybu_eibu`|`denpabu_abu_yhybu_oibu`|`denpabu_abu_yhybu_aubu`|
| `ebu`|`denpabu_ebu_yhybu_abu`|`denpabu_ebu_yhybu_ebu`|`denpabu_ebu_yhybu_ibu`|`denpabu_ebu_yhybu_obu`|`denpabu_ebu_yhybu_ubu`|`denpabu_ebu_yhybu_ybu`|`denpabu_ebu_yhybu_aibu`|`denpabu_ebu_yhybu_eibu`|`denpabu_ebu_yhybu_oibu`|`denpabu_ebu_yhybu_aubu`|
| `ibu`|`denpabu_ibu_yhybu_abu`|`denpabu_ibu_yhybu_ebu`|`denpabu_ibu_yhybu_ibu`|`denpabu_ibu_yhybu_obu`|`denpabu_ibu_yhybu_ubu`|`denpabu_ibu_yhybu_ybu`|`denpabu_ibu_yhybu_aibu`|`denpabu_ibu_yhybu_eibu`|`denpabu_ibu_yhybu_oibu`|`denpabu_ibu_yhybu_aubu`|
| `obu`|`denpabu_obu_yhybu_abu`|`denpabu_obu_yhybu_ebu`|`denpabu_obu_yhybu_ibu`|`denpabu_obu_yhybu_obu`|`denpabu_obu_yhybu_ubu`|`denpabu_obu_yhybu_ybu`|`denpabu_obu_yhybu_aibu`|`denpabu_obu_yhybu_eibu`|`denpabu_obu_yhybu_oibu`|`denpabu_obu_yhybu_aubu`|
| `ubu`|`denpabu_ubu_yhybu_abu`|`denpabu_ubu_yhybu_ebu`|`denpabu_ubu_yhybu_ibu`|`denpabu_ubu_yhybu_obu`|`denpabu_ubu_yhybu_ubu`|`denpabu_ubu_yhybu_ybu`|`denpabu_ubu_yhybu_aibu`|`denpabu_ubu_yhybu_eibu`|`denpabu_ubu_yhybu_oibu`|`denpabu_ubu_yhybu_aubu`|
| `ybu`|`denpabu_ybu_yhybu_abu`|`denpabu_ybu_yhybu_ebu`|`denpabu_ybu_yhybu_ibu`|`denpabu_ybu_yhybu_obu`|`denpabu_ybu_yhybu_ubu`|`denpabu_ybu_yhybu_ybu`|`denpabu_ybu_yhybu_aibu`|`denpabu_ybu_yhybu_eibu`|`denpabu_ybu_yhybu_oibu`|`denpabu_ybu_yhybu_aubu`|
| `aibu`|`denpabu_aibu_yhybu_abu`|`denpabu_aibu_yhybu_ebu`|`denpabu_aibu_yhybu_ibu`|`denpabu_aibu_yhybu_obu`|`denpabu_aibu_yhybu_ubu`|`denpabu_aibu_yhybu_ybu`|`denpabu_aibu_yhybu_aibu`|`denpabu_aibu_yhybu_eibu`|`denpabu_aibu_yhybu_oibu`|`denpabu_aibu_yhybu_aubu`|
| `eibu`|`denpabu_eibu_yhybu_abu`|`denpabu_eibu_yhybu_ebu`|`denpabu_eibu_yhybu_ibu`|`denpabu_eibu_yhybu_obu`|`denpabu_eibu_yhybu_ubu`|`denpabu_eibu_yhybu_ybu`|`denpabu_eibu_yhybu_aibu`|`denpabu_eibu_yhybu_eibu`|`denpabu_eibu_yhybu_oibu`|`denpabu_eibu_yhybu_aubu`|
| `oibu`|`denpabu_oibu_yhybu_abu`|`denpabu_oibu_yhybu_ebu`|`denpabu_oibu_yhybu_ibu`|`denpabu_oibu_yhybu_obu`|`denpabu_oibu_yhybu_ubu`|`denpabu_oibu_yhybu_ybu`|`denpabu_oibu_yhybu_aibu`|`denpabu_oibu_yhybu_eibu`|`denpabu_oibu_yhybu_oibu`|`denpabu_oibu_yhybu_aubu`|
| `aubu`|`denpabu_aubu_yhybu_abu`|`denpabu_aubu_yhybu_ebu`|`denpabu_aubu_yhybu_ibu`|`denpabu_aubu_yhybu_obu`|`denpabu_aubu_yhybu_ubu`|`denpabu_aubu_yhybu_ybu`|`denpabu_aubu_yhybu_aibu`|`denpabu_aubu_yhybu_eibu`|`denpabu_aubu_yhybu_oibu`|`denpabu_aubu_yhybu_aubu`|

```
denpabu_yhybu

cluabu
cluebu
cluibu
cluobu
cluubu
clurybu
cluraibu
clureibu
cluroibu
cluraubu

slakabu
bahotongabu
suhutongabu
bahorsuhutongabu
suhurbahutongabu
bahebu
bahebu_bahebu
bahebu_bahebu_bahebu
tcenabu
tcenabu.init
tcenabu.medi
tcenabu.fina

```