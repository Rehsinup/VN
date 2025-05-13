EXTERNAL LoadScene(string)
EXTERNAL LoadVFX(string)
INCLUDE 2d_api.ink
VAR curseur = 0
VAR carreau = false
VAR trefle = false
VAR coeur = false
VAR A = 0 
VAR objet = false
VAR etreAlleVoirUnCroupier = false
VAR Grethel = 0
VAR Hansel = 0

VAR DéblocageInfoCroupierCoeur = 0
VAR DéblocageInfoCroupierTrèfle = 0
VAR DéblocageInfoCroupierCarreau = 0

VAR InfoCroupierCarreau = false
VAR InfoCroupierCCO = false
VAR InfoCroupierT = false

VAR DejaVenuCroupierCarreau = false
VAR DéblocageInfoMajordome = false
VAR DéblocageInfoMajordomeCCO = false
VAR DéblocageInfoMajordometrefle = false

En l'an 2087, dans les bas-fonds de Neo-Berlin, deux jeunes ados n'ayant connu que l'amour inconditionnel de leur père se retrouvent dans l'impasse. Lorsque celui-ci tomba gravement malade, ils furent mis à la porte par leur détestable belle-mère.\
->Scene1
==Scene1 
HORS DE MA VUE !!! Ne cherchez pas à revenir ici, votre père est dans cette situation par votre faute. Vous ne le méritez pas !
->Ruelle

==Ruelle
/*Conversation entre Hansel et Grethel, pose la dynamique entre les deux
showbg ruelle On puis scene clef, on revient ensuite sur H et G dans la ruelle avec les neon on dans la ruelle, qui decident d'y aller.*/
Après quelques heures à errer sous la pluie, Hansel et Grethel désormais démunis se regardent dans le blanc des yeux, d'un air livide signe de leur désespoir.


~show("Grethel")
~show("Hansel2")
Grethel: Mon frère comment allons nous faire, papa est mourant et nous ne pouvons plus rentrer chez nous.

Hansel: "Greth... 
Hansel: viens par là, 
Hansel: je comprends que tu sois triste et je le suis autant. Mais il ne faut pas qu'on se laisse abattre.
Grethel: Mais notre père... je n'ai jamais eu confiance en notre belle-mère. Je ne veux pas le laisser seul, j'ai peur.

Hansel: Moi aussi Greth mais ne t'inquiète pas, j'ai toujours un plan pour sortir d'ici ! Mais ça risque de prendre du temps avant d'y parvenir, alors fais moi confiance sœurette.
Hansel: En attendant on va devoir se débrouiller seuls... 
Hansel: et trouver de quoi manger, ainsi qu'un lieu où squatter.
Grethel: Tu sais, toi comme moi, que nous avons confiance en tes premiers instincts. 
*[Fouiller la ruelle]->Fouiller_la_ruelle
*[Evoquer les plans]->Evoquer_les_plans
-(Fouiller_la_ruelle)

Hansel: Tant qu'il est encore temps, essayons de recolter quelques choses qui pourrait nous aider à passer la nuit. Le mieux serait d'aller chacun de notre...

Grethel: Grethel: NON,
Grethel: ..., 
Grethel: Restons ensemble. Je ne veux pas qu'il t'arrive quoique ce soit, père est sur son lit de mort et la basse ville n'est pas recommendable. J'aurai besoin de toi si il m'arrive quelque chose.
Hansel: D'accord, avançons ensemble. Commençons par ce distributeur, tu penses pouvoir le hacker ?

Grethel: Mmmhh,

Hansel: Alors qu'est-ce ça donne ?

Grethel: Je crois qu'il est déconnecté.

Hansel: Laisse-moi essayer de casser la vitre avec mon implant.

Grethel: Mais on risque de se faire repérer.

Hansel: T'inquiète je sais ce que je fais.
SFX *CRACK* bruit de vitre qui se casse
Hansel: Merde, c'est avarié... 

Grethel: Il n'y a rien d'autre ?

Hansel: Non, rien de rien. Tout est pourri, on va devoir chercher ailleurs.
(peut-être essayer de brancher un truc et ça allume les néons)
NEON ON ->Neon_ON

--(Evoquer_les_plans)
Hansel: Je pense avoir un plan pour dormir ce soir, mais il se trouve plus loin dans la ville. Il faut qu'on se sépare pour passer inaperçu.
Grethel: Hans, tu sais que je ne me sens pas à l'aise en ville sans toi.

Hansel: T'en fais pas Greth, c'est chez une bonne connaissance. Il m'a sauvé de plusieurs mauvaises aventures, même s'il m'entreraîne dans d'autres.
Grethel: Ah...Max. Celui qui t'as couté ce bras ?

Hansel: Oui, on a presque perdu la vie ce jour là... Mais il m'a sauvé et je lui dois beaucoup. Il saura comment nous sortir de là.
((G-Certes, mais c'est lui qui a eu l'idée d'aller la bas il me semble.
Hansel: Oui tu as raison Greth, peut être que je devrais t'écouter mais je n'ai pas d'autre solution pour le moment.))

Grethel: Même si ça sent le plan foireux, c'est toujours mieux que rien je suppose.
~hide("Grethel")
~hide("Hansel2")

--

--(Neon_ON)
SFX *Zing (genre neon qui s'allume)
~show("Grethel")
~show("Hansel2")
H+G-*air interloqué*

Grethel: G-Oh...Les néons repoussent les ombres.

Hansel: Oui il est déjà tard. On devrait pas trop tarder dans les ruelles.

Grethel: Si on suit les lumières peut-être qu'on sera plus en sécurité, non ? Ou alors c'est fait pour nous y attirer...

Hansel: Ahaha, comme tu veux Greth.
*[Se dirirger vers le lieu]->repGreth
*[Dire a Hansel que c'est suspect]->repGreth

---(repGreth)
Grethel: Allons-y Hans, mais fais attention, dans la basse ville les apparences sont souvent trompeuses. 

Hansel: Hum...Mais tu sais c'est sûrement un nouveau commerce de nuit qui vient d'ouvrir, je pense qu'on a pas besoin de s'inquiéter.

Grethel: Okay, désolée, c'est moi qui réfléchit trop. Peut-être que je me prends la tête pour rien.

Hansel: Te tracasse pas Greth, chacun son truc, toi tu réfléchis et moi j'agis !

Grethel: Aha merci, tu peux prendre les devants une fois dans le bâtiment, on sait tous les deux que tu t'en sortiras mieux.
Hansel: Parfait, allons-y.
~hide("Grethel")
~hide("Hansel2")
-
---
->Sous_sol
--
~hide("Grethel")
~hide("Hansel2")
->Sous_sol

==Sous_sol
~show("Grethel")
~show("Hansel2")
Hansel: C'est pas du tout ce à quoi je m'attendais... 
L'endroit semblait plus attrayant de l'extérieur.

Grethel: C'est quoi cet endroit ? On dirait une sorte de bazar figé dans le passé.

Hansel: Hum... je doute qu'on y trouve quoi que ce soit d'intéressant. Tout est poussiéreux et délabré, sans parler de l'odeur ! Mais jetons quand même un coup d'oeil autour, on sait jamais sur quoi on peut tomber.

Grethel: Ouai ça tu l'as dis, j'ai l'impression d'être observé... Dépêchons nous.


+{not scene_full}->description
- -(description)
* * [décrire l'odeur] Il y a une odeur de renfermé et de métal, ainsi un souffle venant de la ventilation. ->description
* * [décrire la pièce]Hansel: Où est-ce qu'on a atterit ? C'est plein de babioles d'une autre époque. Le comptoir est plein de poussière.

Grethel: Oui c'est étrange, regarde cette boîte avec une sorte de fleur métallique. Je me demande à quoi ça pouvait servir.

Hansel: Tout à l'air vieux, on dirait que le propriétaire n'a pas voulut se mettre à jour. ->description
* * [parler des objets dans la pièce]

Grethel: Fais attention en touchant les objets.

Hansel: T'inquiète regarde, un holo diffuseur,... 2063 ??? C'est hyper vieux, pourquoi est ce que c'est la ?

Grethel: Je ne sais pas, tout a l'air vieux, , les sièges sont poussiéreux et même la ventilation peine à faire son travail.
Grethel: Regarde, il y a une sonnette sur le comptoir.
->description
* *(scene_full)->arrivee_majordome


-(arrivee_majordome) 
*[Utiliser la sonnette]
->suitemajordome
-(suitemajordome)
~hide("Hansel2")
~show("Majordome")
Majordome: Oh là, excusez-moi jeunes gens, je ne vous ai pas du tout entendu entrer !

~show("Hansel2")
~hide("Majordome")
~show("Grethel")
Hansel: Grethel: Et nous on ne s'attendait pas à voir quelqu'un ici.

~hide("Hansel2")
~show("Majordome")
Majordome: Veuillez m'excuser si je vous ai fait peur, permettez moi de me présenter. Je suis celui qu'on appelle "le Majordome", propriétaire du prestigieux "Hexe Holle".

~hide("Grethel")
~show("Hansel")
Hansel: Le Hexe Holle ? Jamais entendu parler et pourtant je connais la Basse-ville comme ma poche.

Majordome: Il n'y a pas de mal à cela, mon établissement est réservé aux amateurs de jeux que nous trions sur le volet.
Majordome: Nous ne cherchons pas à être connu de tous.

Hansel: De jeu ? Genre CyberBrawl ou NeuroMaze ?

Majordome: Non, je parle ici de jeux plus anciens, plus nobles que ceux de nos jours. Pas de sang, pas de piratage, juste votre réflexion. Et bien sûr une petite part de chance ! 
Mais c'est ce qui rend chaque partie intéressante.

Hansel: Et on y gagne quoi ? Des métadonnées, des NeuMark ?

Majordome: Tout ce dont vous avez besoin peut être mis en jeu. Nous som-
Majordome: enfin JE suis plein de ressources. Et donc que recherchez vous jeunes gens ?

~hide("Hansel")
~show("Grethel")
Grethel: Le mieux serait du NeuMark. Mais le problème c'est qu'il pourrait être traçable. Du coup il serait inutilisable dans beaucoup d'endroits.

~hide("Grethel")
~show("Hansel")
Hansel: Et les métadonnées ? On pourrait trouver des acheteurs non ? Mon ami Vanz saura vers qui m'orienter. si il est sorti de taule.

~hide("Hansel")
~show("Grethel")
Grethel: Hum, je suis sûr que je ferais du meilleur travail que ce lunatique de Vanz ! Laissons-le en dehors de ça.
~hide("Grethel")

~show("Hansel")
Hansel: Je vous laisse le temps de vous décider. En tout cas les portes de mon casino vous sont ouvertes. Faites moi signe quand vous vous serez décidés.
*[Mauvais présentiment de Grethel]->Frere
*[Rassurer sa soeur]->Soeur

-(Frere)
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Hansel2: Bon on a l'occasion de se refaire une santé ici, moi et les jeux ça fait qu'un alors fais moi confiance. Tu es prête ?
Grethel: Si tu penses que c'est une bonne solution je vais pas t'en empêcher
Hansel2: Mais bien sûr et puis on a pas trop le choix là.
Grethel: Oui oui je sais..
~hide("Hansel2")
~hide("Grethel")
~show("Hansel")
~show("Majordome")
Majordome: Alors, vous avez pris votre décision ?
Hansel: En avant ->Hall_Casino

-(Soeur)
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Grethel: Hans, tu veux vraiment y aller ?
Hansel: Bien sûr, l'occasion est trop belle, pas toi ?
Grethel: Je sais pas, j'ai une sensation bizarre, un mauvais pressentiment...
Hansel: je te comprends mais on a vraiment besoin de s'en sortir et là je vois pas d'autres solutions
Grethel: Je sais je sais mais promets moi que tu seras sur tes gardes peu importe ce qui arrive
Hansel:  D'accord sœurette j'ouvrirai l'œil ->Hall_Casino



/*Hansel et grethel découvre l'endroit (contemplation avec possibilité de regarder les objets autour de nous)
Le majordome arrive ensuite et se présente à H et G, leur explique le lieu de manière avenante, qui il est etc (façade)
H/G expliquent ensuite leur situation
le majordome emphatique leur propose de s'interlink dans son casino dont il fait les louanges en expliquant qu'il est touché par leur histoire et est près à les aider.*/
FAIRE EN FONCTION DE LA VARIABLE DE HANSEL POUR LA FIN MID ET BAD MAIS EN FONCTION DE GRETHEL POUR LA FIN GOOD
CAD STAT CHECK: DIRE SI HANSEL A 8 ALORS GO CHECK VAR GRETH POUR SAVOIR DANS QUEL FIN ALLER SINON SI 3 GRETH ALORS CHECK VAR HANS POUR SAVOIR SI FIN MID
===CheckVariablePourFin
{Hansel >= 10 && Grethel <=1:
->CurseurHansel
- else:
->hubMajordome
}
{Hansel >= 6 && Grethel >=2:
->CurseurMid
- else:
->hubMajordome
}
{Hansel <= 6 && Grethel >=3:
->CurseurGrethel
- else:
->hubMajordome
}



==Hall_Casino
~hide("Majordome")
~hide("Grethel")
~hide("Hansel")
~hide("Hansel2")

~show("Hansel2")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~show("Grethel")

H+G *air étonné*
~hide("Hansel2")
~show("Majordome")

Majordome: Bravo pour le test ! Ce n'était qu'une formalité évidemment, rien de très compliqué. 
Majordome: Le retour au casino est un peu déroutant au début, ne vous en faites pas... ça change de mon antre, n'est-ce pas ?

+{not scene_full}->fakeawnsers
- -(fakeawnsers)
* *Hansel: Wow, le contraste est flagrant. Vous ne mentiez en parlant de votre prestigieuse institution.
~show("Hansel")
Majordome: Pourquoi l'aurais-je fait, vous êtes mes invités, c'est un plaisir pour moi de vous accueillir.
~hide("Hansel")
->fakeawnsers
* *Grethel: C'est... impressionnant *elle se rapproche de Hansel
~show("Grethel")
Majordome: Effectivement, mes visiteurs sont souvent ébahis en arrivant. J'en suis plutôt fier d'ailleurs, ça veut dire que mon casino fait une bonne première impression.
~hide("Grethel")
->fakeawnsers 
* *(scene_full)->suite
-(suite)
~show("Hansel")
Majordome: Comme vous pouvez le constater, nous nous trouvons à l'entrée. 
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
Hansel: On peut rester autant qu'on veut ?
Majordome: Evidemment, jouez autant que vous le souhaitez, si vous avez la moindre question je reste à votre disposition.
Hansel: Parfait, alors allons jouer.
Grethel: Vas-y joues, moi je vais essayer d'en apprendre plus sur cet endroit.
->hubMajordome

==hubMajordome
{etreAlleVoirUnCroupier:
Majordome: {~Vous revoila, j'espère que tout ce passe bien. De quelle table venez-vous ?|Alors, vous vous amusez ? J'espère que tout ce déroule comme vous le souhaitez|Déjà de retour, vous avez l'air en veine !}
}
/*Le majordome présente la salle de jeu et les récompenses possible, hansel et grethel sont enjoué à l'idée de pouvoir, il présente les différentes salle et propose à H/G de commencer à jouer.*/
//*[G- Parler]
*[Question de H/G] ->Gquestion

+[CroupierCarreaux]->CroupierCarreaux 

+[CroupierCoeur]->CroupierCoeur

+[CroupierTrefle]->CroupierTrefle

-(Gquestion)

~hide("Hansel")
~show("Grethel")
Grethel: Une question me turlupine, tout à l'heure vous nous avez dit qu'il n'y avait pas de contrepartie aux jeux. Mais alors, comment fonctionne le casino ?

Majordome: Excellente remarque de votre part mademoiselle. Le casino tourne sur les fonds d'investissement de grandes entreprises, telles que Bargeld et Endlos Netz. Malheureusement à cause de la crise économique, nous avons dû fermer une partie des jeux à disposition.->hubMajordome
-


{~curseur = 0 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurGrethel

{~curseur = 2 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurHansel

{~curseur = 1 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurMid






==CroupierCarreaux
<<<<<<< HEAD
//Roulette
=======
~etreAlleVoirUnCroupier = true
>>>>>>> 9207f2058a813e4c49beb646d0cb87d4e89ca4da
~hide("Majordome")
~show("Carreau")
~show("Hansel")
{DejaVenuCroupierCarreau:
C'est encore vous, asseyez vous et jouons.
}
{not DejaVenuCroupierCarreau:
Carreau: ...*

~hide("Hansel")
~show("Grethel")
Hansel: euh bonjour ?
Carreau: Oups, excusez moi j'étais perdu dans mes pensées, faut croire qu'on ne voit pas souvent du monde par ici..

Grethel:  Ah bon? je croyais que le casino était populaire dans le milieu.

Carreau: Populaire ? qui vous a dit ça ?

~hide("Grethel")
~show("Hansel")
Hansel: Votre collègue à l'entrée

Carreau: ça ne m'étonne pas de lui. Enfin bref j'imagine que vous êtes ici pour jouer, non ?

Hansel: Evidemment, je suis bouillant ! C'est quoi les règles ?

Carreau: Oh et bien le jeu n'est pas très compliqué, il s'agit de miser sur un élément de la roue, cela peut être la couleur, Pair ou impair ou bien la case verte et si la bille atterrit sur la bonne case vous remportez la mise.

~hide("Hansel")
~show("Grethel")
Grethel:  Donc c'est uniquement de la chance..

Carreau: Et bien oui, ici c'est un casino après tout.

~hide("Grethel")
~show("Hansel")
Hansel: C'est parfait je me sens particulièrement chanceux en ce moment.

~hide("Hansel")
~show("Grethel")
Grethel:  J'aurais pas dis ça.

Carreau: Alors, vous jouez ?

~DejaVenuCroupierCarreau = true
->jouer
}
===jouer
Jouez mes couilles
//Fonction jouer jsp débrouille-toi
->HubCC

===HubCC
J'espère que vous vous amusez bien, dites moi s'il vous faut quoi que se soit, je serais heureux de vous aider.
+[Demander à rejouer]->jouer
+[Interroger]->Conversation1



===Conversation1
*[age]->age
*[d'ou il vient]->plat
+[HUB]->CheckVariablePourFin
{DéblocageInfoCroupierCoeur < 2:
*[Poser une autre question]->InfoCroupierCoeur
}
{DéblocageInfoMajordome:
*[lui parler d'ou il vient]->InfoMajordome 
}

{DéblocageInfoCroupierCoeur >= 2:
*[Poser une autre question]->InfoCroupierCoeur
}

-(plat)
~hide("Hansel")
~show("Grethel")
Grethel:  Et vous êtes né ici ?

Carreau : Malheureusement oui, comme beaucoup de gens.

~hide("Grethel")
~show("Hansel")
Hansel: Vous aimez vraiment pas cette ville j'ai l'impression.

Carreau: Qui peut bien aimer ? Naître ici ça revient à jouer à pile ou face dès la naissance soit on grandit dans la haute ville soit on étouffe ici dans les quartiers bas.

~hide("Hansel")
~show("Grethel")
Grethel:  oui... faut croire que notre pièce est mal tombée.
~DéblocageInfoCroupierCoeur += 1
->Conversation1
-

-(age)
~hide("Hansel")
~show("Grethel")
Grethel:  Je peux vous poser une simple question ?

Carreau: Allez-y.

Grethel:  Vous avez quel âge ?

Carreau: Oh, ce genre de questions là... et bien j'approche du demi-siècle on va dire.

Grethel: Vraiment ?? Mais vous faites bien plus jeune !

~hide("Grethel")
~show("Hansel")
Hansel: Le chrome a fait du bon boulot, on vous aurait pas rafistolé ?

Carreau: Il y a des choses qu'on ne peut échapper dans la vie mais je n'ai pas envie d'en parler

~DéblocageInfoCroupierCoeur += 1
->Conversation1
-

-(origine)
blabla
~DéblocageInfoCroupierCoeur += 1
->Conversation1

===InfoMajordome
*[Évoquer son passé au sein de la milice corpo durant la guerre.]->badChoiceCarr
*[Lui demander comment il connait le croupier trèfle.]->goodChoiceCarr

-(badChoiceCarr)

Grethel: Il paraît que vous étiez dans la milice Corpo pendant la guerre ?

Carreau: Comment vous savez ? C'est encore trèfle qui sait pas tenir sa langue j'imagine..

Grethel:  Peut-être, j'étais curieuse de savoir comment un ancien pilote de "Cuirasser Fantôme" aussi réputé que vous avez pu atterrir ici.

Carreau: Ecoutez y a rien à savoir, ce qu'il s'est passé là-bas c'est du passé et j'ai aucune envie d'en parler, la Guerre ça n'a rien de glorieux c'est tout ce que je peux dire. Evitons les questions trop personnels et concentrons nous sur le jeu.
->Conversation1
-

-(goodChoiceCarr)
~hide("Hansel")
~show("Grethel")
Grethel:Apparemment vous connaissez le croupier Trèfle ?

Carreau: Ce jeune là ? Oui, pourquoi ?
Hansel: Il nous a dit que vous étiez arrivé ici le premier c'est vrai ?
Carreau: Le premier, j'en doute il y en a eu quelques uns avant moi

Grethel:  Vous avez beaucoup voyagé auparavant non ?

Carreau: En effet j'ai eu cette chance là mais pourquoi ces questions ?

Grethel:  On en a jamais eu l'occasion nous... et je suis pas sûr qu'on en ai une un jour.

Carreau: Je comprends, écoutez mon voyage en Asie est celui qui m'a le plus marqué si ça vous intéresse autant.
~hide("Grethel")
~show("Hansel")
Hansel: L'Asie ? Toute l'Asie ?
Carreau: A peu près partout oui, je suis parti plus d'un an, à cette époque on voyageait plus facilement donc j'ai eu tout le temps qu'il me fallait et autant vous dire que j'y serais bien resté. C'est un tel dépaysement et la nourriture ,que dire, je crois que c'est ce qui me manque le plus au monde.

~hide("Hansel")
~show("Grethel")
Grethel:  Vous en parlez avec tellement de passion alors pourquoi ne pas y retourner ?

Carreau: C'est une histoire plus compliqué qu'elle n'en a l'air, je cherchais avant tout a m'évader et me sortir d'une période sombre que je venais de traverser.

Grethel:  Vous... voulez en parler ?

Carreau: Absolument pas mais c'est gentil de vous être intéressé à moi, je me suis remémoré de bons souvenirs grâce à vous.

Grethel:  Pas de soucis, je me pose des questions sur cet endroit donc j'essaye d'échanger le plus avec vous et vos collègues.

Carreau: Bon écoutez.., le Majordome, je le connais depuis l'époque du Kristallkugel Palace, il s'appelle Herz, c'est un androïde autonome. A la fermeture du Palace il s'est retrouvé comme nous à la rue et nous nous sommes perdus de vue pendant plusieurs années. Puis il y a quelques mois j'ai vu une annonce de job de croupier pour un soi-disant casino, et évidemment qui ai-je retrouvé en allant voir sur place ? Ce bon vieux Herz, autoproclamé "Majordome", je n'ai sûrement pas fais attention à ce moment là mais il parlait et se comportait différemment du Herz que je connaissais, j'ai néanmoins accepté de travailler pour lui étant ma seule option...

Grethel:  Donc vous pensez que c'est toujours le même Herz ?

Carreau: C'est dur à dire mais je m'en méfierai quand même, après tout ces androïdes sont crées pour être les plus attractifs possible, c'est facile pour eux d'amadouer des joueurs.

Grethel:  Oui on a vu ça, on fera attention en sa présence merci pour l'info.
->Conversation1



===InfoCroupierCoeur
~InfoCroupierCCO = true
~hide("Hansel")
~show("Grethel")
Grethel:  Et sinon vous connaissez bien vos autres collègues ?

Carreau: Je connais les deux mais Trèfle et moi on se parle plus trop, surtout qu'avec le temps on a plus grand chose à se dire.

Grethel:  Alors vous savez des choses sur Cœur ?

Carreau: Assez peu mais récemment on a eu l'occasion de bien parler, elle est assez troublé à cause de son défunt mari donc j'évite de lui en parler vu l'état dans laquelle ça la met. Les seules fois où je l'ai vu sourire c'était quand on parlait de son ancien groupe de musique, par contre le nom je m'en souviens pas, c'est un truc du genre Syne Vierga ou dans ce style.

Grethel:  SYNTHEX VIRGA ? Le Synthex Virga ??? Mais j'écoute encore leurs chansons en boucle sur mon radiolink !

Carreau: Et bien elle sera sûrement ravie d'avoir une fan avec qui parler.
~hide("Carreau")
->HubCC

JEU



->Hall_Casino



==CroupierCoeur
<<<<<<< HEAD
//Memory
=======
~etreAlleVoirUnCroupier = true
>>>>>>> 9207f2058a813e4c49beb646d0cb87d4e89ca4da
~show("Coeur")
~show("Hansel")
Coeur: Bienvenue, bienvenue, asseyez-vous.
Coeur: Vous êtes la pour jouer c'est ça ?
+[H-Oui]->Oui
+[G-Non]->Non
-(Non)
Coeur: Allons allons pourquoi êtes vous ici alors *bruit de carte qui se distribue* ->suite3
-
-(Oui)
Coeur: Alors jouons *bruit de carte qui se distribue*->suite3
-
-(suite3)

Grethel:  à H-Elle a l'air speed dis donc.

Hansel: à G- C'est clair.
Coeur: Ici vous jouerez au memory, 
Coeur: le jeu est simple, 
Coeur: il vous faut constituez des paires de cartes, 
Coeur: vous retournez deux cartes, si les elles sont identiques alors vous les laissez faces retournées,
Coeur: ...
Coeur: ...
Coeur: sinon vous les retournées face cachée. L'objectif est de trouver toutes les paires, (en sachant que toute les cartes s'y trouve par paire.)

Grethel: Ca va ? Vous avez l'air d'avoir eu une absence.

Coeur: Excusez-moi, ce sont des souvenirs qui ressurgissent. Vous êtes près pour le jeu ? (Si vous avez besoin que je vous réexplique les règle pendant la partie il vous suffira de cliquer sur le "?".)
->jouer2

===jouer2
Jouez mes couilles
//Fonction jouer jsp débrouille-toi
->HubCC0

===HubCC0
Coeur: J'espère que vous vous amusez bien, dites moi s'il vous faut quoi que se soit, je serais heureux de vous aider
+[Demander à rejouer]->jouer
+[Interroger]->Conversation2

===Conversation2
*[Complimenter sa maîtrise des cartes]->cartes
*[Demander pourquoi elle est si speed]->speed
+[HUB]->CheckVariablePourFin
{DéblocageInfoCroupierTrèfle >= 2:
*[Demander comment se passe le travail avec ses collègues]->InfoCroupiertrefle
}
{DéblocageInfoCroupierTrèfle < 2:
*[La croupière fredonne un air]->musique
}
{DéblocageInfoMajordomeCCO:
*[lui parler d'ou il vient]->InfoMajordome 
}


===musique
La croupière fredonne un air*

Grethel: J'ai l'impression d'avoir déjà entendu cet air, vous aimez la musique ?

Coeur: Oui elle rythme ma vie. Dès que j'en ai la possibilité j'attrape mes Sybopod pour vibrer.

Grethel: Je suis une grande fan du groupe "Synthex Virga", peut-être que vous connaissez ?

Coeur: Evidemment.

Grethel:  J'aimerais vraiment voir les visages derrière leurs masques, dommage que le groupe se soit séparé.

Coeur: Ouais, j'ai entendu dire qu'il y avait des conflits internes entre les musiciens.

Grethel:C'était les rumeurs oui, personnellement je pense qu'il y a eu plus que ça. Le groupe était à son apogée, même certains groupe comme les Beatles ont réussi à rester formé alors qu'il y avait de fortes tension entre les musiciens.

Coeur: Vous savez certaines personnes choisissent parfois de finir sur une note positive pour ne pas avoir de regrets plus tard, c'était peut-être leur cas.

Grethel: Alors pourquoi leur séparation avait un arrière goût amer, leur bassiste a disparu sans dire un mot.

Coeur: ...
Coeur: Ca ne nous regarde pas si vous voulez mon avis. Ils restent tous des humains, on ne pourra jamais comprendre leur décision à moins d'être à leur place.

Hansel: On peut rejouer ou pas... je meurs d'envie de retenter ma chance !
->Conversation2

===cartes
~hide("Hansel")
~show("Grethel")
Grethel: On voit que vous maîtrisez les cartes, j'imagine que ça demande une certaine expertise ?

~hide("Grethel")
~show("Hansel")
Hansel: Ca veut dire qu'on va pouvoir jouer plus rapidement *clin d'oeil*(pas coquin par pitié)
Coeur: On peut dire ça oui, ça fait quelque temps que je suis là.
~hide("Hansel")
~show("Grethel")
Grethel: J'imagine oui, vous sauriez dire depuis combien de temps ?

Coeur: Depuis 2 ans à peu près, si on s'investit, on progresse plutôt rapidement dans le métier.
~hide("Grethel")
~show("Hansel")
Hansel: On rejoue ! Je veux assister à une nouvelle démonstration de vos talents.
*[Oui]
*[Non]

-(Oui)
Coeur: -Avec plaisir, n'hésitez pas si vous avez besoin de reprendre les règles.
->jouer

-(Non)
~hide("Hansel")
~show("Grethel")
Grethel:  Attends Hans, on peut discuter un peu avant de rejouer, non ?
->Conversation2

===speed
~hide("Hansel")
~show("Grethel")
Grethel: Vous êtes super speed, il y a une raison particulière ?

Coeur: Pas vraiment j'aime me concentrer sur mon travail et rester active.

Grethel: Vous aimez ce que vous faites ?

Coeur: Je pense que oui, j'utilise surtout ce métier pour m'échapper d'évènements passés.

Grethel: (dans la tête) c'est peut-être pour ça qu'elle ne prend plus le temps...
->Conversation2


===InfoCroupiertrefle
~InfoCroupierT = true
~hide("Hansel")
~show("Grethel")
Grethel: Vous ne travaillez pas toute seule ici il me semble, l'ambiance est bonne ?

Coeur: Oui on peut dire ça, je suis plus proche du croupier trèfle que du carreau, mais on s'entend plutôt bien tous les trois.

Grethel: Qu'est-ce que vous entendez par plus proche du trèfle ?

Coeur: On partage tous les deux de vieilles cicatrices.

Grethel: Oui j'avais cru comprendre dans notre conversation.

Coeur: Il a eu de gros problèmes d'addictions plus jeune. C'est comme ça qu'il a atterrit ici. A force de jouer il avec le majordome, ce dernier lui proposa un travail dans le casino pour qu'il puisse se reconstruire. Mais tout ça lui pèse encore beaucoup, il évite tout le temps le sujet quand on parle d'addiction, ça lui fait vraiment mal de voir les gens sombrer dans l'addiction en venant ici. De plus il a perdu la garde de ses enfants suite à son addiction, il espère de tout coeur pouvoir les revoir un jour.

Grethel: Nous aussi nous espérons pouvoir revoir notre père. Notre belle-mère nous a mit à la porte en nous disant de ne jamais revenir....

Coeur: J'espère de tout coeur que vous trouverez une solution, l'amour d'un parent n'est pas quelque chose de remplaçable.

Grethel: H et G- Merci.
Grethel: On l'espère nous aussi.
->HubCC0

===InfoMajordomeviaCCO
*[Demander si elle était bien la chanteuse du groupe Synthex Virga]->goodChoicecoeur
*[Demander comment était le groupe de musique avec son mari]->badChoicecoeur

-(goodChoicecoeur)

~hide("Hansel")
~show("Grethel")
Grethel: Le croupier Carreau nous a dit que vous étiez la chanteuse du groupe Synthex Virga, c'est incroyable ! Je suis fan de votre groupe.

Coeur: C'est vrai, c'était une époque magnifique, on était libre, passionnés et populaire.

Grethel: Mais... 
Grethel: Pourquoi mettre fin au groupe tout se passait si bien ?
Grethel: Un album était annoncé, la dynamique semblait bonne du point de vu des fans... Alors pourquoi ?

Coeur: ...

Grethel: Que ce passe-t-il?

Coeur: C'est compliqué.

Grethel: Comment ça ?

Coeur: Tout est lien avec mon mari... et ce maudit accident.

Grethel: Je comprends, ne vous sentez pas obligée d'en parler.

Coeur: Non, ça va. C'est juste...
 
Coeur:Avec le travail j'arrive à me distraire mais même si ça fait déjà 2 ans et demi...
Cet événement reste ancré en moi. C'est Bargeld et Endlos Netz qui ont caché l'accident.
Coeur: C'était pendant une représentation durant un de leurs concerts privé soi-disant caritatifs. Il était contre l'idée de supporter ces corpos, mais l'appât du gain était bien trop grand.
Coeur: Ses mots ont dû s'ébruiter et....

Grethel: Alors c'est pour ça, qu'il n'y a eu qu'une annonce de séparation du groupe ? Les gens suspectaient déjà quelque chose à l'époque.

Coeur: D'ailleurs, il me semble qu'avec la crise, ce casino aurait dû fermer comme tout les autres. C'est étrange qu'il soit encore fonctionnel. Mais pas un mot au majordome ou vous risquez gros.

Grethel: C'est si compromettant que ça ?

Coeur: Oui et en plus de vous attirer des problèmes, je risque d'en pâtir aussi.

Grethel: Okay, on fera gaffe.
->Conversation2

-(badChoicecoeur)

Grethel:J'ai entendu dire que, jadis, vous aviez un groupe de musique avec votre mari.

Coeur: C'est le croupier carreau qui vous a dit ça ? Pourtant, il a sûrement dû aussi vous dire d'éviter le sujet. C'est encore douloureux et ça le sera sûrement toujours. Merci de ne pas me reposer de question là-dessus.
Grethel: Excusez-nous,
Grethel: ....
Coeur: Revenons au jeu voulez-vous.
->Conversation2


==CroupierTrefle
<<<<<<< HEAD
//Blackjack
=======
~etreAlleVoirUnCroupier = true
~show("Trefle")
~hide("Grethel")
~show("Hansel")
Hansel: Alors on joue à quoi ici ?

Trefle: Moi je m'occupe du Blackjack, un jeu de cartes qui remontent à l'époque du Far-West

Hansel: Ah mais je connais ce jeu, je l'ai vu dans les vieux films que notre père adore, par contre je veux bien qu'on me réexplique les règles.

Trefle: Bien sûr, le but c'est de me battre en obtenant un nombre supérieur au mien sans jamais dépassé 21. 
Trefle: Chaque carte numérotée vaut sa valeur, les figures valent 10, et l’as vaut 1 ou 11 selon ce qui avantage le joueur. Au début, chacun reçoit deux cartes. 
Trefle: Le joueur peut ensuite "tirer" (prendre une carte) ou "rester". 
Trefle: Le croupier doit tirer jusqu’à atteindre au moins 17. Si un joueur dépasse 21, il perd automatiquement.
Trefle: Voilà tout ce qu'il faut savoir, vous êtes partant pour une partie ?

Hansel: On est là pour ça de toute façon alors go !->Jouertrefle

===Jouertrefle
jouer mon copain ->Hubtrefle

===Hubtrefle
Trefle: Tout se passe bien pour vous ? Si vous voulez rejouer faites moi signe.

+[Demander à rejouer]->jouer
+[Interroger]->Conversationtrefle

===Conversationtrefle
*[Demander pourquoi il est le croupier trèfle]->pourquoitrefle
*[Lui parler du blackjack]->blackjack
+[HUB]->CheckVariablePourFin
{DéblocageInfoCroupierCarreau >= 2:
*[Demander comment se passe le travail avec ses collègues]->InfoCroupiercarreau
}
{DéblocageInfoCroupierCarreau < 2:
*[lastQuestionAFaireTrefle]->lastquestion
}
{DéblocageInfoMajordometrefle:
*[lui parler d'ou il vient]->InfoMajordometrefle 
}

===pourquoitrefle
Grethel: Vous êtes le croupier trèfle c'est ça ?
Trefle: Oui c'est bien ça.
Grethel: Et, sans vouloir être indiscrète pourquoi est-ce que c'est ce symbole qui vous a été attribuée ?
Trefle: Chaque symbole a une signification, le mien fait référence à une situation inchangé et continue, que cette dernière soit positif ou négatif, je vous laisse interpréter ça à votre manière.
Grethel: ....
Hansel: Alors vous....
Grethel: Il vaut mieux qu'on passe à autre chose.
->Conversationtrefle

===blackjack
~hide("Grethel")
~show("Hansel")
Hansel: C'est super connu le blackjack, il y a une technique pour gagner ?
Trefle: Ahah, c'est effectivement très populaire et ce depuis des siècles. Malheureusement en tant que croupier je suis dans l'impossibilité de vous révéler quoique ce soit sur les stratagèmes.
Hansel: Pourquoi ça ?
Trefle: Ça me parait évident, meilleur vous êtes plus vos chances de gagner sont élevées et donc de nous faire perdre, moi et le casino.
~hide("Hansel")
~show("Grethel")
Grethel: Effectivement, vu comme ça, ça fait sens.
->Conversationtrefle

===lastquestion

->Conversationtrefle


===InfoCroupiercarreau
~hide("Hansel")
~show("Grethel")
Grethel: Par hasard, vous auriez des infos sur le croupier carreau ?
Grethel: Il m'intrigue, j'aimerez bien parler avec lui et apparemment vous le connaissez.
Trefle: Ce bon vieux Carreau, oh oui je le connais.
Il était déjà là quand je suis arrivé, on a eu l'occasion de discuter un bon nombre de fois.
Grethel: Il y a des sujets qui l'intéresse particulièrement ?
Trefle: Alors ça oui, notamment ses nombreux voyages, quand il en parle il a des étoiles pleins les yeux.
Faut croire que ça lui remémore des bons souvenirs Contrairement à son passage dans l'armée corporative...
Grethel: Il a fait la guerre corpo ?
Trefle: Oui, à chaque fois que j'essayais d'échanger sur ce sujet il m'envoyait valser et la discussion s'arrêtait net mais j'ai quand même appris son rôle.
C'était un pilote de "Cuirasser Fantôme" et pas des moindre, il a dirigé l'unité Zero pendant un temps.
~hide("Grethel")
~show("Hansel")
Hansel: Vraiment ?!
Hansel: Mais ce sont des légendes ces soldats !
Hansel: Il y a même eu un film sur eux ?
~hide("Hansel")
~show("Grethel")
Grethel: Oui ! Ça me dit quelque chose on a dû le voir avec papa...
Grethel: En tout cas merci pour les infos.
Grethel: On va sûrement aller lui parler après.
Trefle: Derien mais n'oubliez pas que je suis là pour vous faire jouer aussi.
->Conversationtrefle    





===InfoMajordometrefle
*[Lui demander pourquoi un ancien joueur compulsif à pu attérir ici]->badchoicetrefle
*[Evoquer ses enfants]->goodchoicetrefle

-(badchoicetrefle)
Grethel: Comment se fait-il qu'un ancien addict aux jeux se soit retrouvé en tant que croupier dans un casino ? C'est pas un peu risqué ?
Trefle: Vous insinuez quoi par là ?
Que je ne suis pas apte à faire ce travail ?
Grethel: Non loin de moi cette idée mais...
Trefle: Parce que justement, étant connaisseur je suis parfaitement à ma place et je fais du bon travail depuis que je suis là.
Alors évitons ce genre de questions et concentrons nous sur le jeu si vous voulez bien.
->Conversationtrefle
-

-(goodchoicetrefle)
~hide("Hansel")
~show("Grethel")
Grethel: On peut vous parler deux minutes ?
Trefle: Oui, enfin ça dépend du sujet.
Grethel: Cœur nous a évoqué votre histoire, notamment celle de vos enfants...
Trefle: D'accord, si vous y tenez, c'est vrai que j'y penses plus trop en ce moment.
Grethel: Ils s'appellent comment vos petits ?
Trefle: Sofia et Gustav...
~hide("Grethel")
~show("Hansel")
Hansel: Bon choix de prénoms.
Trefle: Merci, c'était le choix de mon épouse.
~hide("Hansel")
~show("Grethel")
Grethel: Et quel âge ont ils ?
Trefle : Ma fille doit avoir à peu près ton âge, quant à mon fils et bien... il devrait avoir 13 ans cette année.
Grethel: Mais vous n'avez plus de nouvelles d'eux ?
Trefle: En fait ils sont partis avec ma femme… enfin ex-femme.
~hide("Grethel")
~show("Hansel")
Hansel: Ouais ça doit compliquer les choses.
~hide("Hansel")
~show("Grethel")
Grethel: Vous avez pu les contacter ? Ne serait-ce que par VisioLink ? Au moins vous auriez des infos.
Trefle: J'ai bien essayé croyez moi, mais elle a coupé tous les ponts avant de partir avec eux. Je sais même pas si ils sont encore en ville.
Grethel: Ça doit pas être facile pour vous j'en suis désolée... mais vous bossiez déjà ici avant votre rupture ?
Trefle: Non justement, tout est parti en vrille depuis ce jour-là, je me suis retrouvé au plus bas dans ma vie. Je comblais le vide en buvant et en jouant, je vivais la nuit et dormais le jour, incapable de faire autre chose.
Grethel: Attendez, vous veniez jouer ici avant d'y travailler ?
Trefle: Non je passais de casino miteux en casino miteux, en pensant que je trouverais celui qui me rendra riche. Bien sûr c'est jamais arrivé.
~hide("Grethel")
~show("Hansel")
Hansel: Mais vous connaissiez le 'Hexe Hölle' ?
Trefle: Personne ne connaît cet endroit, c'est ce qui m'a marqué en discutant avec les joueurs précédents.
Tous ont atterri ici par hasard.
J'imagine que vous aussi vous avez suivi ces néons pour atterrir ici ?
Grethel: Mhh oui... vous aussi ??
Trefle: Comme tout le monde j'ai l'impression.
Grethel: Okay bon c'est vraiment bizarre comme moyen d'attirer des joueurs.
Merci pour la conversation en tout cas et je vous souhaite de retrouver vos enfants, si c'est dur pour vous ça doit l'être aussi pour eux.
Trefle: Merci pour ces mots et veillez bien l'un sur l'autre.
->Conversationtrefle

>>>>>>> 9207f2058a813e4c49beb646d0cb87d4e89ca4da


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