VAR curseur = 0
VAR carreau = false
VAR trefle = false
VAR coeur = false
VAR A = 0 
VAR objet = false
En l'an 2087, dans les bas-fonds de Neo-Berlin, deux jeunes ados n'ayant connu que l'amour inconditionnel de leur père se retrouvent dans l'impasse. Lorsque celui-ci tomba gravement malade, ils furent mis à la porte par leur détestable belle-mère.\
->Scene1
==Scene1 
HORS DE MA VUE !!! Ne cherchez pas à revenir ici, votre père est dans cette situation par votre faute. Vous ne le méritez pas !
->Ruelle

==Ruelle
/*Conversation entre Hansel et Grethel, pose la dynamique entre les deux
showbg ruelle On puis scene clef, on revient ensuite sur H et G dans la ruelle avec les neon on dans la ruelle, qui decident d'y aller.*/
Après quelques heures à errer sous la pluie, Hansel et Grethel désormais démunis se regardent dans le blanc des yeux, d'un air livide signe de leur désespoir.
G-Mon frère comment allons nous faire, papa est mourant et nous ne pouvons plus rentrer chez nous.
H-"Greth... 
viens par là, 
je cmprends que tu sois triste et je le suis autant. Mais il ne faut pas qu'on se laisse abattre.
G-Mais notre père... je n'ai jamais eu confiance en notre belle-mère. Je ne veux pas le laisser seul, j'ai peur.
H-Moi aussi Greth mais ne t'inquiète pas, j'ai toujours un plan pour sortir d'ici ! Mais ça risque de prendre du temps avant d'y parvenir, alors fais moi confiance sœurette.
En attendant on va devoir se débrouiller seuls... 
et trouver de quoi manger, ainsi qu'un lieu où squatter.
G-Tu sais, toi comme moi, que nous avons confiance en tes premiers instincts. 
*[Fouiller la ruelle]->Fouiller_la_ruelle
*[Evoquer les plans]->Evoquer_les_plans
-(Fouiller_la_ruelle)
H-Tant qu'il est encore temps, essayons de recolter quelques choses qui pourrait nous aider à passer la nuit. Le mieux serait d'aller chacun de notre...
G-NON,
..., 
Restons ensemble. Je ne veux pas qu'il t'arrive quoique ce soit, père est sur son lit de mort et la basse ville n'est pas recommendable. J'aurai besoin de toi si il m'arrive quelque chose.
H-D'accord, avançons ensemble. Commençons par ce distributeur, tu penses pouvoir le hacker ?
G-Mmmhh,
H-Alors qu'est-ce ça donne ?
G-Je crois qu'il est déconnecté.
H-Laisse-moi essayer de casser la vitre avec mon implant.
G-Mais on risque de se faire repérer.
H-T'inquiète je sais ce que je fais.
SFX *CRACK* bruit de vitre qui se casse
H-Merde, c'est avarié... 
G-Il n'y a rien d'autre ?
H-Non, rien de rien. Tout est pourri, on va devoir chercher ailleurs.
(peut-être essayer de brancher un truc et ça allume les néons)
NEON ON ->Neon_ON

--(Evoquer_les_plans)
H-Je pense avoir un plan pour dormir ce soir, mais il se trouve plus loin dans la ville. Il faut qu'on se sépare pour passer inaperçu.
G-Hans, tu sais que je ne me sens pas à l'aise en ville sans toi.
H-T'en fais pas Greth, c'est chez une bonne connaissance. Il m'a sauvé de plusieurs mauvaises aventures, même s'il m'entreraîne dans d'autres.
G-Ah...Max. Celui qui t'as couté ce bras ?
H-Oui, on a presque perdu la vie ce jour là... Mais il m'a sauvé et je lui dois beaucoup. Il saura comment nous sortir de là.
((G-Certes, mais c'est lui qui a eu l'idée d'aller la bas il me semble.
H-Oui tu as raison Greth, peut être que je devrais t'écouter mais je n'ai pas d'autre solution pour le moment.))
G-Même si ça sent le plan foireux, c'est toujours mieux que rien je suppose.
--

--(Neon_ON)
SFX *Zing (genre neon qui s'allume)
H+G-*air interloqué*
G-Oh...Les néons repoussent les ombres.
H-Oui il est déjà tard. On devrait pas trop tarder dans les ruelles.
G-Si on suit les lumières peut-être qu'on sera plus en sécurité, non ? Ou alors c'est fait pour nous y attirer...
H-Ahaha, comme tu veux Greth.
*[Se dirirger vers le lieu]->repGreth
*[Dire a Hansel que c'est suspect]->repGreth

---(repGreth)
G-Allons-y Hans, mais fais attention, dans la basse ville les apparences sont souvent trompeuses. 
H-Hum...Mais tu sais c'est sûrement un nouveau commerce de nuit qui vient d'ouvrir, je pense qu'on a pas besoin de s'inquiéter.
G-Okay, désolée, c'est moi qui réfléchit trop. Peut-être que je me prends la tête pour rien.
H-Te tracasse pas Greth, chacun son truc, toi tu réfléchis et moi j'agis !
G-Aha merci, tu peux prendre les devants une fois dans le bâtiment, on sait tous les deux que tu t'en sortiras mieux.
H-Parfait, allons-y.
-
---
->Sous_sol
--
->Sous_sol

==Sous_sol
H-C'est pas du tout ce à quoi je m'attendais... 
L'endroit semblait plus attrayant de l'extérieur.
G-C'est quoi cet endroit ? On dirait une sorte de bazar figé dans le passé.
H-Hum... je doute qu'on y trouve quoi que ce soit d'intéressant. Tout est poussiéreux et délabré, sans parler de l'odeur ! Mais jetons quand même un coup d'oeil autour, on sait jamais sur quoi on peut tomber.
G-Ouai ça tu l'as dis, j'ai l'impression d'être observé... Dépêchons nous.

+{not scene_full}->description
- -(description)
* * [décrire l'odeur] G-Il y a une odeur de vieux bois et de papiers anciens. ->description
* * [décrire la pièce]H-Où est-ce qu'on a atterit ? C'est plein de babioles d'une autre époque. Le comptoir est plein de poussière.
G-Oui c'est étrange, regarde cette boîte avec une sorte de fleur métallique. Je me demande à quoi ça pouvait servir.
H-Tout à l'air vieu, on dirait que le propiétaire est lui aussi coincé dans le passé. ->description
* * [parler de l'objet sur le comptoir]
G-Fais attention en touchant les objets.
H-T'inquiète regarde, les pages de magazines sont collées, on dirait qu'ils sont là depuis une éternité.
G-Il y a une clochette sur le comptoir... C'est bizarre elle est lustrée, comme si elle servait encore. ->description
* *(scene_full)->arrivee_majordome


-(arrivee_majordome)
*[Utiliser la sonnette]
M-Oh là, excusez-moi jeunes gens, je ne vous ai pas du tout entendu entrer !
H+G-Et nous on ne s'attendait pas à voir quelqu'un ici.
M-Veuillez m'excuser si je vous ai fait peur, permettez moi de me présenter. Je suis celui qu'on appelle "le Majordome", propriétaire du prestigieux "Hexe Holle".
H-Le Hexe Holle ? Jamais entendu parler et pourtant je connais la Basse-ville comme ma poche.
M-Il n'y a pas de mal à cela, mon établissement est réservé aux amateurs de jeux que nous trions sur le volet.
Nous ne cherchons pas à être connu de tous.
H-De jeu ? Genre CyberBrawl ou NeuroMaze ?
M-Non, je parle ici de jeux plus anciens, plus nobles que ceux de nos jours. Pas de sang, pas de piratage, juste votre réflexion. Et bien sûr une petite part de chance ! 
Mais c'est ce qui rend chaque partie intéressante.
H-Et on y gagne quoi ? Des métadonnées, des NeuMark ?
M-Tout ce dont vous avez besoin peut être mis en jeu. Nous som-
enfin JE suis plein de ressources. Et donc que recherchez vous jeunes gens ?
G-Le mieux serait du NeuMark. Mais le problème c'est qu'il pourrait être traçable. Du coup il serait inutilisable dans beaucoup d'endroits.
H-Et les métadonnées ? On pourrait trouver des acheteurs non ? Mon ami Vanz saura vers qui m'orienter. si il est sorti de taule.
G-Hum, je suis sûr que je ferais du meilleur travail que ce lunatique de Vanz ! Laissons-le en dehors de ça.
M-Je vous laisse le temps de vous décider. En tout cas les portes de mon casino vous sont ouvertes. Faites moi signe quand vous vous serez décidés.
-
-
/*Hansel et grethel découvre l'endroit (contemplation avec possibilité de regarder les objets autour de nous)
Le majordome arrive ensuite et se présente à H et G, leur explique le lieu de manière avenante, qui il est etc (façade)
H/G expliquent ensuite leur situation
le majordome emphatique leur propose de s'interlink dans son casino dont il fait les louanges en expliquant qu'il est touché par leur histoire et est près à les aider.*/
->Hall_Casino

==Hall_Casino
H+G *air étonné*
M-Bravo pour le test ! Ce n'était qu'une formalité évidemment, rien de très compliqué. 
Le retour au casino est un peu déroutant au début, ne vous en faites pas... ça change de mon antre, n'est-ce pas ?
+{not scene_full}->fakeawnsers
- -(fakeawnsers)
* *H-Wow, le contraste est flagrant. Vous ne mentiez en parlant de votre prestigieuse institution.
M-Pourquoi l'aurais-je fait, vous êtes mes invités, c'est un plaisir pour moi de vous accueillir.->fakeawnsers
* *G-C'est... impressionnant *elle se rapproche de Hansel
M-Effectivement, mes visiteurs sont souvent ébahis en arrivant. J'en suis plutôt fier d'ailleurs, ça veut dire que mon casino fait une bonne première impression.->fakeawnsers 
* *(scene_full)->suite
-(suite)
M-Comme vous pouvez le constater, nous nous trouvons à l'entrée. 
C'est d'ici que vous pourrez accéder à nos différents jeux. Malheureusement, je n'ai que 3 jeux à vous proposer aujourd'hui. Les divers croupiers du casino expliqueront bien mieux que moi les jeux auxquels ils sont attribués. 
Comme promis vous pourrez gagner des Neumark ou des métadonnées pour chaque manche remportée.
*[Neumark]->neumark
*[Métadonnées]->meta
-(neumark)
Très bien alors, pour chaque partie remportée face à mes employés vous gagnerez des Neumarks.->suite2
-

-(meta)
C'est décidé alors, des métadonnées pour notre binôme.\
->suite2
-

-(suite2)

H-On peut rester autant qu'on veut ?
M-Evidemment, jouez autant que vous le souhaitez, si vous avez la moindre question je reste à votre disposition.
/*Le majordome présente la salle de jeu et les récompenses possible, hansel et grethel sont enjoué à l'idée de pouvoir, il présente les différentes salle et propose à H/G de commencer à jouer.*/
//*[G- Parler]
*[Question de H/G] ->Gquestion

+[CroupierCarreaux]->CroupierCarreaux 

+[CroupierCoeur]->CroupierCoeur

+[CroupierTrefle]->CroupierTrefle

-(Gquestion)
G-Une question me turlupine, tout à l'heure vous nous avez dit qu'il n'y avait pas de contrepartie aux jeux. Mais alors, comment fonctionne le casino ?
M-Excellente remarque de votre part mademoiselle. Le casino tourne sur les fonds d'investissement de grandes entreprises, telles que Bargeld et Endlos Netz. Malheureusement à cause de la crise économique, nous avons dû fermer une partie des jeux à disposition.->suite2
-


{~curseur = 0 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurGrethel

{~curseur = 2 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurHansel

{~curseur = 1 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurMid

==CroupierCarreaux
CC-greeting
CC-présentation du jeux
JEUX
G-Question/blabla avec le croupier
Le croupier propose de refaire une partie
into reblabla

Info: coeur cachée dans le talk 
conclusion de conversation

ne pas lui parler de d'ou il est allé dans sa vie
+[parler du majordome]
{not trefle:
majordome gentil
}
{trefle:
majordome pas gentil
}

Avant de partir le croupier propose une derniere partie

->Hall_Casino

==CroupierCoeur
CC-greeting
CC-présentation du jeux
JEUX
G-Question/blabla avec le croupier
Le croupier propose de refaire une partie
into reblabla

conclusion de conversation
Info trefle 

ne pas lui parler de son ex-femme
+[parler du majordome]
{not carreau:
majordome gentil
}
{carreau:
majordome pas gentil
}

Avant de partir le croupier propose une derniere partie

->Hall_Casino

==CroupierTrefle
CC-greeting
CC-présentation du jeux
JEUX
G-Question/blabla avec le croupier
Le croupier propose de refaire une partie
into reblabla

conclusion de conversation
info carreau 
+[parler du majordome]
{not coeur:
majordome gentil
}
{coeur:
majordome pas gentil
}

Avant de partir le croupier propose une derniere partie

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