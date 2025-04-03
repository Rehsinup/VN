VAR curseur = 0
==Scene1 
Scene ou ils se font mettre dehors
->Ruelle

==Ruelle
Conversation entre Hansel et Grethel, pose la dynamique entre les deux
showbg ruelle On puis scene clef, on revient ensuite sur H et G dans la ruelle avec les neon on dans la ruelle, qui decident d'y aller.
->Sous_sol

==Sous_sol
Hansel et grethel découvre l'endroit (contemplation avec possibilité de regarder les objets autour de nous)
Le majordome arrive ensuite et se présente à H et G, leur explique le lieu de manière avenante, qui il est etc (façade)
H/G expliquent ensuite leur situation
le majordome emphatique leur propose de s'interlink dans son casino dont il fait les louanges en expliquant qu'il est touché par leur histoire et est près à les aider.
->Hall_Casino

==Hall_Casino
Le majordome présente la salle de jeu et les récompenses possible, hansel et grethel sont enjoué à l'idée de pouvoir, il présente les différentes salle et propose à H/G de commencer à jouer.
*[Croupier1]->CroupierCarreaux
*[Croupier2]->CroupierCoeur
*[Croupier3]->CroupierTrefle
{~curseur = 0 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurGrethel

{~curseur = 2 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurHansel

{~curseur = 1 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurMid

==CroupierCarreaux
->Hall_Casino

==CroupierCoeur
->Hall_Casino

==CroupierTrefle
->Hall_Casino


==CurseurGrethel
Grethel convinct son frère d'arrêter de jouer et lui fait comprendre les intention réelles du majordome, pour s'échapper, grâce à ses compétences de hackeuse ils ont la possibilité de détruire l'IA (jeu Mass Effect 3)
->END

==CurseurHansel
Hansel sombre dans le jeu et sa soeur le suit car elle lui fait confiance et pense que c'est la bonne solution
->END

==CurseurMid
Grethel se fait expulser du monde par le majordome car elle ne sombre pas dans les jeu comme son frère, de retour dans le sous-sol, le majordome lui propose un quitte ou double (idée: prononcer vrai nom du majordome (l'android controlé) pour provoquer un "bug" et donner le temps à grethel de débrancher son frère
->END