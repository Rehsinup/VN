VAR curseur = 0

VAR A = 0 
En l'an 2087, dans les bas-fonds de Neo-Berlin, deux jeunes ados n'ayant connu que l'amour inconditionnel de leur père se retrouvent dans l'impasse lorsque celui-ci tomba gravement malade et furent mis à la porte par leur détestable belle-mère.
==Scene1 
HORS DE MA VUE !!! Ne cherchez pas à revenir ici, votre père est dans cette situation par votre faute vous ne le méritez pas !
->Ruelle

==Ruelle
/*Conversation entre Hansel et Grethel, pose la dynamique entre les deux
showbg ruelle On puis scene clef, on revient ensuite sur H et G dans la ruelle avec les neon on dans la ruelle, qui decident d'y aller.*/
Après quelques heures à errer sous la pluie, Hansel et Grethel désormais démunis se regardent dans le blanc des yeux d'un air livide signe de leur désespoir.
G-Mon frère comment allons nous faire, papa est mourant et nous ne pouvons plus rentrer chez nous.
H- "Greth... 
viens par là, 
je sais à quel point tu es triste et je le suis tout autant mais il ne faut pas qu'on se laisse abattre.
G-Mais notre père... je n'ai jamais eu confiance en notre belle-mère je ne veux pas le laisser seul.
H-Moi aussi Greth mais ne t'inquiète pas, j'ai quelques plans pour sortir d'ici mais ça risque de prendre du temps avant d'y parvenir alors fais moi confiance sœurette.
En attendant on va devoir se débrouiller seuls... 
et trouver de quoi manger ainsi qu'un lieu où crécher.
G-Tu sais que toi comme moi nous avons confiance en tes premiers instinct. 
*[Fouiller la ruelle]->Fouiller_la_ruelle
*[Evoquer les plans]->Evoquer_les_plans
-(Fouiller_la_ruelle)
H-Tant qu'il est encore temps essayons de recolter quelques chose qui pourrait nous aider a passer la nuit, le mieux serait d'aller chacun de notre...
G-NON,
..., 
Restons ensemble je ne veux pas qu'il t'arrive quelque chose, père est sur son lit de mort et la basse ville n'est pas recommendable, et j'aurai besoin de toi si il m'arrive une bricole.
H-D'accord, avançons ensemble, commençons par ce distributeur, tu penses pouvoir le hacker ?
G-Mmmhh,
H-Alors qu'es-ce ça donne.
G-Je crois qu'il est déconnecté.
H-Laisse moi essayer de casser la vitre avec mon implant 
G-Mais on risque de se faire repérer.
H-T'inquiète je sais ce que je fais.
SFX *CRACK* bruit de vitre qui se casse
H-Merde, c'est avarié... 
G-Il n'y a rien d'autre ?
H-Non, rien de rien tout est pourri on va devoir chercher ailleur.
(peut-etre essayer de brancher un truc et ça allume les neon)
NEON ON ->Neon_ON

--(Evoquer_les_plans)
H-Je pense avoir un plan pour dormir ce soir mais il se trouve plus loin dans la ville, il faut qu'on se sépare pour passer inaperçu
G-Hans tu sais que je peux pas sortir loin en ville sans toi. Cette ville me fait peur.
H-Allez Greth, c'est chez une bonne connaissance, il m'a déja sauvé de plusieurs affaires.
G-Tu me parles de ton collègue Max, celui qui t'as couté ce bras ?
H-Oui on a presque perdu la vie ce jour la mais c'etait lui qui m'a sorti de la Greth je lui doit beaucoup et il peut encore nous aider.
G-Mais c'est lui qui a eu l'idée d'aller la bas il me semble.
H-Oui tu as raison Greth, peut être que je devrai t'écouter mais je n'ai pas d'autre solution pour le moment.
G-Je suis sur que tu en trouveras une rapidement, après tout c'est toi qui connais le mieux la basse ville.
--

--(Neon_ON)
SFX *Zing (genre neon qui s'allume)
H et G-*air interloqué*
H-On y voit plus clair tout à coup.
G-Oui la ville commence à s'illuminer à cette heure-ci.
H-Regarde les lumières on dirait que celui qui les a posés la voulait vraiment qu'on le remarque.
G-Ahah(c'est nul a chier faut changer)Oui c'est sur que ce n'est pas très discret.
H-Allons voir de plus près ça pique ma curiosité.
*[Se drirger vers le lieu]->repGreth
*[Dire a Hansel que c'est suspect]->repGreth

---(repGreth)
G- Allons-y je te suis Hans mais fait attention, les apparences sont souvent trompeuses dans la basse ville. 
H- Je comprend ce que tu essaies de me faire voir mais c'est surement un commerce de nuit qui vient d'ouvrir ces portes, rien de quoi s'inquiéter.
G- Oui désolé c'est moi qui réfléchit trop. 
H-Ne te reproche pas cela ,c'est aussi pour ça que j'ai besoin de toi Greth.
G-Merci, je te laisse prendre les devants une fois dedans, tu es plus doué que moi la dessus.
H-Parfait allons-y.
-
---
->Sous_sol
--
->Sous_sol

==Sous_sol
H : C'est pas du tout ce quoi on s'attendait, l'endroit etait plus attrayant de l'extérieur.
G : C'est quoi cet endroit ? On dirait une sorte de bazar bloqué dans le passé.
H : Mhh je doute qu'on y trouve quoi que ce soit d'intéressant tout est poussiéreux et délabré sans parler de l'odeur mais jetons quand même un coup d'oeil autour on sait jamais sur quoi on va tomber.
G : Oui ça tu l'as dis, j'ai l'impression d'être observé alors hâtons nous.
*[décrire l'odeur]
*[décrire la pièce]
*[parler de l'objet sur le comptoir]
*driiing*
M : Oh là, excusez-moi jeunes gens, je ne vous ai pas du tout entendu entrer  !
HetG : Et nous on ne s'attendait pas à voir quelqu'un ici.
M : Veuillez m'excuser si je vous ai fait peur, permettez moi de me présenter, je suis celui qu'on appelle "le Majordome", propriétaire du prestigieux "Hexe Holle".
H : Le Hexe Holle ? Jamais entendu parler et pourtant je connais bien ce secteur de la Basse-ville.
M : Il n'y a pas de mal à cela vous êtes jeunes, mon établissement est très réputé auprès des amateurs de jeux nous ne cherchons pas à être connu de tous.
H : De jeu ? Genre CyberBrawl ou NeuroMaze ? 
M : Non, je parle ici de jeux plus anciens, plus nobles que ceux de nos jours, pas de sang pas de piratage juste votre réflexion et bien sûr une petite part de chance mais c'est ce qui rend chaque partie intéressante.
H : Et on y gagne quoi ? des métadonnées, des NeuMark ? 
M : tout se dont vous avez besoin peut être mis en jeu, nous som- enfin "je" suis plein de ressources. Et donc que recherchez vous jeunes gens ?
G : Le mieux serait du NeuMark mais s'il est traçable alors il sera inutilisable dans beaucoup d'endroits.
H : Et avec les métadonnées ? on pourrait trouver des acheteurs non, mon ami Vanz saura vers qui m'orienter si il est sortie de taule...
M : Je vous laisse du temps pour vous décider, en tout cas mes portes sont ouvertes faites moi signes quand vous aurez choisi

/*Hansel et grethel découvre l'endroit (contemplation avec possibilité de regarder les objets autour de nous)
Le majordome arrive ensuite et se présente à H et G, leur explique le lieu de manière avenante, qui il est etc (façade)
H/G expliquent ensuite leur situation
le majordome emphatique leur propose de s'interlink dans son casino dont il fait les louanges en expliquant qu'il est touché par leur histoire et est près à les aider.*/
->Hall_Casino

==Hall_Casino
/*Le majordome présente la salle de jeu et les récompenses possible, hansel et grethel sont enjoué à l'idée de pouvoir, il présente les différentes salle et propose à H/G de commencer à jouer.*/
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
Grethel a récolté suffisamment d'indices sur le lieu et l'identité du Majordome, ce qui lui permet de convaincre son frère de partir d'ici (Labyrinthe out)
->END

==CurseurHansel
Si grethel n'a pas réussi a raisonner son frère
alors Hansel sombre dans l'addiction et H et G se retrouvent piégés dans le casino (Grethel suis son frère car elle pense qu'il a raison)
->END

==CurseurMid
Si grethel comprend que le casino est un mauvais endroit et ne suit pas son frère, sans pour autant arriver a lui faire comprendre, elle se voit éjectée du casino et se retrouve dans le sous-sol avec le majordome, elle parle avec ce dernier et à la possibilité de lui proposer un quitte ou double pour chercher son frère si vous avez parlé au croupier qui donne une certaine information, l'IA étant joueuse accepte et si grethel gagne l'IA libère hansel (good ending) sinon elle retourne dans le casino avec son frère (bad ending). Si le joueur ne veut pas faire le quitte ou double grethel sort sans son frère du casino en se promettant de revenir le chercher.
->END