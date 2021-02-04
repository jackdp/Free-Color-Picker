@echo off

:: IniMod: https://www.pazera-software.com/products/inimod/

chcp 65001


set AllInis=lang\*.ini

set EnglishIni=lang\English.ini
set GreekIni=lang\Greek.ini
set ItalianIni=lang\Italian.ini
set JapaneseIni=lang\Japanese.ini
set PolishIni=lang\Polish.ini
set RussianIni=lang\Russian.ini
set SlovenianIni=lang\Slovenian.ini


set VerStr=1.2
set DateStr=2021.02.04
IniMod w %EnglishIni% %PolishIni% -s INFO -k TranslationDate -v %DateStr%
IniMod w %EnglishIni% %PolishIni% -s App -k AppVersion -v %VerStr%


IniMod w %AllInis% -s MAIN -k actShowHidePalette.Caption -v "Show color palette"
IniMod w %AllInis% -s Options -k chColorRectangle_AutoColor.Caption -v "Automatic border color"
IniMod w %AllInis% -s Options -k cswColorRectangle_BorderColor.BoundLabel.Caption -v "Border color:"




IniMod w %PolishIni% -s MAIN -k actShowHidePalette.Caption -v "Pokaż paletę kolorów"
IniMod w %PolishIni% -s Options -k chColorRectangle_AutoColor.Caption -v "Automatyczny kolor krawędzi"
IniMod w %PolishIni% -s Options -k cswColorRectangle_BorderColor.BoundLabel.Caption -v "Kolor krawędzi:"




pause
