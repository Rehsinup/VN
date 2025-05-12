EXTERNAL LoadScene(string)
INCLUDE 2d_api.ink

~playSound("Son5")
~show("Grethel")
~show("Carreau")
~changeBg("Salon")
aaaa
Grethel: Lorem ipsum dolor sit amet, consectetur adipiscing elit,
Grethel: sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Grethel: Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Carreau:Feur
~hide("Carreau")
~show("Coeur")
Coeur: AAA
~hide("Coeur")
~hide("Grethel")
~show("Majordome")
~show("Hansel")
Majordome: Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
~hide("Majordome")
~show("Trefle")
Trefle: Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
<bounce>Tu ouvres une étrange porte qui mène ailleurs...</bounce>
~hide("Hansel")
~hide("Trefle")
~changeBg("Rien")
~ LoadScene("Puzzle 1")

-> END
