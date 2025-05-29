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

VAR InfoCroupierCarr = false
VAR InfoCroupierCCO = false
VAR InfoCroupierT = false

VAR DejaVenuCroupierCarreau = false
VAR DejaVenuCroupierCoeur = false
VAR DejaVenuCroupiertrefle = false

VAR DéblocageInfoMajordomeCarreau = false
VAR DéblocageInfoMajordomeCCO = false
VAR DéblocageInfoMajordometrefle = false

VAR TropJouerCoeur = false
VAR Question1CCO = 0
VAR money = 0
VAR gameWin = false


->hubMajordome
===CheckVariablePourFin
{Hansel >= 10 && Grethel <=1:
->CurseurHansel
- else:
->CheckVariablePourFin2
}
===CheckVariablePourFin2
{Grethel >=3:
->CurseurMid
- else:
->CheckVariablePourFin3
}
===CheckVariablePourFin3
{Hansel >= 8 && Grethel >=2:
->CurseurGrethel
- else:
->prehubMajordome
}



===prehubMajordome
{InfoCroupierCarr:
->MajordomeCarreau
-else:
->prehubMajordome2
}

==prehubMajordome2
{InfoCroupierCCO:
->MajordomeCoeur
-else:
->prehubMajordome3
}

==prehubMajordome3
{InfoCroupierT:
->MajordomeTrefle
-else:
->hubMajordome
}







===MajordomeCarreau
~show("Majordome")
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Hansel2")
~show("Grethel")
~InfoCroupierCarr = false
Grethel: Apparemment vous travailliez avec le croupier Carreau au Kristal Kugel avant sa fermeture, c'est un bon ami à vous ?
Majordome: Le croupier...
Majordome: Carreau ?
Majordome: ...
Majordome: Ah oui, ça remonte à longtemps effectivement.
~face("Grethel", "Inquiete")
Majordome: Ca m'a surpris de le voir se présenter à mon bureau, nous n'étions pas vraiment ami à proprement parler, plus des collègues de travail. 
Majordome: Mais ça m'a fait plaisir de voir une vieille connaissance.
~face("Grethel", "Idle")
~hide("Grethel")
~show("Hansel")
Hansel: C'est pour ça que vous l'avez embauché alors ?
Majordome: Oui, je connais ses capacités de travail, l'avoir sous mon aile m'a permit de consolider mon casino.
Majordome: Mais assez parlé de ça, jeune homme est-ce que vous avez gagné quelque chose pour le moment ?
*[Oui]->Oui
*[Non]->Non

-(Non)
Majordome: Eh bien c'est quand même ce pourquoi vous-êtes ici allez donc à une table et revenez quand ce sera fait.
{Hansel >=6:
~show("Hansel2")
~hide("Hansel")
~show("Grethel")
Grethel: Eh Hans, tu tiens le coup ? 
Grethel: Je commence à avoir des infos je pense que si on continue comme ça on va pouvoir le faire chanter.
Hansel2: Ouais t'inquiète faut juste que tu ailles droit au but.
}
->ChoixHubMajordome
-

-(Oui)
Majordome: Vous m'en voyez ravi, j'espère que les tables sont à votre goût et que mes employés veillent à tenir un comportement irréprochable.
{Hansel >=6:
~show("Hansel2")
~hide("Hansel")
~show("Grethel")
Grethel: Eh Hans, tu tiens le coup ? 
Grethel: Je commence à avoir des infos je pense que si on continue comme ça on va pouvoir le faire chanter.
Hansel2: Ouais t'inquiète faut juste que tu ailles droit au but.
}
->ChoixHubMajordome


===MajordomeCoeur
~show("Majordome")
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Hansel2")
~show("Grethel")
~InfoCroupierCCO = false
Grethel: Vous saviez que la croupière cœur était la chanteuse du groupe Synthex Virga ?? 
Grethel: Comment est-elle arrivée ici ?
Majordome: Oui, c'est un honneur de l'avoir ici.
Majordome: Mais je ne peux pas vous révéler comment elle est arrivée ici, c'est un secret professionnel.
Majordome: J'espère néanmoins que tout s'est bien passé à sa table ?
Majordome: Si c'est le cas je vous invite à repartir sur une de nos table.
{Hansel >=6:
~show("Hansel2")
~hide("Hansel")
~show("Grethel")
Hansel2: Allez c'est reparti, on va tout peter. 
Grethel: Calme-toi, on est pas ici pour s'amuser je te rappelle.
~face("Hansel2", "Triste")
Hansel2: Je...
Hansel2: C'est vrai excuse-moi.
Grethel: Je vais essayer de faire vite je sens que ça pourrait dégénérer.
}
~face("Grethel", "Idle")
~face("Hansel2", "Idle")
->ChoixHubMajordome



===MajordomeTrefle
~show("Majordome")
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Hansel2")
~show("Grethel")
~InfoCroupierT = false
Grethel: Vous...
~face("Grethel", "Enervee")
~face("Majordome", "Mesquin")
Majordome: Alors jeune homme, vous vous plaisez ? 
Majordome: J'espère que la chance vous sourit.
~hide("Grethel")
~show("Hansel")
Hansel: Ouais, je m'en sort pas trop mal.
~show("Grethel")
~hide("Hansel")
Grethel: Je pense qu'on pourr...
Majordome: Je te conseille de retourner jouer peut-être que vous pourriez tout rafler sur la prochaine partie.
{Hansel >=6:
~show("Hansel2")
~hide("Hansel")
~show("Grethel")
Hansel2: Ouais il a raison, allez viens on va faire peter la banque. 
~face("Grethel", "Inquiete")
Grethel: On va y aller.
Grethel: Mais resaisit toi, on doit rester concentré.
Hansel2: C'est vrai excuse moi, je sens que ça commence.
}
~face("Grethel", "Idle")
~face("Majordome", "Idle")
->ChoixHubMajordome



==hubMajordome
~show("Majordome")
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Hansel2")

{TropJouerCoeur:
~hide("Hansel")
~show("Grethel")
~show("Hansel2")
~hide("Majordome")
Grethel: Te revoila Hans tout va bien ?
Hansel2: Ouais c'est nickel j'ai encore gagné.
}


{etreAlleVoirUnCroupier:
Majordome: {~Vous revoila, j'espère que tout ce passe bien.|Alors, vous vous amusez ? J'espère que tout ce déroule comme vous le souhaitez.|Déjà de retour, vous avez l'air en veine !}
}
->ChoixHubMajordome

===ChoixHubMajordome



*[Aller vers le Croupier Carreau, Roulette]->CroupierCarreaux 
+{CroupierCarreaux}[Aller vers le Croupier Carreau, Roulette]->CroupierCarreaux2

*[Aller vers la Croupière Coeur, Memory]->CroupierCoeur
+{CroupierCoeur}[Aller vers la Croupière Coeur, Memory]->CroupierCoeur2

*[Aller vers le Croupier Trèfle, Blackjack]->CroupierTrefle
+{CroupierTrefle}[Aller vers le Croupier Trèfle, Blackjack]->CroupierTrefle2






===CroupierCarreaux
~etreAlleVoirUnCroupier = true
~hide("Majordome")
~show("Carreau")
~hide("Hansel")
~changeBg("Carreau")

Carreau: ...

~hide("Grethel")
~show("Hansel")
Hansel: Euh bonjour ?
Carreau: Oups, excusez moi j'étais perdu dans mes pensées, faut croire qu'on ne voit pas souvent du monde par ici..

~show("Grethel")
~hide("Hansel")
Grethel: Ah bon ? je croyais que le casino était populaire dans le milieu.

Carreau: Populaire ? Qui vous a dit ça ?
~hide("Grethel")
~show("Hansel")
Hansel: Votre collègue à l'entrée.

Carreau: Ca ne m'étonne pas de lui. 
Carreau: Enfin bref j'imagine que vous êtes ici pour jouer, non ?

Hansel: Evidemment, je suis bouillant ! 
Hansel: C'est quoi les règles ?

Carreau: Oh et bien le jeu n'est pas très compliqué, 
Carreau: Il s'agit de miser sur une couleur de la roue.
Carreau: Et si la bille atterrit sur la bonne case vous remportez la mise.

~hide("Hansel")
~show("Grethel")
Grethel: Donc c'est uniquement de la chance...

Carreau: Et bien oui, ici c'est un casino après tout.

~hide("Grethel")
~show("Hansel")
Hansel: C'est parfait je me sens particulièrement chanceux en ce moment.

~hide("Hansel")
~show("Grethel")
Grethel: J'aurais pas dis ça.

Carreau: Alors, vous jouez ?

Grethel: On aimerait vous poser des questions d'abord si possible.
~DejaVenuCroupierCarreau = true

*[Demander son âge]->PasEncoreJouer
*[Lui demander si il connait bien ses collègues]->PasEncoreJouer
*[Demander d'ou il vient]->PasEncoreJouer

===CroupierCarreaux2
~hide("Majordome")
~show("Carreau")
~hide("Hansel")
~changeBg("Carreau")
{ConvTresNul && ConvNul && InfoCroupierCoeur && InfoMajordome:
Carreau: Il semblerait que je n'ai plus quand chose à vous dire les jeunes. 
->TropDeQuestion
}

Carreau: Oh vous revoila, vous avez d'autres questions peut être ?
Carreau: Mais pas avant une partie comme convenu.
->JouerCarreau


===PasEncoreJouer

Carreau: Voyons, vous n'avez même pas pris le temps de faire une partie.
Carreau: Prenons donc un moment pour jouer non ?
->JouerCarreau

===retourmajorCarr
{ConvTresNul && ConvNul && InfoCroupierCoeur && InfoMajordome:
Grethel: Retournons voir le majordome.
->TropDeQuestion
}
Grethel: Changeons de table.
->CheckVariablePourFin



===JouerCarreau
{ConvTresNul && ConvNul && InfoCroupierCoeur && InfoMajordome:
Carreau: Il semblerait que je n'ai plus quand chose à vous dire les jeunes. 
->TropDeQuestion
}
{ConvTresNul && ConvNul && InfoCroupierCoeur && not DéblocageInfoMajordomeCarreau:
Carreau: Je crois que je vous ai tout dis pour le moment.
Carreau:: Vous devriez aller voir ma collègue coeur, elle s'occupe du memory.
Grethel: D'accord on y va de ce pas.
->hubMajordome
}
~Hansel +=1
~LoadScene("VFXRoulette")
->QuestionPourCarreau


===QuestionPourCarreau
~hide("Hansel2")
~hide("Hansel")
~show("Carreau")
~show("Grethel")
{! Grethel: On peut vous poser une question maintenant ?}

{! Carreau: Oui bien sûr, mais une seulement, chaque chose en son temps.}

{ConvTresNul || ConvNul || InfoCroupierCoeur || InfoMajordome:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}

{ConvTresNul && ConvNul && InfoCroupierCoeur && InfoMajordome:
Carreau: Il semblerait que je n'ai plus quand chose à vous dire les jeunes. 
->TropDeQuestion
}

*{not ConvTresNul}[Demander son âge]->ConvTresNul
*{not InfoCroupierCoeur}[Lui demander si il connait bien ses collègues]->InfoCroupierCoeur
*{not ConvNul}[Demander d'ou il vient]->ConvNul
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome 
+[Retourner voir le Majordome]->CheckVariablePourFin

===ConvNul
~hide("Hansel")
~show("Grethel")
Grethel: Et vous êtes né ici ?

Carreau: Par ici vous voulez dire en Allemagne ?

Grethel: Oui.

Carreau: Malheureusement oui, comme beaucoup de gens.

~hide("Grethel")
~show("Hansel")
Hansel: Vous aimez vraiment pas cette ville j'ai l'impression.

Carreau: Qui peut bien aimer ? 
Carreau: Naître ici ça revient à jouer à pile ou face dès la naissance soit on grandit dans la haute ville.
Carreau: Soit on étouffe ici dans les quartiers bas.

~hide("Hansel")
~show("Grethel")
Grethel: Oui... faut croire que notre pièce est mal tombée.

*{not ConvTresNul}[Demander son âge]->HopHopHop
*{not InfoCroupierCoeur}[Lui demander si il connait bien ses collègues]->HopHopHop
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->HopHopHop

-(HopHopHop)
Carreau: Oh, la jeunes gens je vous ai dit une question à la fois.
Carreau: Une partie et ensuite une question.
~Hansel +=1
~LoadScene("VFXRoulette")

Grethel: Une question maintenant.

*{not ConvTresNul}[Demander son âge]->ConvTresNul
*{not InfoCroupierCoeur}[Lui demander si il connait bien ses collègues]->InfoCroupierCoeur
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome 



===ConvTresNul
~hide("Hansel")
~show("Grethel")
Grethel: Je peux vous poser une simple question ?

Carreau: Allez-y.

Grethel: Vous avez quel âge ?

Carreau: Oh, ce genre de questions là... et bien j'approche du demi-siècle on va dire.

Grethel: Vraiment ?? Mais vous faites bien plus jeune !

~hide("Grethel")
~show("Hansel")
Hansel: Le chrome a fait du bon boulot, on vous aurait pas rafistolé ?

Carreau: Il y a des choses qu'on ne peut échapper dans la vie mais je n'ai pas envie d'en parler.

~hide("Hansel")
~show("Grethel")
~show("Hansel2")
~hide("Carreau")
Grethel: Désolé Hans mais je pense qu'on va devoir rejouer si on veut une info plus utile.

*[Jouer pour reposer une question]->JouerCarreau
+[Changer de table de jeu]->retourmajorCarr





===InfoMajordome
*[Évoquer son passé au sein de la milice corpo durant la guerre.]->badChoiceCarr
*[Demander comment il connait le croupier trèfle.]->goodChoiceCarr

-(badChoiceCarr)

Grethel: Il paraît que vous étiez dans la milice Corpo pendant la guerre ?

Carreau: Comment vous savez ? C'est encore trèfle qui sait pas tenir sa langue j'imagine..

Grethel: Peut-être, j'étais curieuse de savoir comment un ancien pilote de "Cuirasser Fantôme" aussi réputé que vous avez pu atterrir ici.

Carreau: Ecoutez y a rien à savoir, ce qu'il s'est passé là-bas c'est du passé et j'ai aucune envie d'en parler.
Carreau: La Guerre ça n'a rien de glorieux c'est tout ce que je peux dire. 
Carreau: Evitons les questions trop personnels et concentrons nous sur le jeu.

*[Jouer pour reposer une question]->JouerCarreau
+[Changer de table de jeu]->retourmajorCarr
-

-(goodChoiceCarr)
~hide("Hansel")
~show("Grethel")
Grethel: Apparemment vous connaissez le croupier Trèfle ?

Carreau: Ce jeune là ? Oui, pourquoi ?
~hide("Grethel")
~show("Hansel")
Hansel: Il nous a dit que vous étiez arrivé ici le premier c'est vrai ?
Carreau: Le premier, j'en doute il y en a eu quelques uns avant moi
~hide("Hansel")
~show("Grethel")
Grethel: Vous avez beaucoup voyagé auparavant non ?

Carreau: En effet j'ai eu cette chance là mais pourquoi ces questions ?

Grethel: On en a jamais eu l'occasion nous... et je suis pas sûr qu'on en ai une un jour.

Carreau: Je comprends, écoutez mon voyage en Asie est celui qui m'a le plus marqué si ça vous intéresse autant.
~hide("Grethel")
~show("Hansel")
Hansel: L'Asie ? Toute l'Asie ?
Carreau: A peu près partout oui, je suis parti plus d'un an.
Carreau: A cette époque on voyageait plus facilement donc j'ai eu tout le temps qu'il me fallait et autant vous dire que j'y serais bien resté. 
Carreau: C'est un tel dépaysement et la nourriture , que dire, je crois que c'est ce qui me manque le plus au monde.

~hide("Hansel")
~show("Grethel")
Grethel: Vous en parlez avec tellement de passion alors pourquoi ne pas y retourner ?

Carreau: C'est une histoire plus compliqué qu'elle n'en a l'air, je cherchais avant tout a m'évader et me sortir d'une période sombre que je venais de traverser.

Grethel: Je comprends. J'en profites mais je peux vous poser une question ?

Carreau: Oui allez-y, je me suis remémoré de bons souvenirs grâce à vous.

Grethel: Je m'interroge sur le Majordome, on dirait qu'il nous cache quelque chose.

Carreau: Bon écoutez... 
Carreau: Le Majordome, je le connais depuis l'époque du Kristallkugel Palace. Il s'appelle Herz, c'est un androïde autonome. 
Carreau: A la fermeture du Palace il s'est retrouvé comme tous les croupiers à la rue et nous nous sommes perdus de vue pendant plusieurs années. 
Carreau: Puis il y a quelques mois j'ai vu une annonce de job de croupier pour un soi-disant casino, et évidemment qui ai-je retrouvé en allant voir sur place ? 
Carreau: Ce bon vieux Herz, autoproclamé "Majordome", je n'ai sûrement pas fais attention à ce moment là mais il parlait et se comportait différemment du Herz que je connaissais. 
Carreau: J'ai néanmoins accepté de travailler pour lui étant ma seule option.

Grethel: Donc vous pensez que c'est toujours le même Herz ?

Carreau: C'est dur à dire mais je m'en méfierai quand même, après tout ces androïdes sont crées pour être les plus attractifs possible.
Carreau: C'est facile pour eux d'amadouer des joueurs.

Grethel: D'accord, on fera attention en sa présence. Merci pour l'info.
~Grethel +=1
~InfoCroupierCarr = true
*[Jouer pour reposer une question]->JouerCarreau
+[Changer de table de jeu]->retourmajorCarr



===InfoCroupierCoeur
~DéblocageInfoMajordomeCCO = true
~hide("Hansel")
~show("Grethel")
Grethel: Et sinon vous connaissez bien vos autres collègues ?

Carreau: Je connais les deux mais Trèfle et moi on se parle plus trop, surtout qu'avec le temps on a plus grand chose à se dire.

Grethel: Alors vous savez des choses sur Cœur ?
Carreau: Assez peu mais récemment on a eu l'occasion de bien parler.
Carreau: Elle est assez troublé à cause de son défunt mari donc j'évite de lui en parler vu l'état dans laquelle ça la met. 
Carreau: Les seules fois où je l'ai vu sourire c'était quand on parlait de son ancien groupe de musique, par contre le nom je m'en souviens pas.
Carreau: Il me semble que c'est un truc du genre Syne Fierga ou dans ce style.

Grethel: SYNTHEX VIRGA ? Le Synthex Virga ??? Mais j'écoute encore leurs chansons en boucle sur mon RadioLink !

Carreau: Allez la voir à sa table, elle sera sûrement ravie d'avoir une fan avec qui parler.
~hide("Carreau")
*[Jouer pour reposer une question]->JouerCarreau
+[Changer de table de jeu]->retourmajorCarr



===TropDeQuestion
Hansel: On aimerait bien faire une autre partie, après tout on a pas jamais assez d'argent.

Carreau: Un croupier ne peut jamais refuser une partie à un joueur.
Carreau: Faites vos jeux.
~Hansel +=1
~LoadScene("VFXRoulette")
->CheckVariablePourFin




===CroupierCoeur
~etreAlleVoirUnCroupier = true
~hide("Majordome")
~show("Coeur")
~show("Grethel")
~changeBg("Coeur")
~hide("Hansel")
~hide("Hansel2")
Coeur: Bienvenue, bienvenue, asseyez-vous.
Coeur: Vous êtes la pour jouer c'est ça ?
+[Oui]->Oui
+[Non]->Non

-(Non)
Coeur: Allons allons pourquoi êtes vous ici alors.
~playSound("Shuffle2")
->suite3
-
-(Oui)
Coeur: Alors jouons.
~playSound("Shuffle2")
->suite3
-
-(suite3)
Grethel: On dirait qu'elle veut nous dépecher.
~hide("Coeur")
~show("Hansel2")

Hansel: C'est clair.
~hide("Hansel2")
~show("Coeur")
Coeur: Ici vous jouerez au memory. 
Coeur: Le jeu est simple, 
Coeur: Il vous faut constituez des paires de cartes, 
Coeur: Vous retournez deux cartes, si les elles sont identiques alors vous les laissez faces retournées.
~face("Coeur", "Pensive")
Coeur: ...
~face("Coeur", "Idle")
Coeur: Sinon vous les retournez face cachée. L'objectif est de trouver toutes les paires.

Grethel: Ca va ? Vous avez l'air d'avoir eu une absence.

Coeur: Excusez-moi, ça m'arrive de temps en temps. 
Coeur: Vous êtes prêt pour le jeu ? 

*[Oui c'est parti]->jouerCC0
*[Poser une question]->PaspossibleQuestionCoeur
~DejaVenuCroupierCoeur =true
->jouerCC0




===CroupierCoeur2
~hide("Majordome")
~show("Coeur")
~show("Grethel")
~changeBg("Coeur")
~hide("Hansel")
~hide("Hansel2")
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
->UnepartieDePlus
}

Coeur: Quel bon vent vous ramène ici ?
Coeur: Puis-ce que vous êtes la vous connaissez les règles alors faisons une partie.
->jouerCC0




===PaspossibleQuestionCoeur
~show("Grethel")
~hide("Hansel")
~hide("Hansel2")
~show("Coeur")
Coeur: Désolé, je ne peux pas répondre à quoique ce soit avant que vous ayez joué.
{CroupierCarreaux || CroupierTrefle:
Coeur: Mais pourtant mes collègues ont sûrement dû vous le dire.
}
~hide("Coeur")
~show("Hansel2")
Grethel: Bon on dirait qu'il va falloir jouer Hans.
->jouerCC0




===jouerCC0
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
->UnepartieDePlus
}
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dis pour le moment.
Coeur: Vous devriez aller voir mon collègue trefle, il s'occupe du blackjack.
Grethel: D'accord on y va de ce pas.
->hubMajordome
}
~Hansel +=1
~LoadScene("MemoryCards")
->HubCC0





===HubCC0
~hide("Hansel2")
~hide("Hansel")
~show("Coeur")
~show("Grethel")
{! Grethel: On peut vous poser une question maintenant ?}

{! Coeur: Oui bien sûr, mais question une seulement.}

{Question1Coeur || Question2Coeur || InfoCroupiertrefle || InfoMajordomeviaCCO:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dis pour le moment.
Coeur: Vous devriez aller voir mon collègue trefle, il s'occupe du blackjack.
Grethel: D'accord on y va de ce pas.
->hubMajordome
}
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
->UnepartieDePlus
}

*{not Question1Coeur}[Demander pourquoi elle est rapide]->Question1Coeur
*{not Question2Coeur}[Demander comment elle maîtrise aussi bien les cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander si elle se sent proche des autres croupiers]->InfoCroupiertrefle
*{not InfoMajordomeviaCCO && DéblocageInfoMajordomeCCO}[Lui parler du groupe Synthex Virga]->InfoMajordomeviaCCO
+[Retourner voir le Majordome]->hubMajordome



===Question1Coeur
~hide("Hansel")
~show("Grethel")
~Question1CCO +=1
Grethel: Vous êtes super rapide, il y a une raison particulière ?

Coeur: Pas vraiment j'aime me concentrer sur mon travail et rester active.

Grethel: Vous aimez ce que vous faites ?

Coeur: Je pense que oui, ça me permet de m'évader et d'oublier certaines choses.
~hide("Coeur")
Grethel: *C'est peut-être pour ça qu'elle est rapide...*
~show("Hansel2")
Grethel: Ca nous aide pas trop, je pense qu'il va falloir rejouer...

Grethel: Désolé Hans.
{Question1CCO >=2:
~Question1CCO -=2
->FinDeQuestionCoeur
-else:
~show("Hansel2")
Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.}
->HubCC0
}


===Question2Coeur
~Question1CCO +=1
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

Coeur: Depuis quelques mois.
Coeur: Si on s'investit, on progresse plutôt rapidement dans le métier.
~hide("Grethel")
~show("Hansel")
Hansel: On rejoue ! Je veux assister à une nouvelle démonstration de vos talents.
*[Oui]->Non
*[Non]->Non


-(Non)
~hide("Hansel")
~show("Grethel")
~face("Grethel","Pensive")
Grethel: Attends Hans, on peut discuter un peu avant de rejouer, non ?
~face("Grethel","Idle")
Coeur: Malheureusement on ne peut pas déroger aux règles vous devez rejouez avant.
{Question1CCO >=2:
~Question1CCO -=2
->FinDeQuestionCoeur
-else:
Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite la pliée.}
->HubCC0
}




===InfoCroupiertrefle
~Question1CCO +=1
~DéblocageInfoMajordometrefle = true
~hide("Hansel")
~show("Grethel")
Grethel: Vous ne travaillez pas toute seule ici il me semble, l'ambiance est bonne ?

Coeur: Oui on peut dire ça, je suis plus proche du croupier trèfle que du carreau, mais on s'entend plutôt bien tous les trois.

Grethel: Qu'est-ce que vous entendez par plus proche du trèfle ?

Coeur: On partage tous les deux de vieilles cicatrices.

Grethel: Oui j'avais cru comprendre dans notre conversation.

Coeur: Il a eu de gros problèmes d'addictions plus jeune. C'est comme ça qu'il a atterrit ici. 
Coeur: Mais tout ça lui pèse encore beaucoup, alors évitez le sujet avec lui. 
Coeur: Ca lui fait vraiment mal de voir les gens sombrer dans l'addiction en venant ici. 
Coeur: Mais il me parle souvent de ses enfants dont il a perdu la garde, il espère de tout coeur les revoir un jour.

Grethel: Nous aussi nous espérons pouvoir revoir notre père. 
Grethel: Notre belle-mère nous a mit à la porte en nous disant de ne jamais revenir....

Coeur: J'espère de tout coeur que vous trouverez une solution, l'amour d'un parent n'est pas quelque chose de remplaçable.
~hide("Hansel")
~hide("Coeur")
~show("Hansel2")
Hansel2: Merci.
Grethel: On l'espère nous aussi.
{Question1CCO >=2:
~Question1CCO -=2
Coeur: Si vous avez une autre question il va falloir jouer malheureusement.
->FinDeQuestionCoeur
-else:
Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite la pliée.}
->HubCC0
}



===InfoMajordomeviaCCO
~Question1CCO +=1
*[Demander si elle était bien la chanteuse du groupe Synthex Virga]->goodChoicecoeur
*[Demander comment était le groupe de musique avec son mari]->badChoicecoeur

-(goodChoicecoeur)

~hide("Hansel")
~show("Grethel")
Grethel: Le croupier Carreau nous a dit que vous étiez la chanteuse du groupe Synthex Virga ?!

Coeur: Ah il ne sait pas tenir sa langue celui là.

Grethel: C'est incroyable ! Je suis fan de votre groupe !

Coeur: C'est vrai que c'était une époque magnifique, on était libre, passionnés et populaire.

Grethel: Mais... 
Grethel: Pourquoi avoir mit fin au groupe si tout se passait si bien ?
Grethel: Une tournée était annoncée en plus.
~face("Coeur","Pensive")
Coeur: ...
Coeur: C'est compliqué.

Grethel: Comment ça ?

Coeur: C'est en lien avec mon mari... et ce maudit accident.
~face("Grethel","inquiete")
Grethel: Ah désolé, ne vous sentez pas obligée d'en parler.

Coeur: Non, ça va. C'est juste que...
~face("Grethel","Idle")
Coeur: Avec le travail j'arrive à me distraire mais ça fait bientôt un an que c'est arrivé.
Coeur: Mais cet événement reste ancré en moi. Maudites corpos... 
Grethel: Quelles corpos ?
Coeur: Bargeld et Endlos Netz. Ils ont tout fait pour étouffer l'incident.
Coeur: C'était pendant une représentation d'un de leurs concerts privés, soi-disant caritatif. 
Coeur: Il était contre l'idée de supporter ces corpos, mais l'occasion était trop belle alors je lui ai forcé la main...
Coeur: Je me sens tellement responsable de sa mort.

Grethel: Vous vous faites du mal, on ne peut tout contrôler.
Grethel: Je ne pense pas que votre mari aurait voulu que vous remmetiez la faute sur vous.
~face("Coeur", "Idle")
Coeur: Oui vous avez sûrement raison...
Coeur: Merci pour ces mots réconfortants, dites moi si je peux vous aider d'une quelquonque manière.

Grethel: J'aimerais vous poser une question justement.
Grethel: Le Majordome nous a dit que le casino était financé par des corpos ce qui explique qu'on ne mise rien.
Coeur: Quelles corporations ? Bergeld et EndlosNetz ?
Grethel: Oui c'est ce qu'il a dit.
Coeur: Il me semble qu'avec la crise ces corporations ont fait faillite. 
Coeur: Si c'est vraiment le cas ce casino aurait dû fermer comme tous les autres. 
Grethel: C'est étrange qu'il soit encore fonctionnel. Et d'où viennent les finances alors ?
Coeur: Aucune idée. Mais pas un mot au majordome ou vous risquez gros.

Grethel: C'est si compromettant que ça ?

Coeur: Oui et en plus de vous attirer des problèmes, je risque d'en pâtir aussi.

Grethel: Très bien, on fera gaffe merci pour l'info.

~Grethel +=1
~InfoCroupierCCO = true
{Question1CCO >=2:
~Question1CCO -=2
->FinDeQuestionCoeur
-else:
Hansel: Puisqu'on doit rejouer, pose une question pendant que je fait une partie, elle sera vite la pliée.
->HubCC0
}

-(badChoicecoeur)
~face("Coeur", "Enervee")

Grethel:J'ai entendu dire que, vous aviez un groupe de musique avec votre mari.

Coeur: C'est le croupier carreau qui vous a dit ça ? Pourtant, il a sûrement dû aussi vous dire d'éviter le sujet. 
Coeur: C'est encore douloureux et ça le sera sûrement toujours. 
Coeur: Merci de ne pas me reposer de question là-dessus.
Grethel: Excusez-nous,
Grethel: ....
Coeur: Revenons au jeu voulez-vous.
~face("Coeur", "Idle")

{Question1CCO >=2:
~Question1CCO -=2
->FinDeQuestionCoeur
-else:
Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite la pliée.}
->HubCC0
}



===FinDeQuestionCoeur
*[Jouer pour reposer une question]->jouerCC0
+[Changer de table de jeu]->retourmajorCCO


===retourmajorCCO
{Question1Coeur && Question2Coeur && InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
->UnepartieDePlus
}
Grethel: Changeons de table.
->CheckVariablePourFin

===UnepartieDePlus
~hide("Hansel")
~show("Grethel")
~hide("Coeur")
~show("Hansel2")
Hansel2: Je pense que je vais refaire une partie de plus Greth, je suis plutôt bon à ce jeu.
Grethel: Rappelle-toi de ce pourquoi on est là.
Hansel2: Ouais mais t'inquiète on doit aussi tout rafler non ?
Hansel2: Attend moi à l'entrée j'arrive.
Grethel: Si tu veux mais attention.
~Hansel +=1
~TropJouerCoeur = true
->hubMajordome




===CroupierTrefle
~etreAlleVoirUnCroupier = true
~show("Trefle")
~hide("Grethel")
~hide("Hansel2")
~show("Hansel")
~hide("Majordome")
~changeBg("Trefle")
Trefle: Bonsoir monsieur... Oh ! Le jeune Hansel est de retour.

Hansel: On dirait bien.

Trefle: Le Majordome t'as laissé entrer ? Vu la dernière fois ça me surprends.

Hansel: Faut croire que oui, en même temps y a pas foule non plus.
~hide("Hansel")
~show("Grethel")
Grethel: C'est quel jeu ici ?
Trefle: Moi je m'occupe du Blackjack, un jeu de cartes qui remontent à l'époque du Far-West.

Grethel: Ah mais je connais ce jeu, je l'ai vu dans les vieux films que notre père adore.
Grethel: Par contre je veux bien qu'on me réexplique les règles.

Trefle: Bien sûr, le but c'est de me battre en obtenant un nombre supérieur au mien sans jamais dépasser 21. 
Trefle: Chaque carte numérotée vaut sa valeur et les figures valent 10.
Trefle: Au début, chacun de nous reçoit deux cartes. 
Trefle: Le joueur peut ensuite "tirer une carte" ou "rester". 
Trefle: Le croupier doit tirer jusqu’à atteindre au moins 17. Si un joueur dépasse 21, il perd automatiquement.
Trefle: Voilà tout ce qu'il faut savoir, vous êtes partant pour une partie ?
Grethel: Est-ce que on peut vous poser des questions ou pas ?
Trefle: Bien sûr, mais je ne pourrais pas y répondre tant que vous n'avez pas fait une partie.
Trefle: Sinon on va dire que je fais pas assez jouer les clients.
~hide("Grethel")
~show("Hansel")
Hansel: Bon, c'est parti jouons.
->Jouertrefle



===CroupierTrefle2
~show("Trefle")
~hide("Grethel")
~hide("Hansel2")
~show("Hansel")
~hide("Majordome")
~changeBg("Trefle")
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && InfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis, vous devriez jouer aux autres tables. 
->UneDernierePartieTrefle
}

Trefle: Oh, vous êtes de retour.
Trefle: Puisque vous connaissez les règles, nous pouvons directement jouer.
->Jouertrefle


===retourmajorTrefle
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && InfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis, vous devriez jouer aux autres tables. 
->UneDernierePartieTrefle
}
Grethel: Changeons de table.
->CheckVariablePourFin

===Jouertrefle
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && InfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis, vous devriez jouer aux autres tables. 
->UneDernierePartieTrefle
}
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis pour le moment.
Trefle: Vous devriez aller voir mon collègue carreau, il s'occupe de la roulette.
Grethel: D'accord on y va de ce pas.
->hubMajordome
}
~Hansel +=1
~LoadScene("Blackjack") 
->Hubtrefle




===Hubtrefle
~hide("Hansel2")
~hide("Hansel")
~show("Trefle")
~show("Grethel")
{! Grethel: Du coup on peut vous poser une question c'est ça ?}

{! Trefle: Oui mais ce sera toujours une partie avant.}

{Question1Trefle || Question2Trefle || InfoCroupiercarreau || InfoMajordometrefle:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis pour le moment.
Trefle: Vous devriez aller voir mon collègue carreau, il s'occupe de la roulette.
Grethel: D'accord on y va de ce pas.
->hubMajordome
}
{Question1Trefle && Question2Trefle && InfoCroupiercarreau && InfoMajordometrefle:
Trefle: Je crois que je vous ai tout dis, vous devriez jouer aux autres tables. 
->UneDernierePartieTrefle
}

*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->Question1Trefle
*{not Question2Trefle}[Parler du blackjack]->Question2Trefle
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->InfoCroupiercarreau
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->InfoMajordometrefle
+[Retourner voir le Majordome]->CheckVariablePourFin



===Question1Trefle
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
Trefle: Comme convenu si vous avez une autre question, une partie s'impose.
{not InfoCroupiercarreau:
Grethel: Je pense qu'on va vous reposer une question alors. 
}
*[Jouer pour reposer une question]->Jouertrefle
+[Changer de table de jeu]->retourmajorTrefle


===Question2Trefle
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
{not InfoCroupiercarreau:
Grethel: Ca ne nous a pas fait avancer je pense qu'il faudrait poser une autre question.
Grethel: Désolé Hans...
}
*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->paspossiblequesttrefle
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->paspossiblequesttrefle
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->paspossiblequesttrefle

-(paspossiblequesttrefle)
Trefle: Vous vous rappellez des règles ?
Trefle: Pas de question sans une partie.

Grethel: Excuse-moi Hans, j'aurais du poser une meilleure question.
~hide("Grethel")
~show("Hansel")
Hansel: C'est pas un problème. 
Hansel: Tu viseras juste la prochaine fois.

~Hansel +=1
~LoadScene("Blackjack") 
-
~hide("Hansel")
~show("Grethel")
Grethel: Réfléchissons avant de poser une question.

*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->Question1Trefle
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->InfoCroupiercarreau
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->InfoMajordometrefle



===InfoCroupiercarreau
~DéblocageInfoMajordomeCarreau = true
~hide("Hansel")
~show("Grethel")
Grethel: Par hasard, vous auriez des infos sur le croupier carreau ?
Grethel: Il m'intrigue, j'aimerais bien parler avec lui et apparemment vous le connaissez.
Trefle: Ce bon vieux Carreau, oh oui je le connais.
Trefle: Il était déjà là quand je suis arrivé, on a eu l'occasion de discuter un bon nombre de fois.
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
*[Jouer pour reposer une question]->Jouertrefle
+[Changer de table de jeu]->retourmajorTrefle


===InfoMajordometrefle
*[Demander pourquoi un ancien joueur compulsif à pu attérir ici]->badchoicetrefle
*[Parler de ses enfants]->goodchoicetrefle

-(badchoicetrefle)
Grethel: Comment se fait-il qu'un ancien addict aux jeux se soit retrouvé en tant que croupier dans un casino ? C'est pas un peu risqué ?
Trefle: Vous insinuez quoi par là ?
Trefle: Que je ne suis pas apte à faire ce travail ?
Grethel: Non loin de moi cette idée mais...
Trefle: Parce que justement, étant connaisseur je suis parfaitement à ma place et je fais du bon travail depuis que je suis là.
Trefle: Alors évitons ce genre de questions et concentrons nous sur le jeu si vous voulez bien.
*[Jouer pour reposer une question]->Jouertrefle
+[Changer de table de jeu]->retourmajorTrefle
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
Trefle: Ma fille doit avoir à peu près ton âge, quant à mon fils et bien... Il devrait avoir 13 ans cette année.
Grethel: Mais vous n'avez plus de nouvelles d'eux ?
Trefle: En fait ils sont partis avec ma femme… enfin ex-femme.
~hide("Grethel")
~show("Hansel")
Hansel: Ouais ça doit compliquer les choses.
~hide("Hansel")
~show("Grethel")
Grethel: Vous avez pu les contacter ? Ne serait-ce que par Visio ? Au moins vous auriez des nouvelles.
Trefle: J'ai bien essayé croyez moi, mais elle a coupé tous les ponts avant de partir.
Trefle: Je sais même pas si ils sont encore en ville.
Grethel: Ça doit pas être facile pour vous j'en suis désolée... 
Grethel: Je vous souhaite de retrouver vos enfants.
Grethel: Si c'est dur pour vous ça doit l'être aussi pour eux.
Trefle: Merci pour ces mots et si vous aviez quelque chose à me demander faites-le maintenant.

Grethel: Mon frère dit que le casino n'était pas ici avant. Pourquoi avoir changé ?
Trefle: Hein ? Comment ça ?
Trefle: J'ai pas le souvenir de mettre déplacé.
Trefle: Il faut dire que ça fait longtemps que je ne suis pas sorti à l'extérieur mais normalement le gérant nous dit quand nos horaires sont terminées.
Grethel: C'est bizarre comme fonctionnement...
Grethel: Merci en tout cas.
 
 
~InfoCroupierT = true
~Grethel +=1

*[Jouer pour reposer une question]->Jouertrefle
+[Changer de table de jeu]->retourmajorTrefle


===UneDernierePartieTrefle
~hide("Grethel")
~show("Hansel")
Hansel: On peut pas partir sans une dernière petite partie non ?
~Hansel +=1
~LoadScene("Blackjack") 

~hide("Trefle")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Grethel: Bon maintenant on s'en va il n'y plus rien a gagner ici.
~hide("Grethel")
~show("Hansel2")
Hansel2: C'est un casino il y a toujours quelque chose à gagner.
~hide("Hansel2")
~show("Grethel")
Grethel: ...
->CheckVariablePourFin



==CurseurGrethel
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
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
Grethel: C'est juste pour nous amadouer.

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
Majordome: D'une certaine façon vous avez gagné, enfin vous n'avez pas perdu... Je n'ai pas de raisons de vous garder ici.
Grethel: Alors sortez nous.
Majordome: ... 

~changeBg("Sous_sol")

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
Majordome: Merci de votre visite, vous connaissez le chemin.->Fingood

===Fingood
~changeBg("Ruelle")
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
~playSound("FinGood")
Hansel: Bon...
Hansel: Nous revoilà au point de départ.
Grethel: Oui... Mais au moins on est libre.
Hansel: C'est sûr.
Hansel: Au fait Greth. Je suis désolé...
Grethel: Pourquoi ?
Hansel: Je me suis laissé absorbé par le jeu, sans toi j'étais foutu.
Grethel: Bah tu sais c'est pas la première fois que je te sauve la mise et sûrement pas la dernière !
Hansel: Oh que oui ! Bon on va chez Max ?
Grethel: Ça va encore être une sacré histoire je le sens...

~LoadScene("KeySceneGood")
//Scène clé Léa + Musique de fou "Fancy Kids" - Emmanuel Lipszyc
->END

==CurseurHansel
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Majordome")
~show("Hansel2")
~show("Grethel")
~hide("Hansel")
Grethel: Hans tu penses pas qu'on a assez jouer ?
Hansel: Tu rigoles ? Je suis en train de tout rafler là.
Grethel: Je vois que tu aimes ça mais on est là depuis longtemps déjà et ça m'inquiète.
Hansel: Qu'est-ce qui t'inquiètes ? Tu as des infos ?


{not InfoCroupierCarr && not InfoCroupierCCO && InfoCroupierT:
Grethel: Aucune Info Non pas vraiment mais j'ai juste un mauvais pressentiment.
}

{InfoCroupierCarr:
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
Hansel: Franchement je pense que y a pas de quoi s'inquiéter, en plus je suis en veine.
Grethel: Tu veux continuer donc ?
Hansel: Mais oui. Fais moi confiance et toi aussi joues !
Grethel: Bon si tu le sens alors...
Grethel: Continuons.

Ellipse temporel*

Majordome: Eh bien !
Majordome: On dirait que vous n'êtes pas prêt de vous en aller...
Majordome: Il faut dire que mon casino est l'endroit rêvé pour des joueurs tels que vous.
Majordome: On y joue.
Majordome: On y gagne.
Majordome: Et on y reste !
->END

==CurseurMid
~hide("Hansel")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~show("Hansel2")
~show("Grethel")
Hansel2: Wow, j'suis on fire !!
Hansel2: J'y retourne tout de suite !!
Grethel: Hé, Hans attends, c'est n'importe quoi ce casino. T'as vu ce que les croupiers nous on dit ?! 
Grethel: Tout pointe en défaveur du majordome, je ne sais pas ce qu'il souhaitait réellement de nous.
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
Majordome: A ma table, nous sommes quatre, mais avons deux couleurs distincte.
Majordome: Je suis sans visage, mais on peut me compter.
Majordome: Parmis nous, je suis le plus aggresif.
Majordome: Je suis au sommet de mon enseigne, mais certains vous dirons le contraire.
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
Majordome: Que vous me croyez ou non ça ne change rien, jugez moi autant que vous le voulez mais ici tout est régi par des règles.
Majordome: il faut les respecter sinon je le jeu perd de la valeur même pour moi.->Fingood
