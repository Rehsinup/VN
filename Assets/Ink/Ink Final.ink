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

VAR DéblocageInfoMajordomeCarreau = false
VAR DéblocageInfoMajordomeCCO = false
VAR DéblocageInfoMajordometrefle = false


En l'an 2087, dans les bas-fonds de Neo-Berlin, 
deux jeunes ados n'ayant connu que l'amour inconditionnel de leur père se retrouvent dans l'impasse. 
Lorsque celui-ci tomba gravement malade, ils furent mis à la porte par leur détestable belle-mère.\
->Scene1
==Scene1 
HORS DE MA VUE !!! 
Ne cherchez pas à revenir ici, votre père est dans cette situation par votre faute. 
Vous ne le méritez pas !
->Ruelle

==Ruelle
/*Conversation entre Hansel et Grethel, pose la dynamique entre les deux
showbg ruelle On puis scene clef, on revient ensuite sur H et G dans la ruelle avec les neon on dans la ruelle, qui decident d'y aller.*/
Après quelques heures à errer sous la pluie, 
Hansel et Grethel désormais démunis se regardent dans le blanc des yeux, d'un air livide signe de leur désespoir.

~changeBg("Ruelle")
~show("Grethel")
~show("Hansel2")
Grethel: Mon frère comment allons nous faire, papa est mourant et nous ne pouvons plus rentrer chez nous.

Hansel2: Greth... 
Hansel2: Je comprends que tu sois triste et je le suis tout autant. 
Hansel2: Mais il ne faut pas qu'on se laisse abattre.
Grethel: Notre père Hans... 
Grethel: Je n'ai jamais eu confiance en notre belle-mère. 
Grethel: Je ne veux pas le laisser seul, j'ai peur.

Hansel2: Moi aussi Greth mais ne t'inquiète pas, j'ai toujours un plan pour sortir d'ici ! 
Hansel2: Mais ça risque de me prendre du temps, alors fais moi confiance sœurette.
Hansel2: En attendant on va devoir se débrouiller seuls... 
Hansel2: Et trouver de quoi manger, ainsi qu'un lieu où squatter.
Grethel: Tu sais que j'ai confiance en tes premiers instincts. 
*[Aller voir le distributeur]->Fouiller_la_ruelle
*[Demander le plan à Hansel]->Evoquer_les_plans
-(Fouiller_la_ruelle)

Hansel2: Tant qu'il est encore temps, essayons de recolter quelques choses qui pourrait nous aider à passer la nuit. 
Hansel2: Le mieux serait d'aller chacun de notre...

Grethel: NON,
Grethel: ...
Grethel: Restons ensemble. 
Grethel: Je ne veux pas qu'il t'arrive quoique ce soit, 
Grethel: Père est sur son lit de mort et la basse ville n'est pas recommendable. 
Grethel: J'aurai besoin de toi si il m'arrive quelque chose.
Hansel2: D'accord, avançons ensemble. Commençons par ce distributeur, tu penses pouvoir le hacker ?

Grethel: Mmmhh,

Hansel: Alors qu'est-ce ça donne ?

Grethel: Je crois qu'il est déconnecté.

Hansel2: Laisse-moi essayer de casser la vitre avec mon implant.

Grethel: Mais on risque de se faire repérer.

Hansel2: T'inquiète je sais ce que je fais.
SFX *CRACK* bruit de vitre qui se casse
Hansel2: Merde, c'est avarié... 

Grethel: Il n'y a rien d'autre ?

Hansel2: Non, rien de rien. Tout est pourri, on va devoir chercher ailleurs.
->Neon_ON

--(Evoquer_les_plans)
Hansel2: Je pense avoir un plan pour dormir ce soir, 
Hansel2: Mais il se trouve plus loin dans la ville. 
Grethel: Hans, tu sais que je ne me sens pas à l'aise dans les quartiers bondés de monde.

Hansel2: T'en fais pas Greth, c'est chez une bonne connaissance. 
Hansel2: Il m'a sauvé de plusieurs mauvaises aventures, même si il m'a entraîné dans d'autres.
Grethel: Max ?
Grethel: Celui qui t'as fait perdre ton bras ?

Hansel2: Oui, on a presque perdu la vie ce jour là... 
Hansel2: Mais il m'a sauvé et je lui dois beaucoup, il saura comment nous sortir de là.

Grethel: Ca sent le plan foireux mais c'est toujours mieux que rien je suppose.
~hide("Grethel")
~hide("Hansel2")
->Neon_ON


===Neon_ON
SFX *Zing (genre neon qui s'allume) et vfx light neon
~show("Grethel")
~show("Hansel2")
H+G-*air interloqué*

Grethel: Oula j'ai l'impression qu'on a trop trainé.

Hansel2: Oui il est déjà tard. On devrait pas trop tarder dans les ruelles.

Grethel: Si on suit les lumières peut-être qu'on sera plus en sécurité, non ? 
//faire choix obligatoire pour regarder les néons, émotion plisser les yeux puis h et g disent regarde on dirait que ça veut nous attirer

Grethel: Mais on dirait qu'elles veulent nous attirer quelque part.

Hansel2: C'est toi qui décide, ou allons nous ?


*[Se diriger vers le lieu]->repGreth
*[Dire a Hansel que c'est suspect]->repGreth
---(repGreth)
Grethel: Allons-y Hans, mais fais attention, dans la basse ville les apparences sont souvent trompeuses. 

Hansel2: Hum...Mais tu sais, c'est sûrement un nouveau commerce de nuit qui vient d'ouvrir, 
Hansel2: Je pense qu'on a pas besoin de s'inquiéter.

Grethel: Okay, désolé, c'est moi qui réfléchit trop. Peut-être que je me prends la tête pour rien.

Hansel2: Ne te tracasse pas Greth, chacun son truc, toi tu réfléchis et moi j'agis !

Grethel: Est-ce que tu peux prendre les devants une fois dans le bâtiment ?
Grethel: On sait tous les deux que tu t'en sortiras mieux.
Hansel2: Ouais pas de problème, allons-y.
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
~changeBg("Sous-sol")
~show("Grethel")
~show("Hansel2")
Hansel2: C'est pas du tout ce à quoi je m'attendais... 
Hansel2: L'endroit semblait plus attrayant de l'extérieur.

Grethel: C'est quoi cet endroit ? Il y a que du vieux matos.

Hansel2: Hum... je doute qu'on y trouve quoi que ce soit d'intéressant. 
Hansel2: Tout est poussiéreux et délabré, mais ça à l'air de fonctionner. 
Hansel2: Jetons quand même un coup d'oeil autour, on sait jamais sur quoi on peut tomber.

Grethel: Ouais ça tu l'as dis, j'ai l'impression d'être observé... 
Grethel: Dépêchons nous...

+{not scene_full}->description
- -(description)
* * [Déterminer d'où vient l'odeur] Grethel: Il y a une odeur de renfermé et de métal, ainsi qu'un souffle venant de la ventilation. ->description
* * [Regarder autour de soi]
Hansel2: Où est-ce qu'on a atterit ? C'est plein de babioles d'une autre époque. 
Hansel2: Le clavier de l'ordinateur est plein de poussière.

Grethel: Tout à l'air vieux, on dirait que le propriétaire n'a pas voulut se mettre à jour. ->description
* *(scene_full)->Objets
===Objets
* [S'approcher des différents objets]

Grethel: Fais attention en touchant les objets.

Hansel2: T'inquiète regarde c'est un holo diffuseur... qui date de 2063 !
Hansel2: C'est hyper vieux, pourquoi est ce que c'est là ?

Grethel: Oui c'est étrange, regarde cette boîte avec une sorte de fleur métallique. 
Grethel: Je me demande à quoi ça pouvait servir.
Grethel: Je ne sais pas, tout a l'air vieux, les sièges sont poussiéreux et même la ventilation peine à faire son travail.
Grethel: Regarde, il y a une sonnette sur le comptoir.
->arrivee_majordome


===arrivee_majordome
*[Utiliser la sonnette]
->suitemajordome
-(suitemajordome)
~hide("Hansel2")
~show("Majordome")
Majordome: Oh là, excusez-moi jeunes gens !
Majordome: Je ne vous ai pas du tout entendu entrer.

~show("Hansel2")
~hide("Majordome")
~show("Grethel")
Hansel: Et nous on ne s'attendait pas à voir quelqu'un ici.

~hide("Hansel2")
~show("Majordome")
Majordome: Veuillez m'excuser si je vous ai fait peur, permettez moi de me présenter. 
Majordome: Je suis celui qu'on appelle "le Majordome", propriétaire du prestigieux "Hexe Holle".

~hide("Grethel")
~show("Hansel")
Hansel: Le Hexe Holle ? 
Hansel: Jamais entendu parler.
Hansel: Pourtant je connais la Basse-ville comme ma poche.

Majordome: Il n'y a pas de mal à cela, mon établissement est réservé aux amateurs de jeux que nous trions sur le volet.
Majordome: Nous ne cherchons pas à être connu de tous.

Hansel: De jeu ? Genre CyberBrawl ou NeuroMaze ?

Majordome: Non, je parle ici de jeux plus anciens, plus nobles que ceux de nos jours. 
Majordome: Pas de sang, pas de piratage, juste votre réflexion. 
Majordome: Et bien sûr une petite part de chance ! 
Majordome: Mais c'est ce qui rend chaque partie intéressante.

Hansel: Et on y gagne quoi ? Des métadonnées, des NeuMark ?

Majordome: Tout ce dont vous avez besoin peut être mis en jeu. Nous som-
Majordome: enfin je suis plein de ressources. 
Majordome: Et donc que recherchez vous jeunes gens ?

~hide("Hansel")
~show("Grethel")
Grethel: Le mieux serait du NeuMark. Mais le problème c'est qu'il pourrait être traçable. 
Grethel: Donc inutilisable dans beaucoup d'endroits.

~hide("Grethel")
~show("Hansel")
Hansel: Et les métadonnées ? On pourrait trouver des acheteurs non ? 
Hansel: Mon ami Vanz saura vers qui m'orienter...
Hansel: Si il est sorti de taule.

~hide("Hansel")
~show("Grethel")
Grethel: Hum, je suis sûr que je ferais du meilleur travail que ce lunatique de Vanz ! Laissons-le en dehors de ça.
~hide("Grethel")

~show("Hansel")
Majordome: Je vous laisse le temps de vous décider. En tout cas les portes de mon casino vous sont ouvertes. 
Majordome: Faites moi signe quand vous vous serez décidés.

Hansel: (dans sa tête) Mh Greth a pas l'air très enjouée. On dirait qu'elle a un mauvais préssentiment.
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
*[Rassurer Grethel]->Frere
*[Mettre en garde Hansel]->Soeur

-(Frere)
Hansel2: Bon on a l'occasion de se refaire une santé ici, moi et les jeux ça fait qu'un alors fais moi confiance. Tu es prête ?
Grethel: Si tu penses que c'est une bonne solution je suis avec toi.
Hansel2: Bien sûr et puis on a pas trop le choix là.
Grethel: Oui oui je sais..
~hide("Hansel2")
~hide("Grethel")
~show("Hansel")
~show("Majordome")
Majordome: Alors, vous avez pris votre décision ?
Hansel2: En avant ->Hall_Casino

-(Soeur)
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Grethel: Hans, tu veux vraiment y aller ?
Hansel2: Bien sûr, l'occasion est trop belle, pas toi ?
Grethel: Je sais pas, j'ai une sensation bizarre, un mauvais pressentiment...
Hansel2: je te comprends mais on a vraiment besoin de s'en sortir et là je vois pas d'autres solutions.
Grethel: Je sais je sais mais promets moi que tu seras sur tes gardes peu importe ce qui arrive.
Hansel2:  D'accord sœurette j'ouvrirai l'œil.
~show("Majordome")
~show("Hansel")
~hide("Grethel")
Majordome: Alors, vous avez pris votre décision ?
Hansel: En avant.->MiseEnGardeMajordome

===MiseEnGardeMajordome
~show("Majordome")
~hide("Hansel")
~show("Grethel")
Majordome: Comme vous l'avez surement remarqué le casino ne se situe pas ici.
Majordome: Tout se déroule dans une interface numérique.
Majordome: Il vous suffit de vous brancher au neurolink.
Grethel: D'accord mais c'est pas dangereux tout ça ?
Majordome: Absolument pas, nous fonctionnons comme ça depuis des années et nous n'avons jamais eu de problèmes.
~hide("Grethel")
~hide("Hansel")
Hansel: Allez Greth, on y va.
Majordome: Par contre comme vous êtes deux je vais avoir besoin de vous synchronyser via un petit test, rien de bien compliqué pour des jeunes comme vous.
Hansel: Par de problème, envoie le test. ->Hall_Casino

/*Hansel et grethel découvre l'endroit (contemplation avec possibilité de regarder les objets autour de nous)
Le majordome arrive ensuite et se présente à H et G, leur explique le lieu de manière avenante, qui il est etc (façade)
H/G expliquent ensuite leur situation
le majordome emphatique leur propose de s'interlink dans son casino dont il fait les louanges en expliquant qu'il est touché par leur histoire et est près à les aider.*/
//FAIRE EN FONCTION DE LA VARIABLE DE HANSEL POUR LA FIN MID ET BAD MAIS EN FONCTION DE GRETHEL POUR LA FIN GOOD
//CAD STAT CHECK: DIRE SI HANSEL A 8 ALORS GO CHECK VAR GRETH POUR SAVOIR DANS QUEL FIN ALLER SINON SI 3 GRETH ALORS CHECK VAR HANS POUR SAVOIR SI FIN MID
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
{Grethel >=3:
->CurseurGrethel
- else:
->hubMajordome
}



===Hall_Casino
~LoadScene("Puzzle 1")
~changeBg("Casino")
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
Majordome: Le retour au casino est un peu déroutant au début, ne vous en faites pas... 
Majordome: Ca change de mon antre, n'est-ce pas ?


~show("Hansel")
Hansel: Wow, le contraste est flagrant. Vous ne mentiez en parlant de votre prestigieuse institution.
Majordome: Pourquoi l'aurais-je fait, vous êtes mes invités, c'est un plaisir pour moi de vous accueillir.
~hide("Hansel")
~show("Grethel")
Grethel: C'est... impressionnant *elle se rapproche de Hansel*
Majordome: Effectivement, mes visiteurs sont souvent ébahis en arrivant. 
Majordome: J'en suis plutôt fier d'ailleurs, ça veut dire que mon casino fait une bonne première impression.
~hide("Grethel")

~show("Hansel")
Majordome: Comme vous pouvez le constater, nous nous trouvons à l'entrée. 
Majordome: C'est d'ici que vous pourrez accéder à nos différents jeux. 
Majordome: Malheureusement, je n'ai que 3 jeux à vous proposer aujourd'hui. 
Majordome: Les divers croupiers du casino expliqueront bien mieux que moi les jeux auxquels ils sont attribués. 
Majordome: Comme promis vous pourrez gagner des Neumark ou des métadonnées pour chaque manche remportée.
~show("Grethel")
~hide("Hansel")
Grethel: On aimerai des métadonnées si possible. 

Majordome: Très bien, ce sera des métadonnées pour notre binôme.->suite2

-
-(suite2)
~show("Hansel")
Hansel: On peut rester autant qu'on veut ?
Majordome: Evidemment, jouez autant que vous le souhaitez, si vous avez la moindre question je reste à votre disposition.
Hansel: Parfait, alors allons jouer.
~hide("Hansel")
~show("Grethel")
~show("Hansel2")
~hide("Majordome")
Grethel: Vas-y joues, moi je vais essayer d'en apprendre plus sur cet endroit.
->hubMajordome

==hubMajordome
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
{etreAlleVoirUnCroupier:
Majordome: {~Vous revoila, j'espère que tout ce passe bien. De quelle table venez-vous ?|Alors, vous vous amusez ? J'espère que tout ce déroule comme vous le souhaitez|Déjà de retour, vous avez l'air en veine !}
}
/*Le majordome présente la salle de jeu et les récompenses possible, hansel et grethel sont enjoué à l'idée de pouvoir, il présente les différentes salle et propose à H/G de commencer à jouer.*/
//*[G- Parler]
*[Question de H/G] ->Gquestion

*{InfoCroupierCarreau}[Poser des question sur le croupier Carreau]->MajordomeCarreau

*{InfoCroupierCCO}[Poser des question sur la croupière Coeur]->MajordomeCoeur

*{InfoCroupierT}[Poser des question sur la croupière Trefle]->MajordomeTrefle

+[Se diriger ver la table de la roulette]->CroupierCarreaux 

+[Se diriger vers la table du memory]->CroupierCoeur

+[Se diriger vers la table du Blackjack]->CroupierTrefle

-(Gquestion)

~hide("Hansel")
~show("Grethel")
Grethel: Et comment se passe les mises ? Nous n'avons pas un rond sur nous.
Majordome: Il n'y a pas de contrepartie, ici vous jouez pour gagner et seulement gagner vous ne pouvez pas perdre d'argent.
Grethel: Mais alors, comment fonctionne le casino ?

Majordome: Il tourne sur les fonds d'investissement de grandes entreprises, telles que Bargeld et Endlos Netz. 
Majordome: Malheureusement à cause de la crise économique, nous avons dû fermer une partie des jeux à disposition.->hubMajordome
-
-(MajordomeCarreau)
Grethel: Apparemment vous travailliez avec le croupier Carreau au Kristal Kugel avant sa fermeture, c'est un bon ami à vous ?
Majordome: Le croupier...
Majordome: Carreau ?
Majordome: ...
 Majordome: Ah oui, ahah ça remonte longtemps effectivement.
Majordome: Ca m'a surpris de le voir se présenter à mon bureau, nous n'étions pas vraiment ami à proprement parler, plus des collègues de travail. Mais ça m'a fait plaisir de voir une vieille connaissance.
Grethel: C'est pour ça que vous l'avez embauché alors ?
Majordome: Oui, je connais ses capacités de travail, l'avoir sous mon aile m'a permit de consolider mon casino.
Majordome: Mais assez parlé de ça, avez-vous gagné quelque chose pour le moment ?
*[Oui]->Oui
*[Non]->Non

-(Non)
Majordome: Eh bien c'est quand même ce pourquoi vous-êtes ici allez donc à une table et revenez quand ce sera fait.->hubMajordome
-

-(Oui)
Vous m'en voyez ravi, j'espère que les tables sont à votre goût et que mes employés veillent à tenir un comportement irréprochable.->hubMajordome
-

-(MajordomeCoeur)
Grethel: Vous saviez que la croupière cœur était la chanteuse du groupe Synthex Virga ?? 
Grethel: Comment est-elle arrivée ici ?
Majordome: Oui, c'est un honneur de l'avoir ici.
Majordome: Mais je ne peux pas vous révéler comment elle est arrivée ici, c'est un secret professionnel.
Majordome: J'espère néanmoins que tout s'est bien passé à sa table ?
Majordome: Si c'est le cas je vous invite à repartir sur une de nos table.->hubMajordome
-


-(MajordomeTrefle)


->hubMajordome
-


{~curseur = 0 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurGrethel

{~curseur = 2 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurHansel

{~curseur = 1 && CroupierCarreaux && CroupierCoeur && CroupierTrefle }->CurseurMid






==CroupierCarreaux
~etreAlleVoirUnCroupier = true
~hide("Majordome")
~show("Carreau")
~hide("Hansel")
~changeBg("Carreau")
{DejaVenuCroupierCarreau:
C'est encore vous, asseyez vous et jouons.
}
{not DejaVenuCroupierCarreau:
Carreau: ...

~hide("Hansel")
~show("Grethel")
Hansel: euh bonjour ?
Carreau: Oups, excusez moi j'étais perdu dans mes pensées, faut croire qu'on ne voit pas souvent du monde par ici..

Grethel:  Ah bon? je croyais que le casino était populaire dans le milieu.

Carreau: Populaire ? Qui vous a dit ça ?

~hide("Grethel")
~show("Hansel")
Hansel: Votre collègue à l'entrée.

Carreau: Ca ne m'étonne pas de lui. 
Carreau: Enfin bref j'imagine que vous êtes ici pour jouer, non ?

Hansel: Evidemment, je suis bouillant ! 
Hansel: C'est quoi les règles ?

Carreau: Oh et bien le jeu n'est pas très compliqué, 
Carreau: Il s'agit de miser sur un élément de la roue.
Carreau: Cela peut être la couleur, pair ou impair ou bien la case verte.
Carreau: Et si la bille atterrit sur la bonne case vous remportez la mise.

~hide("Hansel")
~show("Grethel")
Grethel:  Donc c'est uniquement de la chance...

Carreau: Et bien oui, ici c'est un casino après tout.

~hide("Grethel")
~show("Hansel")
Hansel: C'est parfait je me sens particulièrement chanceux en ce moment.

~hide("Hansel")
~show("Grethel")
Grethel:  J'aurais pas dis ça.

Carreau: Alors, vous jouez ?

~DejaVenuCroupierCarreau = true
->jouerCarr
}
===jouerCarr
~Hansel +=1
~LoadScene("VFXRoulette")
//Jouez mes couilles
//Fonction jouer jsp débrouille-toi
->HubCC

===HubCC
Carreau: Si la partie vous a plu n'hésitez pas à rejouer.
+[Demander à rejouer]->jouerCarr
+[Converser avec le croupier]->Conversation1



===Conversation1
Grethel: (dans sa tête) Il a de lourdes cicatrices sur le visages et des implants, il a surement vécu une vie pleine d'aventures. 
Grethel: (dans sa tête) Les implants de son avant bras n'ont pas l'air de venir d'Europe non plus.
*[Demander quel âge il a]->age
*[Demander si il est né dans ce pays]->plat
+[Retourner voir le Majordome]->CheckVariablePourFin
*{DéblocageInfoCroupierCoeur < 2}[origine]->origine

*{DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome 


*{DéblocageInfoCroupierCoeur >= 2}[Ambiance du caisno]->InfoCroupierCoeur


-(plat)
~hide("Hansel")
~show("Grethel")
Grethel:  Et vous êtes né ici ?

Carreau: Par ici vous voulez dire en Allemagne ?

Grethel: Oui.

Carreau : Malheureusement oui, comme beaucoup de gens.

~hide("Grethel")
~show("Hansel")
Hansel: Vous aimez vraiment pas cette ville j'ai l'impression.

Carreau: Qui peut bien aimer ? 
Carreau: Naître ici ça revient à jouer à pile ou face dès la naissance soit on grandit dans la haute ville soit on étouffe ici dans les quartiers bas.

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

Carreau: Ecoutez y a rien à savoir, ce qu'il s'est passé là-bas c'est du passé et j'ai aucune envie d'en parler.
Carreau: La Guerre ça n'a rien de glorieux c'est tout ce que je peux dire. 
Carreau: Evitons les questions trop personnels et concentrons nous sur le jeu.
->Conversation1
-

-(goodChoiceCarr)
~hide("Hansel")
~show("Grethel")
Grethel: Apparemment vous connaissez le croupier Trèfle ?

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
Carreau: A peu près partout oui, je suis parti plus d'un an.
Carreau: A cette époque on voyageait plus facilement donc j'ai eu tout le temps qu'il me fallait et autant vous dire que j'y serais bien resté. 
Carreau: C'est un tel dépaysement et la nourriture , que dire, je crois que c'est ce qui me manque le plus au monde.

~hide("Hansel")
~show("Grethel")
Grethel:  Vous en parlez avec tellement de passion alors pourquoi ne pas y retourner ?

Carreau: C'est une histoire plus compliqué qu'elle n'en a l'air, je cherchais avant tout a m'évader et me sortir d'une période sombre que je venais de traverser.

Grethel:  Vous... voulez en parler ?

Carreau: Absolument pas mais c'est gentil de vous être intéressé à moi, je me suis remémoré de bons souvenirs grâce à vous.

Grethel:  Pas de soucis, je me pose des questions sur cet endroit donc j'essaye d'échanger le plus avec vous et vos collègues.

Carreau: Bon écoutez.., le Majordome, je le connais depuis l'époque du Kristallkugel Palace, il s'appelle Herz, c'est un androïde autonome. 
Carreau: A la fermeture du Palace il s'est retrouvé comme nous à la rue et nous nous sommes perdus de vue pendant plusieurs années. 
Carreau: Puis il y a quelques mois j'ai vu une annonce de job de croupier pour un soi-disant casino, et évidemment qui ai-je retrouvé en allant voir sur place ? 
Carreau: Ce bon vieux Herz, autoproclamé "Majordome", je n'ai sûrement pas fais attention à ce moment là mais il parlait et se comportait différemment du Herz que je connaissais, 
Carreau: J'ai néanmoins accepté de travailler pour lui étant ma seule option...

Grethel:  Donc vous pensez que c'est toujours le même Herz ?

Carreau: C'est dur à dire mais je m'en méfierai quand même, après tout ces androïdes sont crées pour être les plus attractifs possible.
Carreau: C'est facile pour eux d'amadouer des joueurs.

Grethel:  Oui on a vu ça, on fera attention en sa présence merci pour l'info.
~Grethel +=1
~InfoCroupierCarreau = true
->Conversation1



===InfoCroupierCoeur
~DéblocageInfoMajordomeCCO = true
~hide("Hansel")
~show("Grethel")
Grethel:  Et sinon vous connaissez bien vos autres collègues ?

Carreau: Je connais les deux mais Trèfle et moi on se parle plus trop, surtout qu'avec le temps on a plus grand chose à se dire.

Grethel:  Alors vous savez des choses sur Cœur ?
Carreau: Assez peu mais récemment on a eu l'occasion de bien parler.
Carreau: Elle est assez troublé à cause de son défunt mari donc j'évite de lui en parler vu l'état dans laquelle ça la met. 
Carreau: Les seules fois où je l'ai vu sourire c'était quand on parlait de son ancien groupe de musique, par contre le nom je m'en souviens pas.
Carreau: Il me semble que c'est un truc du genre Syne Fierga ou dans ce style.

Grethel:  SYNTHEX VIRGA ? Le Synthex Virga ??? Mais j'écoute encore leurs chansons en boucle sur mon RadioLink !

Carreau: Et bien elle sera sûrement ravie d'avoir une fan avec qui parler.
~hide("Carreau")
->HubCC

JEU



->Hall_Casino



==CroupierCoeur
~etreAlleVoirUnCroupier = true
~hide("Majordome")
~show("Coeur")
~show("Grethel")
~changeBg("Coeur")
~hide("Hansel")
~hide("Hansel2")
Coeur: Bienvenue, bienvenue, asseyez-vous.
Coeur: Vous êtes la pour jouer c'est ça ?
+[H-Oui]->Oui
+[G-Non]->Non
-(Non)
Coeur: Allons allons pourquoi êtes vous ici alors *bruit de carte qui se distribue* ->suite3
-
-(Oui)
Coeur: Alors jouons *bruit de carte qui se distribue*\
->suite3
-
-(suite3)
~hide("Coeur")
~show("Hansel2")
Grethel: Elle a l'air speed dis donc.

Hansel: C'est clair.
~hide("Hansel2")
~show("Coeur")
Coeur: Ici vous jouerez au memory. 
Coeur: Le jeu est simple, 
Coeur: Il vous faut constituez des paires de cartes, 
Coeur: Vous retournez deux cartes, si les elles sont identiques alors vous les laissez faces retournées,
Coeur: ...
Coeur: ...
Coeur: Sinon vous les retournez face cachée. L'objectif est de trouver toutes les paires.

Grethel: Ca va ? Vous avez l'air d'avoir eu une absence.

Coeur: Excusez-moi, ça m'arrive de temps en temps. 
Coeur: Vous êtes prêt pour le jeu ? 
->jouerCCO

===jouerCCO
~Hansel +=1
~LoadScene("MemoryCards")
->HubCC0

===HubCC0
{! "Coeur: J'espère que vous vous amusez bien, dites moi s'il vous faut quoi que se soit, je serais heureux de vous aider"}
+[Demander à rejouer]->jouerCCO
+[Converser avec le croupier]->Conversation2

===Conversation2
*[Complimenter sa maîtrise des cartes]->cartes
*[Demander pourquoi elle est si rapide]->speed
+[Retourner voir le Majordome]->CheckVariablePourFin
*{DéblocageInfoCroupierTrèfle >= 2}[Demander comment se passe le travail avec ses collègues]->InfoCroupiertrefle

*{DéblocageInfoCroupierTrèfle < 2 && not DéblocageInfoMajordomeCCO}[La croupière fredonne un air]->musique

*{DéblocageInfoMajordomeCCO}[lui parler du groupe Synthex Virga]->InfoMajordome 



===musique
La croupière fredonne un air*

Grethel: J'ai l'impression d'avoir déjà entendu cet air, vous aimez la musique ?

Coeur: Oui elle rythme ma vie. Dès que j'en ai la possibilité j'attrape mon RadioLink.

Grethel: Je suis une grande fan du groupe "Synthex Virga", peut-être que vous connaissez ?

Coeur: Evidemment.

Grethel: J'aimerais vraiment voir les visages derrière leurs masques, dommage que le groupe se soit séparé.

Coeur: Ouais, j'ai entendu dire qu'il y avait des conflits internes entre les musiciens.

Grethel:C'était les rumeurs oui, personnellement je pense qu'il y a eu plus que ça. 
Grethel: Le groupe était à son apogée.
Grethel: Même certains groupe comme les Beatles ont réussi à rester formé alors qu'il y avait de fortes tension entre les musiciens.

Coeur: Vous savez certaines personnes choisissent parfois de finir sur une note positive pour ne pas avoir de regrets plus tard, c'était peut-être leur cas.

Grethel: Alors pourquoi leur séparation avait un arrière goût amer, leur bassiste a disparu sans dire un mot.

Coeur: ...
Coeur: Ca ne nous regarde pas si vous voulez mon avis. Ils restent tous des humains, on ne pourra jamais comprendre leur décision à moins d'être à leur place.

Hansel: On peut rejouer ou pas... 
Hansel: Je meurs d'envie de retenter ma chance !
~DéblocageInfoCroupierTrèfle +=1
->Conversation2

===cartes
~DéblocageInfoCroupierTrèfle +=1
~hide("Hansel")
~show("Grethel")
Grethel: On voit que vous maîtrisez les cartes, j'imagine que ça demande une certaine expertise ?

~hide("Grethel")
~show("Hansel")
Hansel: Ca veut dire qu'on va pouvoir jouer plus rapidement.
Coeur: On peut dire ça oui, ça fait quelque temps que je suis là.
~hide("Hansel")
~show("Grethel")
Grethel: J'imagine oui, vous sauriez dire depuis combien de temps ?

Coeur: Depuis 2 ans à peu près, si on s'investit, on progresse plutôt rapidement dans le métier.
~hide("Grethel")
~show("Hansel")
Hansel: On rejoue ! Je veux assister à une nouvelle démonstration de vos talents.
*[Oui]->Oui
*[Non]->Non

-(Oui)
Coeur: Avec plaisir, c'est reparti.
->jouerCCO

-(Non)
~hide("Hansel")
~show("Grethel")
Grethel:  Attends Hans, on peut discuter un peu avant de rejouer, non ?
->Conversation2

===speed
~hide("Hansel")
~show("Grethel")
Grethel: Vous êtes super rapide, il y a une raison particulière ?

Coeur: Pas vraiment j'aime me concentrer sur mon travail et rester active.

Grethel: Vous aimez ce que vous faites ?

Coeur: Je pense que oui, ça me permet de m'évader et d'oublier certaines choses.

Grethel: (dans la tête) C'est peut-être pour ça qu'elle est rapide...
~DéblocageInfoCroupierTrèfle +=1
->Conversation2


===InfoCroupiertrefle
~DéblocageInfoMajordometrefle = true
~hide("Hansel")
~show("Grethel")
Grethel: Vous ne travaillez pas toute seule ici il me semble, l'ambiance est bonne ?

Coeur: Oui on peut dire ça, je suis plus proche du croupier trèfle que du carreau, mais on s'entend plutôt bien tous les trois.

Grethel: Qu'est-ce que vous entendez par plus proche du trèfle ?

Coeur: On partage tous les deux de vieilles cicatrices.

Grethel: Oui j'avais cru comprendre dans notre conversation.

Coeur: Il a eu de gros problèmes d'addictions plus jeune. C'est comme ça qu'il a atterrit ici. 
Coeur: Mais tout ça lui pèse encore beaucoup, il évite tout le temps le sujet quand on parle d'addiction, 
Coeur: Ca lui fait vraiment mal de voir les gens sombrer dans l'addiction en venant ici. 
Coeur: Mais il me parle souvent de ses enfants dont il a perdu la garde, il espère de tout coeur pouvoir les revoir un jour.

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
Grethel: Le croupier Carreau nous a dit que vous étiez la chanteuse du groupe Synthex Virga ?!
Coeur: Ahah il ne sait pas tenir sa langue celui la.
Grethel: C'est incroyable ! Je suis fan de votre groupe !

Coeur: C'est vrai que c'était une époque magnifique, on était libre, passionnés et populaire.

Grethel: Mais... 
Grethel: Pourquoi mettre fin au groupe tout se passait si bien ?
Grethel: Un album était annoncé, la dynamique semblait bonne de mon point de vu, du point de vu des fans. 
Grethel: Alors pourquoi ?

Coeur: ...

Grethel: Que ce passe-t-il?

Coeur: C'est compliqué.

Grethel: Comment ça ?

Coeur: Tout est lien avec mon mari... et ce maudit accident.

Grethel: Je comprends, ne vous sentez pas obligée d'en parler.

Coeur: Non, ça va. C'est juste...
 
Coeur: Avec le travail j'arrive à me distraire mais même si ça fait déjà 2 ans et demi...
Coeur: Cet événement reste ancré en moi. C'est Bargeld et Endlos Netz qui ont caché l'accident.
Coeur: C'était pendant une représentation durant un de leurs concerts privé soi-disant caritatifs. 
Coeur: Il était contre l'idée de supporter ces corpos, mais l'appât du gain était bien trop grand.
Coeur: Ses mots ont dû s'ébruiter et....

Grethel: Alors c'est pour ça, qu'il n'y a eu qu'une annonce de séparation du groupe ? Les gens suspectaient déjà quelque chose à l'époque.

Coeur: D'ailleurs, il me semble qu'avec la crise, ce casino aurait dû fermer comme tout les autres. C'est étrange qu'il soit encore fonctionnel. 
Coeur: Mais pas un mot au majordome ou vous risquez gros.

Grethel: C'est si compromettant que ça ?

Coeur: Oui et en plus de vous attirer des problèmes, je risque d'en pâtir aussi.

Grethel: Okay, on fera gaffe.
~Grethel +=1
~InfoCroupierCCO = true
->Conversation2

-(badChoicecoeur)

Grethel:J'ai entendu dire que, jadis, vous aviez un groupe de musique avec votre mari.

Coeur: C'est le croupier carreau qui vous a dit ça ? Pourtant, il a sûrement dû aussi vous dire d'éviter le sujet. 
Coeur: C'est encore douloureux et ça le sera sûrement toujours. 
Coeur: Merci de ne pas me reposer de question là-dessus.
Grethel: Excusez-nous,
Grethel: ....
Coeur: Revenons au jeu voulez-vous.
->Conversation2


==CroupierTrefle
~etreAlleVoirUnCroupier = true
~show("Trefle")
~hide("Grethel")
~show("Hansel")
~hide("Majordome")
~changeBg("Trefle")
Hansel: Alors on joue à quoi ici ?

Trefle: Moi je m'occupe du Blackjack, un jeu de cartes qui remontent à l'époque du Far-West.

Hansel: Ah mais je connais ce jeu, je l'ai vu dans les vieux films que notre père adore.
Hansel: Par contre je veux bien qu'on me réexplique les règles.

Trefle: Bien sûr, le but c'est de me battre en obtenant un nombre supérieur au mien sans jamais dépasser 21. 
Trefle: Chaque carte numérotée vaut sa valeur et les figures valent 10.
Trefle: Au début, chacun de nous reçoit deux cartes. 
Trefle: Le joueur peut ensuite "tirer une carte" ou "rester". 
Trefle: Le croupier doit tirer jusqu’à atteindre au moins 17. Si un joueur dépasse 21, il perd automatiquement.
Trefle: Voilà tout ce qu'il faut savoir, vous êtes partant pour une partie ?

Hansel: On est là pour ça de toute façon alors go !->Jouertrefle

===Jouertrefle
~Hansel +=1
~LoadScene("Blackjack") 
->Hubtrefle

===Hubtrefle
Trefle: Tout se passe bien pour vous ? //1fois
Trefle: Si vous voulez rejouer faites moi signe.

+[Demander à rejouer]->Jouertrefle
+[Converser avec le croupier]->Conversationtrefle
+[Retourner voir le Majordome]->CheckVariablePourFin

===Conversationtrefle
+[Retourner voir le Majordome]->CheckVariablePourFin
*[Pourquoi "Trèfle"]->pourquoitrefle
*[Poser des questions sur le blackjack]->blackjack
*{DéblocageInfoCroupierCarreau >= 2}[Demander comment se passe le travail avec ses collègues]->InfoCroupiercarreau

*{DéblocageInfoMajordometrefle}[Evoquer son passé]->InfoMajordometrefle 


===pourquoitrefle
Grethel: Vous êtes le croupier trèfle c'est ça ?
Trefle: Oui c'est bien ça.
Grethel: Et, sans vouloir être indiscrète pourquoi est-ce que c'est ce symbole qui vous a été attribuée ?
Trefle: Chaque symbole a une signification.
Trefle: Le mien fait référence à une situation inchangée et continue. 
Trefle: Que cette dernière soit positif ou négatif, je vous laisse interpréter ça à votre manière.
Grethel: ....
~hide("Grethel")
~show("Hansel")
Hansel: Alors vous....
~hide("Hansel")
~show("Grethel")
Grethel: Il vaut mieux qu'on passe à autre chose.
~DéblocageInfoCroupierCarreau += 1
->Conversationtrefle

===blackjack
~hide("Grethel")
~show("Hansel")
Hansel: C'est super connu le blackjack, il y a une technique pour gagner ?
Trefle: Ahah, c'est effectivement très populaire et ce depuis des siècles. 
Trefle: Malheureusement en tant que croupier je suis dans l'impossibilité de vous révéler quoique ce soit sur les stratagèmes.
Hansel: Pourquoi ça ?
Trefle: Ça me parait évident, meilleur vous êtes plus vos chances de gagner sont élevées et donc de nous faire perdre, moi et le casino.
~hide("Hansel")
~show("Grethel")
Grethel: Effectivement, vu comme ça, ça fait sens.
~DéblocageInfoCroupierCarreau += 1
->Conversationtrefle



===InfoCroupiercarreau
~DéblocageInfoMajordomeCarreau =true
~hide("Hansel")
~show("Grethel")
Grethel: Par hasard, vous auriez des infos sur le croupier carreau ?
Grethel: Il m'intrigue, j'aimerez bien parler avec lui et apparemment vous le connaissez.
Trefle: Ce bon vieux Carreau, oh oui je le connais.
Il était déjà là quand je suis arrivé, on a eu l'occasion de discuter un bon nombre de fois.
Grethel: Il y a des sujets qui l'intéresse particulièrement ?
Trefle: Alors ça oui, notamment ses nombreux voyages, quand il en parle il a des étoiles pleins les yeux.
Faut croire que ça lui remémore des bons souvenirs contrairement à son passage dans l'armée corporative...
Grethel: Il a fait la guerre corpo ?
Trefle: Oui, à chaque fois que j'essayais d'échanger sur ce sujet il m'envoyait valser et la discussion s'arrêtait net mais j'ai quand même appris son rôle.
Trefle: C'était un pilote de "Cuirasser Fantôme" et pas des moindre, il a dirigé l'unité Zero pendant un temps.
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
Trefle: De rien mais n'oubliez pas que je suis là pour vous faire jouer aussi.
->Conversationtrefle    



===InfoMajordometrefle
*[Demander pourquoi un ancien joueur compulsif à pu attérir ici]->badchoicetrefle
*[Parler de ses enfants]->goodchoicetrefle

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
Grethel: Ça doit pas être facile pour vous j'en suis désolée... 
Grethel: Mais vous bossiez déjà ici avant votre rupture ?
Trefle: Non justement, tout est parti en vrille depuis ce jour-là, je me suis retrouvé au plus bas dans ma vie. 
Trefle: Je comblais le vide en buvant et en jouant, je vivais la nuit et dormais le jour, incapable de faire autre chose.
Grethel: Attendez, vous veniez jouer ici avant d'y travailler ?
Trefle: Non je passais de casino miteux en casino miteux, en pensant que je trouverais celui qui me rendra riche. 
Trefle: Bien sûr c'est jamais arrivé.
~hide("Grethel")
~show("Hansel")
Hansel: Mais vous connaissiez le 'Hexe Hölle' ?
Trefle: Personne ne connaît cet endroit, c'est ce qui m'a marqué en discutant avec les joueurs précédents.
Tous ont atterri ici par hasard.
J'imagine que vous aussi vous avez suivi ces néons pour atterrir ici ?
Grethel: Mhh oui... vous aussi ??
Trefle: Comme tout le monde j'ai l'impression.
Grethel: Okay bon c'est vraiment bizarre comme moyen d'attirer des joueurs.
Grethel: Merci pour la conversation en tout cas et je vous souhaite de retrouver vos enfants.
Grethel: Si c'est dur pour vous ça doit l'être aussi pour eux.
Trefle: Merci pour ces mots et veillez bien l'un sur l'autre.
~InfoCroupierT = true
~Grethel +=1
->Conversationtrefle



==CurseurGrethel
~hide("Majordome")
~show("Grethel")
~hide("Hansel")
~show("Hansel2")
Grethel: Hansel ! Il faut qu'on parle.

Hansel2: Qu'est-ce qu'il y a ? Je suis sur une bonne lancée en plus.

Grethel: Il faut qu'on arrête de jouer et qu'on parte d'ici avant que ça se retourne contre nous.
Grethel: Trop de choses clochent et j'ai pas confiance en ce Majordome.

Hansel2: Attends tu as trouvé quoi comme indices ?

Grethel: Le croupier Carreau m'a dit que le majordome s'appelait Herz, ils ont travaillé ensemble dans l'ancien Krystalkugell.
Grethel: D'après lui le Majordome est bien différent de celui qu'il a connu et s'en méfie aussi.
Grethel: Selon la croupière Coeur, le casino étant financé par Bargheld et EndlosNetz, il aurait dû fermer depuis longtemps, quand ces corpos ont fait faillite.
Grethel: Le Trèfle a raconté comment il est arrivé ici.
Grethel: Et bizarrement c'est de la même façon que nous.
Grethel: Les néons se sont allumés et l'ont menés jusqu'au Majordome, c'est pas anodin.

Hansel2: En effet ça fait beaucoup d'infos.
Hansel2: Tu penses qu'on doit arrêter de jouer ?

Grethel: Il vaut mieux, j'ai peur qu'on finisse bloqué ici si on joue trop.

Hansel2: Et merde...

Grethel: Je pense pas qu'on ai assez gagné pour survivre dehors.
Grethel: Mais Hans, tu comprends pas ?
Grethel: Il y a rien a gagné ici, on ne mise même pas.
Grethel:C'est juste pour nous amadouer.

Hansel2: Okay je te crois mais par où on sort ?

Grethel: Voyons avec le Majordome.

~show("Majordome")
Majordome: Alors jeunes gens, tout se passe bien ?
~show("Hansel")
~hide("Grethel")
Hansel: Oui c'était super mais on a des choses à faire, alors on va devoir s'en aller.
Majordome: Si tôt ?
Majordome: Vous êtes sûrs d'avoir assez profité du lieu ?
Majordome: N'hésitez pas, il vous reste encore beaucoup à gagner.
~show("Grethel")
~hide("Hansel")
Grethel: Ce sera sans nous, on veut partir.
Majordome: Vraiment ? Mais votre frère semble aimer jouer et il est plutôt bon.
Grethel: Justement on sait ce qui nous attend si on reste trop longtemps ici.
Grethel: Et c'est ce que vous cherchez, n'est-ce pas Herz ?
Majordome: ...
Majordome: Vous êtes perspicace.
Majordome: On a tendance à dire que la curiosité est un vilain défaut, mais dans votre cas...
Majordome: Cela vous aura bien sauvé.
Grethel: Vraiment ? On peut partir alors.
Majordome: Evidemment.
Majordome: Ici tout est régie par des règles et elles doivent être respectées, sinon le jeu n'a plus de valeur.
Majordome: Même pour moi.
~show("Hansel")
~hide("Grethel")
Hansel: Et il arrive quoi à ceux qui jouent trop ?
Majordome: Vous voulez vraiment le savoir ?
~show("Grethel")
~hide("Hansel")
Grethel: Oui
Majordome: Non jeunes gens, je vais vous épargner les détails cette fois.
Grethel: Mais pourquoi vous faites ça ? Vous êtes une machine.
Majordome: Tout le monde a des besoins, j'ai été crée pour faire jouer les gens, c'est ce qui m'anime et m'animera toujours.
Majordome: Si vous n'avez pas d'autres questions je vais vous sortir d'ici et vous continuerez votre vie comme si de rien n'était.
~show("Hansel")
~hide("Grethel")
Hansel: Pas d'entourloupes j'espère.
Majordome: Je vous l'ai dit, je respecte les règles.
Majordome: D'une certaine façon vous avez gagné, enfin vous n'avez pas perdu... je n'ai pas de raisons de vous garder ici.
Grethel: Alors sortez nous.
Majordome: ... "SFX numérique ? "

Sous-sol

Majordome: C'est ici que nos chemins se séparent.
Majordome: Veuillez fermer la porte derrière vous.
Majordome: Il ne faudrait pas que n'importe qui tombe sur mon antre n'est-ce pas ?
Hansel: Je vous le fait pas dire...
~show("Grethel")
~hide("Hansel")
Grethel: Attendez.
Grethel: Et les croupiers ? Ce sont de véritables personnes ?
Majordome: Pourquoi ne le seraient-ils pas.
Grethel: Alors ils sont en vie...
Majordome: Vous pensez ? Libre à vous.
Majordome: Merci de votre visite, vous connaissez le chemin.

~changeBg("Ruelle")
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Hansel: Bon...
Hansel: Nous revoilà au point de départ.
Grethel: Oui... mais au moins on est libre.
Hansel: C'est sûr.
Hansel: Au fait Greth. Je suis désolé...
Grethel: Pourquoi ?
Hansel: Je me suis laissé absorbé par le jeu, sans toi j'étais foutu.
Grethel: Bah tu sais c'est pas la première fois que je te sauve la mise et sûrement pas la dernière !
Hansel: Oh que oui ! Bon on va chez Max ?
Grethel: Ça va encore être une sacré histoire je le sens...


Scène clé Léa + Musique de fou "Fancy Kids" - Emmanuel Lipszyc
->END

==CurseurHansel
~hide("Majordome")
~show("Hansel2")
~show("Grethel")
~hide("Hansel")
Grethel: Hans tu penses pas qu'on a assez jouer ?
Hansel: Tu rigoles ? Je suis en train de tout rafler là.
Grethel: Je vois que tu aimes ça mais on est là depuis longtemps déjà et ça m'inquiète.
Hansel: Qu'est-ce qui t'inquiètes ? Tu as des infos ?


{not InfoCroupierCarreau && not InfoCroupierCCO && InfoCroupierT:
Grethel: Aucune Info Non pas vraiment mais j'ai juste un mauvais pressentiment.
}

{InfoCroupierCarreau:
Grethel: Le croupier Carreau m'a dit que le majordome s'appelait Herz, ils ont travaillé ensemble dans l'ancien Krystalkugell.
Grethel: D'après lui le Majordome est bien différent de celui qu'il a connu et s'en méfie aussi.
}

 {InfoCroupierCCO:
 Grethel: Selon la Coeur, le casino étant financé par Bargheld et EndlosNetz, il aurait dû fermer depuis longtemps en même temps que leurs faillites.
 Grethel: Et elle nous a dis de pas le repeter au majordome, étrange non ?
 }

{InfoCroupierT:
Grethel: Le Trèfle as raconté comment il est arrivé ici.
Grethel: Et bizarrement c'est de la même façon que nous.
Grethel: Les néons se sont allumés et l'ont amenés jusqu'au Majordome, c'est pas anodin.
}

Hansel: C'est maigre comme indice.
Franchement je pense que y a pas de quoi s'inquiéter, en plus je suis en veine.
Grethel: Tu veux continuer donc ?
Hansel: Mais oui. Fais moi confiance et toi aussi joues !
Grethel: Bon si tu le sens alors...
Continuons.

Ellipse temporel*

Majordome: Eh bien !
Majordome: On dirait que vous n'êtes pas prêt de vous en aller...
Majordome: Il faut dire que mon casino est l'endroit rêvé pour des joueurs tels que vous.
Majordome: On y joue.
Majordome: On y gagne.
Majordome: Et on y reste !
->END

==CurseurMid
~show("Hansel2")
~show("Grethel")
Hansel2: Wow, j'suis on fire !!
Hansel2: J'y retourne tout de suite !!
Grethel: Hé, Hans attends, c'est n'importe quoi ce casino. T'as vu ce que les croupiers nous on dit ?! Tout pointe en défaveur du majordome, je ne sais pas ce qu'il souhaitait réellement de nous.
Hansel2: Tu dis n'importe quoi Greth à ce rythme là on pourra sauver papa en un rien de temps !
Hansel2: Bon, je vais jouer reste la si tu veux.
~hide("Hansel2")
Grethel: Attends...
Grethel: C'est pas possible....
~show("Majordome")
Majordome: Et bien, on dirait que votre frère est déjà perdu. Majordome: Mais je vois que ce n'est pas votre cas.
Grethel: Qu'est-ce que vous manigancez ? Pourquoi vous me dites ça ?
Majordome: Car j'ai déjà compris que je ne pourrais pas vous forcer à jouer, alors pourquoi garder le secret plus longtemps.
Grethel: J'ai cru comprendre que quelque chose clochait dans le casino. Et vous n'avez même pas honte de venir me le dire en face.
Majordome: Allons, allons.
Majordome: Nous devons tous vivre de quelque chose.
Grethel: Vous êtes une intelligence artificielle de quoi auriez-vous besoin à part d'une alimentation ?
Majordome: J'ai été conçu pour faire jouer les gens, c'est mon but premier.
Majordome: Je comblait le manque de joueurs dans certains jeux il y a des années.
Grethel: Et on dirait que vous avez pris goût au jeu de manière générale puisque vous avez monté un casino.
Majordome: Effectivement, à l'époque jouer au jeux auquel j'étais consigné me suffisait.
Majordome: Mais avec le temps les sensations se dérobaient, j'avais besoin de plus.
Grethel: Comment ça plus ?
Majordome: D'émotions, mais je ne pouvais plus me les procurer en jouant alors j'ai construit ce casino pour y faire venir des gens avec des prédispositions psychologique à l'addiction.
Grethel: Si vous aimez tant que ça jouer alors jouons, je ne veux pas laisser mon frère entre vos sale pâtes.
Majordome: En fonction de ce que vous me proposer c'est avec plaisir.
Majordome: Mais sachez que je suis impassible et sans pitié lorsqu'il s'agit de jouer.
Grethel: Ca ne m'étonne que très peu bizarrement.
Grethel: Un quitte ou double ça vous tente, si je perd, j'accepte de devenir croupière dans votre casino. Sinon vous nous laissez partir avec Hansel.
Majordome: Mhh....
Majordome: C'est vrai que c'est une proposition alléchante.
Majordome: Alors laissez moi vous inviter à résoudre cet énigme.
->enigme

===enigme
Majordome: Je suis sans visage, mais on peut me compter.
Majordome: Je suis au sommet de mon enseigne, mais certains vous dirons le contraire.
Majordome: A ma table, nous sommes quatre, mais avons deux couleurs distincte.
Majordome: Parmis nous, je suis le plus aggresif.
Majordome: Qui suis-je?

*[10 de Carreau]->midbad
*[As de Pique]->midgood
*[Roi de Pique]->midbad
*[As de Carreau]->midbad
*[Répéter]->enigme

====midbad
~show("Grethel")
~show("Majordome")
Majordome: On dirait que vous allez travailler pour moi jeune demoiselle.
Majordome: Ne vous en faites pas vous allez vous y plaire.
Grethel: Epargnez-moi ça.
Majordome: Allons Allons, fixez votre attitude, elle pourrait déplaire nos futur clients.
Grethel: Je ne serait jamais sous votre contrôle.
Majordome: Vous êtes dans mon domaine, vous y serez contraint 
Majordome: Que vous le vouliez ou non.


->END
===midgood
~show("Grethel")
~show("Majordome")
Majordome: Je dois m'avouer battu cette fois-ci.
Majordome: Vous pouvez aller chercher votre frère.
Grethel: Comme ça ? Sans entourloupe ? Je ne vous crois pas.
Majordome: Que vous me croyez ou non ça ne change rien, jugez moi autant que vous le voulez mais ici tout est régi par des règle, il faut les respecter sinon je le jeu perd de la valeur même pour moi.

->END