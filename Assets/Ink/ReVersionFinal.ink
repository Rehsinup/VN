EXTERNAL LoadScene(string)
EXTERNAL LoadVFX(string)
INCLUDE 2d_api.ink
VAR badChoice = 0

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
VAR neonOn= false


~LoadScene("KeySceneStart")
~changeBg("Ruelle")
->Ruelle
===Ruelle
~playSound("FootSteps")
~playSound("Rain")
Après quelques heures à errer sous la pluie

Hansel et Grethel désormais démunis, se regardent dans le blanc des yeux, d'un air livide, signe de leur désespoir.

~show("Grethel")

~show("Hansel2")

~face("Grethel", "Inquiete")

Grethel: Hansel, comment on va faire ? On a plus rien...

Hansel2: Je sais que c'est compliqué mais, il faut pas qu'on se laisse abattre.

Grethel: Et papa, on va vraiment le laisser seul avec cette femme.

Hansel2: T'as raison, mais pour l'instant on doit s'occuper de nous. 
Hansel2: J'ai toujours un plan pour sortir d'ici ! 

Hansel2: Ça risque de me prendre du temps, alors fais-moi confiance.
~face("Grethel", "Idle")
Grethel: Tu sais que j'ai confiance en toi, alors je te suis. 

->Neon_ON

===Neon_ON
~show("Grethel")
~show("Hansel2")
~playSound("Neon")
~neonOn= true
*[Observer les néons]

Hansel2: Oula j'ai l'impression qu'on a trop trainé.

Grethel: Oui, il est déjà tard. On ne devrait pas trop tarder dans les ruelles.

Hansel2: Attends...
Hansel2: Je connais ce casino, mais il était pas ici avant.
~face("Grethel", "Enervee")
Grethel: Me dis pas que tu veux y aller ?
~face("Grethel", "Idle")
Hansel2: Ça peut être une bonne idée, mais ils m'ont dépouillé la dernière fois et j'ai eu du mal à m'arrêter.
Grethel: Raison de plus.
Hansel2: Je suis d'humeur revancharde, notamment avec le gérant du casino. 
Hansel2: Vraiment, il était louche. Même quand il n'était pas là, je sentais sa présence et chaque partie devenait plus addictive.

Grethel: Alors comment tu en es sorti ?

Hansel2: C'est un des croupiers qui m'a aidé, j'espère qu'il y travaille encore.

Grethel: Mais pourquoi on irait là-bas si c'est dangereux ?

Hansel2: Je connais ce genre d'endroit.
Hansel2: Ça ne m'étonnerai pas qu'il y ait une activité parallèle ou autre.
Grethel: Oh non... je sais ce que tu vas proposer.
Hansel2: Mais si, écoute -moi ! Il y a forcément un max de thunes à se faire, ce serait le jackpot.
Hansel2: Puis on est deux et il est seul.
Hansel2: Si on fait ça bien, on pourra peut-être le faire chanter, l'occasion est trop belle pour la rater.
Grethel: Bon, OK. Mais t'attends quoi de moi au juste ?
Hansel2: Tu fais ce que tu sais faire de mieux, tu observes les failles, tu poses les bonnes questions.
Hansel2: Et si tu remarques un truc qui cloche, on pourra sûrement l'exploiter.
Hansel2: Moi je m'occupe de jouer aux jeux pour ne pas avoir l'air trop suspect.

Grethel: C'est assez risqué quand même. Tu as tendance à vite te laisser absorber quand tu joues.
Grethel: Essaie de ne pas trop forcer sur le jeu.

Hansel2: Oui, je sais, je compte sur ta perspicacité.
Hansel2: OK, allons-y.
~LoadScene("KeySceneSous-Sol")
->Sous_sol


==Sous_sol
~changeBg("Sous-sol")
~show("Grethel")
~show("Hansel2")
~playSound("Sous-sol")

Grethel: C'est quoi cet endroit ? Il n'y a que du vieux matos.
~face("Grethel", "Pensive")
Grethel: Et la ventilation pue la mort. T'es sûr que c'est bien là le casino ?
~face("Grethel", "Idle")
Hansel2: Je t'ai dit, il n'était pas ici avant. 
Hansel2: Regarde les sièges, ce sont des vieux modèles de Neurolink, mais ça a l'air de fonctionner. 
Hansel2: Jetons un coup d'œil autour, on sait jamais ce qu'on peut trouver.
Grethel: Ouais, tu l'as dit mais j'ai l'impression d'être observé... 
Grethel: Dépêchons-nous.

->arrivee_majordome



===arrivee_majordome
Hansel2: Regardes le gros bouton là.
Grethel: J'appuies dessus ?
*[Utiliser le bouton]
->suitemajordome
-(suitemajordome)
~hide("Hansel2")
~show("Majordome")
Majordome: Oh là, excusez-moi, jeunes gens !
Majordome: Je ne vous ai pas du tout entendu entrer.

~show("Hansel2")
~hide("Majordome")
~show("Grethel")
Grethel: Et nous, on ne s'attendait pas à voir quelqu'un ici.

~hide("Hansel2")
~show("Majordome")
Majordome: Veuillez m'excuser si je vous ai fait peur, permettez-moi de me présenter. 
Majordome: Je suis celui qu'on appelle "le Majordome", gérant du prestigieux "Hexe Hölle".

~hide("Grethel")
~show("Hansel")
Hansel: Vous avez changer de quartier alors.
Majordome: En effet nous... 
~face("Majordome", "Enjoue")
Majordome: Attendez, je vous reconnais jeune homme.
Majordome: Quel est votre nom déjà ?
~face("Majordome", "Idle")
Hansel: Hansel et voilà ma sœur Grethel.

Majordome: Une nouvelle tête est toujours la bienvenue.
Majordome: Comme vous le savez cher Hansel le prestigieux casino n'est pas ici.
Majordome: Tout ce joue via une interface numérique. Il faudra se connecter.
Majordome: Votre frère à l'habitude, ne vous en faites pas.

Grethel: Sérieux ?
~hide("Grethel")
~show("Hansel")
Hansel: Oui je sais, c'est bizarre, mais fais-moi confiance.

Majordome: Bon j'espère que cette soirée se passera mieux que la dernière, n'est-ce pas ?

Hansel: Oui, j'y compte bien.

Majordome: Cela dit, vous êtes accompagné cette fois.
Majordome: Je vais avoir besoin de vous synchroniser via un petit test, rien de bien compliqué pour des jeunes comme vous.
Majordome: Faites-moi signe quand vous serez prêts.
->Branchement

===Branchement
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
*[Rappeler l'objectif]->Objectif
*[Rentrer dans le casino]->Go

-(Objectif)
Hansel2: Bon, je te rappelle le plan.
Hansel2: Moi je joues j'essaye de détourner l'attention du Majordome.
Hansel2: Pendant ce temps, tu en profites pour poser les bonnes questions aux croupiers, ils savent sûrement des choses.
Hansel2: Que ce soit sur le Majordome ou le casino.
Grethel: J'assure tes arrières, t'en fais pas.
Hansel2: Surtout sois efficace, essaye de poser les bonnes questions parce que tu me connais si je joue trop.
Grethel: Je vais faire de mon mieux.
->Branchement


-(Go)
~show("Majordome")
~hide("Hansel2")
~hide("Grethel")
~show("Hansel")
Majordome: Alors, vous avez pris votre décision ?
Hansel: On est prêts.
Majordome: Alors je vous laisse vous installer dans les fauteuils et vous brancher à votre port.
Hansel: En avant.
~LoadScene("KeySceneBranchement")
->Hall_Casino



===CheckVariablePourFin
{ConvNul && Question2Coeur && Question1Trefle:
->CurseurMid
- else:
->CheckVariablePourFin2
}
===CheckVariablePourFin2
{Grethel >=3:
->CurseurGrethel
- else:
->CheckVariablePourFin3
}
===CheckVariablePourFin3
{badChoice >=2:
->CurseurMid
- else:
->hubMajordome
}


===Hall_Casino
Majordome: C'est parti pour la synchronisation.
~hide("Majordome")
~hide("Grethel")
~hide("Hansel")
~hide("Hansel2")
~LoadScene("Puzzle 1")

~hide("Coeur")
~hide("Carreau")
~hide("Trefle")


~changeBg("Casino")

~show("Majordome")
~show("Grethel")

Majordome: Bravo pour le test ! Ce n'était qu'une formalité, évidemment, rien de très compliqué. 
Majordome: Comme vous pouvez le constater, nous nous trouvons à l'entrée. 
Majordome: C'est d'ici que vous pouvez accéder à nos différents jeux. 
Majordome: Malheureusement, je n'ai que 3 jeux à vous proposer aujourd'hui. 
Majordome: Les divers croupiers du casino expliqueront bien mieux que moi les jeux auxquels ils sont attribués. 

Hansel: Le croupier Trèfle travaille toujours ici ?

Majordome: Oh oui, il s'occupe du blackjack.
Majordome: Comme promis, vous pourrez gagner des NeuMarks pour chaque manche remportée.

Hansel: Très bien. 
~hide("Hansel")
~show("Grethel")
Grethel: Comment se passent les mises ? Nous n'avons pas un rond sur nous.
Majordome: Il n'y a pas de contrepartie, ici vous jouez pour gagner et seulement gagner, vous ne pouvez pas perdre d'argent.
Grethel: Mais alors, comment fonctionne le casino ?
Majordome: Il tourne sur les fonds d'investissement de grandes entreprises, comme Bargeld et Endlos Netz.
Grethel: Ah d'accord.
Majordome: Amusez-vous bien.
->suite2
-
-(suite2)

~hide("Hansel")
~show("Grethel")
~show("Hansel2")
~hide("Majordome")
Hansel: On devrait peut-être aller voir Trèfle en premier, je le connais un peu.
Hansel: Et je suis plutôt bon au blackjack.
Grethel: D'accord, joues et de mon côté, je vais essayer d'en apprendre plus.
->hubMajordome


==hubMajordome
~show("Majordome")
~changeBg("Casino")
~hide("Coeur")
~hide("Carreau")
~hide("Trefle")
~hide("Hansel2")


{etreAlleVoirUnCroupier:
Majordome: {~Vous revoila, j'espère que tout se passe bien.|Alors, vous vous amusez ? J'espère que tout se déroule comme vous le souhaitez.|Déjà de retour, vous avez l'air en veine !}
}
->ChoixHubMajordome

===ChoixHubMajordome



+{not InfoMajordome && not InfoCroupierCoeur}[Aller vers le Croupier Carreau, Roulette]->CroupierCarreaux
+{CroupierCarreaux && not InfoMajordome}[Aller vers le Croupier Carreau, Roulette]->CroupierCarreaux2



+{not InfoMajordomeviaCCO && not InfoCroupiertrefle}[Aller vers la Croupière Coeur, Memory]->CroupierCoeur
+{CroupierCoeur && not InfoMajordomeviaCCO}[Aller vers la Croupière Coeur, Memory]->CroupierCoeur2



+{not InfoMajordometrefle && not InfoCroupiercarreau}[Aller vers le Croupier Trèfle, Blackjack]->CroupierTrefle
+{CroupierTrefle && not InfoMajordometrefle}[Aller vers le Croupier Trèfle, Blackjack]->CroupierTrefle2






===CroupierCarreaux
~etreAlleVoirUnCroupier = true
~hide("Majordome")
~show("Carreau")
~hide("Hansel")
~changeBg("Carreau")

Carreau: J'imagine que vous êtes ici pour jouer, non ?
~hide("Grethel")
~show("Hansel")
Hansel: Évidemment, je suis bouillant !
*[Expliquer les règles de la roulette]->ReglesRoulette
*[Jouer]->JouerCarreau

===ReglesRoulette
Hansel: C'est quoi les règles ?

Carreau: Oh et bien, le jeu n'est pas très compliqué. 
Carreau: Il s'agit de miser sur une couleur de la roue.
Carreau: Et si la bille atterrit sur la bonne case, vous remportez la mise.

~hide("Hansel")
~show("Grethel")
Grethel: Donc, c'est uniquement de la chance...

Carreau: Et bien oui, ici, c'est un casino après tout.

~hide("Grethel")
~show("Hansel")
Hansel: C'est parfait, je me sens particulièrement chanceux en ce moment.

~hide("Hansel")
~show("Grethel")
Grethel: J'aurais pas dit ça.

Carreau: Alors, vous jouez ?

Grethel: On aimerait vous poser des questions d'abord, si possible.
~DejaVenuCroupierCarreau = true

*[Demander une info sur Coeur]->PasEncoreJouer
*[Demander d'où il vient]->PasEncoreJouer
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->PasEncoreJouer

===CroupierCarreaux2
~hide("Majordome")
~show("Carreau")
~hide("Hansel")
~changeBg("Carreau")
{InfoCroupierCoeur && not DéblocageInfoMajordomeCarreau:
~show("Carreau")
Carreau: Je crois que je vous ai tout dit pour le moment.
Carreau: Vous devriez aller voir ma collègue cœur, elle s'occupe du memory.
Grethel: D'accord, on y va de ce pas.
->hubMajordome
}

Carreau: Oh vous revoilà, vous avez d'autres questions peut-être ?
Carreau: Mais pas avant une partie comme convenu.
->JouerCarreau


===PasEncoreJouer

Carreau: Voyons, vous n'avez même pas pris le temps de faire une partie.
Carreau: Prenons donc un moment pour jouer, non ?
->JouerCarreau



===JouerCarreau
{InfoCroupierCoeur && InfoMajordome:
~show("Carreau")
Carreau: Il semblerait que je n'ai plus grand-chose à vous dire, les jeunes.
Grethel: Merci, on va aller voir vos collègues alors.
->CheckVariablePourFin
}
{InfoCroupierCoeur && not DéblocageInfoMajordomeCarreau:
~show("Carreau")
Carreau: Je crois que je vous ai tout dit pour le moment.
Carreau: Vous devriez aller voir ma collègue cœur, elle s'occupe du memory.
~hide("Hansel")
~show("Grethel")
Grethel: D'accord, on y va.
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

{! Carreau: Oui, bien sûr, mais une seulement, chaque chose en son temps.}

{ConvNul || InfoCroupierCoeur || InfoMajordome:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}

{ConvNul && InfoCroupierCoeur && InfoMajordome:
Carreau: Il semblerait que je n'ai plus grand-chose à vous dire, les jeunes. 
->TropDeQuestion
}

*{not InfoCroupierCoeur}[Demander une info sur Coeur]->InfoCroupierCoeur
*{not ConvNul}[Demander d'où il vient]->ConvNul
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome 


===ConvNul
~hide("Hansel")
~show("Grethel")
Grethel: Vous êtes né ici ?

Carreau: Par ici, vous voulez dire en Allemagne ?

Grethel: Oui.

Carreau: Malheureusement, oui, comme beaucoup de gens.
Grethel: Merde la question servait à rien. Désolé Hans j'ai pas eu d'info utile.


*{not InfoCroupierCoeur}[Demander une info sur Coeur]->HopHopHop
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->HopHopHop

-(HopHopHop)
Carreau: Oh là, jeunes gens, je vous ai dit une question à la fois.
Carreau: Une partie et ensuite une question.
~Hansel +=1
~LoadScene("VFXRoulette")

Grethel: Une question maintenant.


*{not InfoCroupierCoeur}[Demander une info sur Coeur]->CumAndPlayInfoCroupierCoeur

*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->CumAndPlayInfoMarjordome


===InfoMajordome
*[Parler de ses voyages]->goodChoiceCarr
*[Évoquer son passé durant la guerre.]->badChoiceCarr

-(badChoiceCarr)
Grethel: Il paraît que vous étiez dans la milice Corpo pendant la guerre ?

~face("Carreau", "Colere")
Carreau: Comment vous savez ? C'est encore trèfle qui ne sait pas tenir sa langue, j'imagine...

Grethel: Peut-être, j'étais curieuse de savoir comment un ancien pilote de "Cuirasser Fantôme" aussi réputé que vous avez pu atterrir ici.

Carreau: Écoutez il n'y a rien à savoir ce qu'il s'est passé là-bas, c'est du passé et j'ai aucune envie d'en parler.
Carreau: La guerre ça n'a rien de glorieux, c'est tout ce que je peux dire. 
Carreau: Evitons les questions trop personnelles et concentrons-nous sur le jeu.
~face("Carreau", "Idle")
{not InfoCroupierCoeur && InfoMajordome:
Grethel: Je pense qu'on peut encore avoir une info, jouons une fois encore.
~badChoice +=1
->JouerCarreau
}
{InfoCroupierCoeur && InfoMajordome:
->JouerCarreau
}
*{not InfoCroupierCoeur}[Demander une info sur Coeur]->CumAndPlayInfoCroupierCoeur
*{not ConvNul}[Demander d'où il vient]->CumAndPlayConvNul
-

-(goodChoiceCarr)

~hide("Hansel")
~show("Grethel")
Grethel: Vous avez beaucoup voyagé auparavant, non ?
~face("Carreau", "Content")
Carreau: En effet, j'ai eu cette chance là, mais pourquoi ces questions ?

Grethel: On n'en a jamais eu l'occasion nous... et je suis pas sûr qu'on en ait une un jour.
Grethel: Vous voulez bien nous en parler ?

Carreau: D'accord, mon préféré a été celui en Asie, entre la bouffe et la culture c'était incroyable.
Carreau: J'espère que vous pourrez quand même voyager un jour.

~face("Carreau", "Idle")
Grethel: Merci, j'en profite, mais je peux vous poser une question ?
Grethel: On a jamais vu on joueur sortir du casino pour le moment et même Hansel quand il est venu la première fois.
Grethel: C'est normal ?
Carreau: Autrefois, les joueurs perdaient et partaient, mais ils revenaient.
~face("Grethel", "Inquiete")
Carreau: Maintenant, on ne les voit plus repartir. On dit qu’ils gagnent gros et qu’ils préfèrent rester.
Carreau: Moi, je vois surtout leurs pensées s'en aller comme s'ils s'abandonnaient au jeu.
Carreau: On ne les revoit plus après ça.

~face("Grethel", "Idle")
~Grethel +=1
~InfoCroupierCarr = true
{not InfoCroupierCoeur && InfoMajordome:
Grethel: Je pense qu'on peut encore avoir une info, jouons une fois encore.
->JouerCarreau
}
{InfoCroupierCoeur && InfoMajordome:
->JouerCarreau
}
*{not InfoCroupierCoeur}[Demander une info sur Coeur]->CumAndPlayInfoCroupierCoeur
*{not ConvNul}[Demander d'où il vient]->CumAndPlayConvNul



===CumAndPlayConvNul
~Hansel +=1
~LoadScene("VFXRoulette")
->ConvNul

===CumAndPlayInfoCroupierCoeur
~Hansel +=1
~LoadScene("VFXRoulette")
->InfoCroupierCoeur

===CumAndPlayInfoMarjordome
~Hansel +=1
~LoadScene("VFXRoulette")
->InfoMajordome



===InfoCroupierCoeur
~DéblocageInfoMajordomeCCO = true
~hide("Hansel")
~show("Grethel")

Grethel: Vous sauriez des choses sur la croupière Coeur ?
Carreau: Assez peu, mais récemment, on a eu l'occasion de bien parler.
Carreau: Elle est assez troublée à cause de son défunt mari, donc j'évite de lui en parler vu l'état dans lequel ça la met. 
Carreau: Les seules fois où je l'ai vu sourire, c'était quand on parlait de son ancien groupe de musique.
Carreau: Synthex Virga, je crois.

Grethel: SYNTHEX VIRGA ? Le groupe Synthex Virga ??? Mais j'écoute encore leurs chansons en boucle !

Carreau: Allez la voir à sa table, elle sera sûrement ravie d'avoir une fan avec qui parler.
~hide("Carreau")
{InfoCroupierCoeur && not InfoMajordome && DéblocageInfoMajordomeCarreau:
Grethel: Je pense qu'on peut encore avoir une info, jouons une fois encore.
->JouerCarreau
}
{InfoCroupierCoeur && not DéblocageInfoMajordomeCarreau:
->JouerCarreau
}
{InfoCroupierCoeur && InfoMajordome:
->JouerCarreau
}
*{not ConvNul}[Demander d'où il vient]->CumAndPlayConvNul
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->CumAndPlayInfoMarjordome


===TropDeQuestion
Hansel: On aimerait bien faire une autre partie, après tout, on n'a jamais assez d'argent.

Carreau: Un croupier ne peut refuser une partie à un joueur.
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
Coeur: Vous êtes là pour jouer, c'est ça ?
Hansel: Evidemment
Coeur: Ici vous jouerez au memory.
*[Expliquer les règles du memory]->ReglesMemory
*[Jouer]->jouerCC0
===ReglesMemory
Coeur: Le jeu est simple. 
Coeur: Il vous faut constituer des paires de cartes. 
Coeur: Vous retournez deux cartes, si elles sont identiques, alors vous les laissez faces retournées.
~face("Coeur", "Idle")
Coeur: Sinon, vous les retournez face cachée. L'objectif est de trouver toutes les paires.


Coeur: Vous êtes prêt pour le jeu ? 
->GojouerCoeur

===GojouerCoeur
*[Jouer]->jouerCC0
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
{InfoCroupiertrefle &&  not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dit pour le moment.
Coeur: Vous devriez aller voir mon collègue trefle, il s'occupe du blackjack.
Grethel: D'accord, on y va de ce pas.
->hubMajordome
}


Coeur: Quel bon vent vous amène ?
Coeur: Puisque vous connaissez les règles, faisons une partie.
->jouerCC0



===PaspossibleQuestionCoeur
~show("Grethel")
~hide("Hansel")
~hide("Hansel2")
~show("Coeur")
Coeur: Désolé, je ne peux pas répondre à quoique ce soit avant que vous ayez joué.
{CroupierCarreaux || CroupierTrefle:
Coeur: Mes collègues ont sûrement dû vous le dire.
}
~hide("Coeur")
~show("Hansel2")
Grethel: Bon, on dirait qu'il faut que tu rejoues Hans.
->jouerCC0



===jouerCC0
{InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
Grethel: Merci on y va tout de suite.
->CheckVariablePourFin
}
{InfoCroupiertrefle && not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dit pour le moment.
Coeur: Vous devriez aller voir mon collègue trèfle, il s'occupe du blackjack.
~hide("Hansel")
~show("Grethel")
Grethel: D'accord, on y va de ce pas.
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

{! Coeur: Oui, bien sûr, mais une question seulement.}

{Question2Coeur || InfoCroupiertrefle || InfoMajordomeviaCCO:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}



*{not Question2Coeur}[Evoquer sa maîtrise des cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander une info sur Trèfle]->InfoCroupiertrefle
*{not InfoMajordomeviaCCO && DéblocageInfoMajordomeCCO}[Lui parler du groupe Synthex Virga]->InfoMajordomeviaCCO



===Question2Coeur
~Question1CCO +=1
~hide("Hansel")
~show("Grethel")
Grethel: On voit que vous maîtrisez les cartes, j'imagine que ça demande une certaine expertise ?
Coeur: On peut dire ça, oui, ça fait quelque temps que je suis là.

Grethel: J'imagine oui, vous sauriez dire depuis combien de temps ?

Coeur: Depuis quelques mois.
Coeur: Si on s'investit, on progresse plutôt rapidement dans le métier.
~hide("Grethel")
~show("Hansel")
Hansel: On rejoue ? Je veux assister à une nouvelle démonstration de ses talents.
*[Oui]->Non
*[Discuter avant]->Non

-(Non)
~hide("Hansel")
~show("Grethel")
~face("Grethel","Pensive")
Grethel: Attends Hans, on peut discuter un peu avant de rejouer, non ?
~face("Grethel","Idle")
Coeur: Malheureusement on ne peut pas déroger aux règles, vous devez rejouer avant. 
->jouerCC0




===InfoCroupiertrefle
~Question1CCO +=1
~DéblocageInfoMajordometrefle = true
~hide("Hansel")
~show("Grethel")
Grethel: Vous connaissez bien vos collègues ?

Coeur: Oui, on peut dire ça, mais je suis plus proche du croupier trèfle que du carreau. 
Grethel: Vous savez quoi sur lui ?

Coeur: Il a eu de gros problèmes d'addictions plus jeune. C'est comme ça qu'il a atterrit ici. 
Coeur: Mais tout ça lui pèse encore beaucoup, alors évitez le sujet avec lui. 
Coeur: Sinon il parle souvent de ses enfants dont il a perdu la garde, il espère les revoir un jour.

Grethel: Nous aussi, nous espérons pouvoir revoir notre père.
Grethel: Notre belle-mère nous a foutu à la porte et nous empêche de le revoir.

Coeur: J'espère vraiment que vous trouverez une solution, l'amour d'un père ça n'est pas remplaçable.
~hide("Hansel")
~hide("Coeur")
~show("Hansel2")
Hansel2: Merci.
Grethel: On l'espère nous aussi.

{InfoCroupiertrefle && not DéblocageInfoMajordomeCCO:
->jouerCC0
}
{InfoMajordometrefle && InfoMajordomeviaCCO:
->jouerCC0
}

Hansel: Pose une autre question pendant que je joues.
*{not InfoMajordomeviaCCO && DéblocageInfoMajordomeCCO}[Lui parler du groupe Synthex Virga]->InfoMajordomeviaCCO
*{not Question2Coeur}[Evoquer sa maîtrise des cartes]->Question2Coeur




===InfoMajordomeviaCCO
*[Parler du groupe Synthex Virga]->goodChoicecoeur
*[Evoquer son défunt mari]->badChoicecoeur

-(goodChoicecoeur)

~hide("Hansel")
~show("Grethel")
Grethel: Le croupier Carreau nous a dit que vous étiez la chanteuse du groupe Synthex Virga ?!
Coeur: Ah, il ne sait pas tenir sa langue, celui-là.
Grethel: C'est incroyable ! Je suis fan de votre groupe !
Coeur: C'est vrai que c'était une époque magnifique, on était libre, passionné et populaire.
Coeur: Sans cette maudite représentation le groupe serait encore actif.
Grethel: Vous étiez vraiment au top, dommage que vous vous soyez séparé.
Coeur: Merci ça fais plaisir de rencontrer des fans, si vous avez une question allez-y.
Grethel: Le Majordome nous a dit que le casino était financé par des corpos ce qui explique qu'on ne mise rien.
Coeur: Quelles corporations ? Bergeld et EndlosNetz ?
Grethel: Oui, c'est ce qu'il a dit.
Coeur: Avec la crise, ces corporations ont fait faillite. 
Coeur: Si c'est vraiment le cas, le casino aurait dû fermer comme tous les autres. 
Grethel: C'est bizarre qu'il soit encore fonctionnel. D'où viennent les finances alors ?
Coeur: Aucune idée. Mais pas un mot au majordome où vous risquez gros.

Grethel: Merci, je commence a avoir des infos utiles.

~Grethel +=1
~InfoCroupierCCO = true

{InfoMajordomeviaCCO && InfoCroupiertrefle:
->jouerCC0
}

Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite pliée.}

*{not Question2Coeur}[Evoquer sa maîtrise des cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander une info sur Trèfle]->InfoCroupiertrefle


-(badChoicecoeur)
~face("Coeur", "Enervee")
~badChoice +=1
Grethel: J'ai entendu dire que votre mari est décédé dans un accident.

Coeur: C'est le croupier carreau qui vous a dit ça ?
Coeur: Pourtant, il a sûrement dû aussi vous dire d'éviter le sujet. 
Coeur: C'est encore douloureux et ça le sera certainement toujours. 
Coeur: Merci de ne pas me reposer de question là-dessus.
Grethel: Excusez-moi.
Coeur: Revenons au jeu, voulez-vous.
~face("Coeur", "Idle")


{InfoMajordomeviaCCO && InfoCroupiertrefle:
->jouerCC0
}

Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite pliée.}

*{not Question2Coeur}[Evoquer sa maîtrise des cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander une info sur Trèfle]->InfoCroupiertrefle


===CroupierTrefle
~etreAlleVoirUnCroupier = true
~show("Trefle")
~hide("Grethel")
~hide("Hansel2")
~show("Hansel")
~hide("Majordome")
~changeBg("Trefle")
Trefle: Bonsoir messieurs dames. Oh le jeune Hansel est de retour !

Hansel: On dirait bien.

Trefle: Le Majordome t'a laissé entrer ? Vu la dernière fois, ça me surprend.

Hansel: Faut croire que oui, en même temps y a pas foule non plus.
~hide("Hansel")
~show("Grethel")
Grethel: C'est quel jeu ici ?
Trefle: Moi je m'occupe du blackjack, un jeu de cartes assez ancien.
*[Expliquer les règles]->ReglesBalckjack
*[Jouer]->HanselDitJouons

===ReglesBalckjack
Trefle: Bien sûr, le but, c'est de me battre en obtenant un nombre supérieur au mien sans jamais dépasser 21. 
Trefle: Chaque carte numérotée vaut sa valeur et les figures valent 10.
Trefle: Au début, chacun de nous reçoit deux cartes. 
Trefle: Le joueur peut ensuite "tirer une carte" ou "rester". 
Trefle: Le croupier doit tirer jusqu’à atteindre au moins 17. Si un joueur dépasse 21, il perd automatiquement.
Trefle: Voilà tout ce qu'il faut savoir, vous êtes partant pour une partie ?
Grethel: Est-ce qu'on peut vous poser des questions ou non ?
Trefle: Bien sûr, mais je ne pourrais pas y répondre tant que vous n'avez pas fait une partie.
Trefle: Sinon on va dire que je ne fais pas assez jouer les clients.
->HanselDitJouons
===HanselDitJouons
~hide("Grethel")
~show("Hansel")
Hansel: Bon, c'est parti, jouons.
->Jouertrefle



===CroupierTrefle2
~show("Trefle")
~hide("Grethel")
~hide("Hansel2")
~show("Hansel")
~hide("Majordome")
~changeBg("Trefle")
{InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
Trefle: Je crois que je vous ai tout dit pour le moment.
Trefle: Vous devriez aller voir mon collègue Carreau, il s'occupe de la roulette.
Grethel: D'accord, on y va de ce pas.
->hubMajordome
}

Trefle: Oh, vous êtes de retour.
Trefle: Puisque vous connaissez les règles, nous pouvons directement jouer.
->Jouertrefle



===Jouertrefle
{InfoCroupiercarreau && InfoMajordometrefle:
~hide("Hansel")
~hide("Hansel2")
~show("Grethel")
~show("Trefle")
Trefle: Je crois que je vous ai tout dit, vous devriez jouer aux autres tables. 
Grethel: D'accord on s'y rend.
->CheckVariablePourFin
}
{InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
Trefle: Je crois que je vous ai tout dit pour le moment.
Trefle: Vous devriez aller voir mon collègue Carreau, il s'occupe de la roulette.
~hide("Hansel")
~show("Grethel")
Grethel: D'accord, on y va de ce pas.
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
{! Grethel: Du coup, on peut vous poser une question, c'est ça ?}

{! Trefle: Oui, mais ce sera toujours une partie avant.}

{Question1Trefle || InfoCroupiercarreau || InfoMajordometrefle:
Grethel: {~On a le droit à une autre question maintenant ?| Je peux vous poser une autre question ?|J'aimerais vous poser une autre question.}
}

{Question1Trefle && InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
Trefle: Je crois que je vous ai tout dit pour le moment.
Trefle: Vous devriez aller voir mon collègue Carreau, il s'occupe de la roulette.
Grethel: D'accord, on y va de ce pas.
->hubMajordome
}
{Question1Trefle && InfoCroupiercarreau && InfoMajordometrefle:
Trefle: Je crois que je vous ai tout dit, vous devriez jouer aux autres tables. 
->UneDernierePartieTrefle
}

*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->Question1Trefle
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->InfoCroupiercarreau
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->InfoMajordometrefle



===Question1Trefle
Grethel: Vous êtes le croupier trèfle, c'est ça ?
Trefle: Oui, c'est bien ça.
Grethel: Et, sans vouloir être indiscrète, pourquoi est-ce que c'est ce symbole qui vous a été attribué ?
Trefle: Chaque symbole a une signification.
Trefle: Le mien fait référence à une situation inchangée et continue. 
Trefle: Que cette dernière soit positive ou négative, je vous laisse interpréter ça à votre manière.
~hide("Grethel")
~show("Hansel")
Hansel: Alors vous…
~hide("Hansel")
~show("Grethel")
Grethel: Il vaut mieux qu'on passe à autre chose.
Trefle: Comme convenu, si vous avez une autre question, une partie s'impose.
{not InfoCroupiercarreau:
Grethel: Je pense qu'on va vous reposer une question alors. 
}
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->CumAndPlayInfoCroupiercarreau
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->CumAndPlayInfoMajordometrefle


===InfoCroupiercarreau
~DéblocageInfoMajordomeCarreau = true
~hide("Hansel")
~show("Grethel")
Grethel: Par hasard, qu'est-ce que vous savez sur le croupier carreau ?
Trefle: Mmhh, je sais qu'il a des étoiles pleins les yeux lorsqu'il parle de ses voyages
Trefle: Il faut croire que ça lui remémore des bons souvenirs, contrairement à son passage dans l'armée corporative...
Grethel: Il a fait la guerre corpo ?
Trefle: Oui, à chaque fois que j'essayais d'échanger sur ce sujet, il m'envoyait valser et la discussion s'arrêtait net, mais j'ai quand même appris son rôle.
Trefle: C'était un pilote de "Cuirasser Fantôme" et pas des moindres, il a dirigé l'unité Zero pendant un temps.
~hide("Hansel")
~show("Grethel")
Grethel: D'accord, merci pour les infos.
Grethel: On va sûrement aller lui parler après.
Trefle: De rien, mais n'oubliez pas que je suis là pour vous faire jouer aussi et ne lui dites pas que je vous ai parlé de l'armée.
{InfoCroupiercarreau && not InfoMajordometrefle && DéblocageInfoMajordometrefle:
Grethel: Je pense qu'on peut encore gratter une info, jouons encore.
->Jouertrefle
}
{InfoCroupiercarreau && not DéblocageInfoMajordometrefle:
->Jouertrefle
}
{InfoCroupiercarreau && InfoMajordometrefle:
->Jouertrefle
}
*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->CumAndPlayQuestion1Trefle
*{not  InfoMajordometrefle && DéblocageInfoMajordometrefle}[Evoquer son passé]->CumAndPlayInfoMajordometrefle


===InfoMajordometrefle
*[Parler de ses enfants]->goodchoicetrefle
*[Demander pourquoi un ancien joueur compulsif a pu attérir ici]->badchoicetrefle

-(badchoicetrefle)
~badChoice +=1
Grethel: Comment se fait-il qu'un ancien addict aux jeux se soit retrouvé en tant que croupier dans un casino ? Ce n'est pas un peu risqué ?
~face("Trefle", "Angry")
Trefle: Vous insinuez quoi par là ?
Trefle: Que je ne suis pas apte à faire ce travail ?
Grethel: Non loin de moi cette idée, mais...
Trefle: Parce que justement, étant connaisseur, je suis parfaitement à ma place et je fais du bon travail depuis que je suis là.
Trefle: Alors évitons ce genre de questions et concentrons-nous sur le jeu si vous voulez bien.
~face("Trefle", "Idle")
{not InfoCroupiercarreau && InfoMajordometrefle:
Grethel: Je pense qu'on peut encore avoir une info, jouons une fois encore.
->Jouertrefle
}
{InfoCroupiercarreau && InfoMajordometrefle:
->Jouertrefle
}
*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->CumAndPlayQuestion1Trefle
*{not InfoCroupiercarreau}[Poser une question sur le croupier Carreau]->CumAndPlayInfoCroupiercarreau

-

-(goodchoicetrefle)
~hide("Hansel")
~show("Grethel")
Grethel: On peut vous parler deux minutes ?
Trefle: Oui, enfin, ça dépend du sujet.
Grethel: Cœur nous a évoqué votre histoire, notamment celle de vos enfants...
~face("Trefle", "Smile")
Grethel: J'espère que vous pourrez les retrouver le plus rapidement possible.
~face("Trefle", "Idle")
Trefle: Moi aussi, ils me manquent beaucoup.
Grethel: Je peux vous poser une question ?
Trefle: Allez-y.
Grethel: Que deviennent les joueurs qui jouent trop ?

Trefle: Pour tout vous dire, je ne sais pas exactement.
~face("Grethel", "Inquiete")
Trefle: Je vais prendre un risque en vous disant cela, mais...
Trefle: Parfois j'entends des voix dans le réseau, comme des murmures. 
Trefle: On dirait que des joueurs continuent à parier, à jouer... Sauf qu’il n’y a plus personne dans le casino.
Grethel: Comment ça ?
Trefle: Je ne sais pas trop, mais en général les voix disparaissent lorsque le Majordome met le système du casino en maintenance.

Grethel: Je me demande ce qu'il peut manigancer. Merci en tout cas.
 ~face("Grethel", "Idle")
 
~InfoCroupierT = true
~Grethel +=1

{not InfoCroupiercarreau && InfoMajordometrefle:
Grethel: Je pense qu'on peut encore avoir une info, jouons une fois encore.
->Jouertrefle
}
{InfoCroupiercarreau && InfoMajordometrefle:
->Jouertrefle
}
*{not Question1Trefle}[Pourquoi est-il le croupier trèfle]->CumAndPlayQuestion1Trefle
*{not InfoCroupiercarreau}[Poser une question sur le croupier Carreau]->CumAndPlayInfoCroupiercarreau




===CumAndPlayInfoMajordometrefle
~Hansel +=1
~LoadScene("Blackjack") 
->InfoMajordometrefle

===CumAndPlayInfoCroupiercarreau
~Hansel +=1
~LoadScene("Blackjack") 
->InfoCroupiercarreau

===CumAndPlayQuestion1Trefle
~Hansel +=1
~LoadScene("Blackjack") 
->Question1Trefle




===UneDernierePartieTrefle
~hide("Grethel")
~show("Hansel")
Hansel: On ne peut pas partir sans une dernière petite partie, non ?
~Hansel +=1
~LoadScene("Blackjack") 

~hide("Trefle")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
Grethel: Bon, maintenant, on s'en va, il n'y a plus rien à gagner ici.
~hide("Grethel")
~show("Hansel2")
Hansel2: C'est un casino, il y a toujours quelque chose à gagner.
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

Hansel2: Attends tu as trouvé quoi comme indices ?

Grethel: Le Carreau m'a dit que beaucoup de gros joueurs ont fini par perdre la raison ici et on ne les a jamais revus.
Hansel2: Merde quoi d'autre ?
Grethel: Selon la croupière Cœur, le casino étant financé par Bargheld et EndlosNetz, il aurait dû fermer depuis longtemps, quand ces corpos ont fait faillite.
Hansel2: Comment il se finance alors ?
Grethel: Sûrement le fond de commerce caché.

Grethel: Et le Trèfle a aussi dit qu'il entendait des voix d'anciens joueurs comme s'ils étaient encore bloqués dans le système.
Hansel2: Oh non, je crois savoir ce qu'il se passe.
Grethel: Je crois que moi aussi !
Hansel2: Chut ! On devra en parler après, on doit d'abord sortir du casino avant de confronter le Majordome.
Grethel: Je suis d'accord. Voyons avec lui.
~hide("Hansel2")

~changeBg("Casino")
~show("Majordome")
Majordome: Alors, jeunes gens, tout se passe bien ?
~show("Hansel")
~hide("Grethel")
Hansel: Oui, c'était super, mais on a des choses à faire, alors on va devoir s'en aller.
Majordome: Si tôt ?
Majordome: Vous êtes sûrs d'avoir assez profité du lieu ?
Majordome: N'hésitez pas, il vous reste encore beaucoup à gagner.
~show("Grethel")
~hide("Hansel")
Grethel: Ce sera sans nous, on veut partir, on ne jouera pas plus ce soir.
Majordome: Vraiment ? Mais votre frère semble aimer jouer et il est plutôt bon.
~show("Hansel")
~hide("Grethel")
Hansel: Elle a raison, je suis raisonnable ce soir, grâce à elle.
Majordome: Si vous ne souhaitez pas jouer davantage, je ne peux vous retenir, cela va de soi.
Hansel: Alors sortez-nous.
->sousSolFin


===sousSolFin
~changeBg("Sous_sol")
Majordome: Et voilà. Je vous souhaite une bonne soirée.
Hansel: Attendez ! Maintenant, on va pouvoir discuter.
Majordome: À quel propos ?
~show("Grethel")
~hide("Hansel")
Grethel: De ce que vous faites avec les gens qui tombent dans votre piège.
Majordome: Dites-moi donc.
~show("Hansel")
~hide("Grethel")
Hansel: Vous attendez que les gens jouent trop au point où ils perdent la raison.
Hansel: Puis une fois que leur esprit est absorbé par le jeu, vous disposez de leur corps comme bon vous semble.
Hansel: Et vu l'odeur qui se dégage de la ventilation, je devine que vous désossez leur corps pour revendre leurs implants cybernétiques dans le CyberNet.
Majordome: Hum... Alors, vous n'avez pas fait que jouer.
Majordome: On a tendance à dire que la curiosité est un vilain défaut, mais dans votre cas...
Majordome: Cela vous aura bien sauvé.
Majordome: Et qu'allez-vous faire de cette information ?
~show("Grethel")
~hide("Hansel")
Grethel: On pourrait vous dénoncer aux autorités, c'est ce que mériterait quelqu'un comme vous.
Majordome: Ou alors, je vous aide à payer pour les soins de votre père.
Grethel: Comment ? Comment vous savez ça ?
Majordome: Votre frère a été assez bavard lors de sa dernière visite.
~show("Hansel")
~hide("Grethel")
Hansel: Et merde...
Majordome: Alors ? Je vous offre une opportunité en or. Le choix ne tient qu'à vous.
Hansel: Grethel, je te laisse faire ce choix.

+[Dénoncer le Majordome]->FingoodDenonce
+[Prendre l'argent]->FingoodPere


===FingoodDenonce
~show("Grethel")
~hide("Hansel")
~face("Grethel", "Enervee")
Grethel: Hors de question de prendre votre argent.
Majordome: Alors c'est ainsi, vous risquez de le regretter à l'avenir, mais c'est ainsi.
Grethel: Et vous vous finirez derrière les barreaux.
Majordome: Je saurai m'en sortir. C'est ici que nos chemins se séparent.
Majordome: Veuillez fermer la porte derrière vous.
Majordome: Il ne faudrait pas que n'importe qui tombe sur mon antre, n'est-ce pas ?
~show("Hansel")
~hide("Grethel")
Hansel: Je vous le fais pas dire...
~show("Grethel")
~hide("Hansel")
Grethel: Attendez.
Grethel: Et les croupiers ? Ce sont de véritables personnes ?
Majordome: Pourquoi ne le seraient-ils pas.
Grethel: Alors ils sont en vie...
Majordome: Vous pensez ? Libre à vous.
Majordome: Vous connaissez le chemin de la sortie, alors bon vent.
->FinDenonce




===FingoodPere
Grethel: On va prendre l'argent.
Majordome: Ah, un choix des plus raisonnables.
~show("Hansel")
~hide("Grethel")
Hansel: Comment être sûr que vous n'allez pas nous la mettre à l'envers avec l'argent ?
Majordome: Voyons, tout bon casino est régi par des règles. Qui serai-je si je ne les respectais pas moi-même. 
Majordome: Moi aussi, je prends un risque en vous laissant partir, n'oubliez pas.
Majordome: Les NeuMarks sont sur cette puce. Votre sœur peut vérifier qu'elle est bien fonctionnelle.
~show("Grethel")
~hide("Hansel")
Grethel: Laisse-moi vérifier...
Grethel: Elle est en bon état, on peut y aller.
Majordome: C'est ici que nos chemins se séparent.
Majordome: Veuillez fermer la porte derrière vous.
->FinPere


===FinDenonce
~changeBg("Ruelle")
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
~playSound("FinGood")
Hansel2: Bon...
Hansel2: Nous revoilà au point de départ et sans argent.
Grethel: Oui... mais au moins on est libre et on n'a rien à se reprocher, cette enflure a eu ce qu'elle mérite.
Hansel2: C'est sûr. On trouvera le moyen d'aider papa.
Hansel2: Au fait Grethel. Je suis désolé...
Grethel: Pourquoi ?
Hansel2: Je me suis laissé absorber par le jeu, sans toi je serais rester piégé.
Grethel: Bah tu sais, c'est pas la première fois que je te sauve la mise et sûrement pas la dernière !
Hansel2: Oh que oui ! Bon, on va chez Max ?
Grethel: Ça va encore être une sacrée histoire je le sens...
Hansel2: Mais non, fais-moi confiance !
~LoadScene("KeySceneGood")
->END


===FinPere
~changeBg("Ruelle")
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
~playSound("FinGood")
Grethel: J'espère que j'ai fait le bon choix.
Hansel2: Mais oui, on a tout ce qu'il faut pour aider papa maintenant.
Grethel: C'est sûr, mais le Majordome va continuer à sévir.
Hansel2: Écoute, on ne peut pas tout le temps jouer les héros. Surtout dans une ville comme ça.
Grethel: Tu as sûrement raison.
Hansel2: Au fait je suis désolé...
Grethel: Pour ?
Hansel2: Je me suis laissé absorber par le jeu, sans toi j'étais foutu.
Grethel: Bah tu sais, c'est pas la première fois que je te sauve la mise et sûrement pas la dernière !
Hansel2: Oh que oui ! Bon, on rentre à la maison ?
Grethel: Il est temps de retrouver papa.
Hansel2: Oui, on ne va pas le laisser seul avec cette femme je t'assure.
~LoadScene("KeySceneGood")
->END


===FingoodEscape
~changeBg("Ruelle")
~hide("Majordome")
~hide("Hansel")
~show("Hansel2")
~show("Grethel")
~playSound("FinGood")
Hansel: Bon...
Hansel: Nous revoilà au point de départ.
Grethel: Oui... mais au moins, on est libre.
Hansel: C'est sûr.
Hansel: Au fait Greth. Je suis désolé...
Hansel: Je me suis laissé absorber par le jeu, sans toi, j'étais foutu.
Grethel: Bah tu sais, c'est pas la première fois que je te sauve la mise et sûrement pas la dernière !
Hansel: Oh que oui ! Bon, on va chez Max ?
Grethel: Ça va encore être une sacrée histoire je le sens...
~LoadScene("KeySceneGood")
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
Hansel2: Bon, je vais jouer restes là si tu veux.
~hide("Hansel2")
Grethel: Attends...
Grethel: C'est pas possible....
~show("Majordome")
Majordome: Et bien, on dirait que votre frère est déjà perdu. 
Majordome: Mais je vois que ce n'est pas votre cas.
~face("Grethel", "Enervee")
Grethel: Qu'est-ce que vous manigancez ? Pourquoi vous me dites ça ?
Majordome: Car j'ai déjà compris que je ne pourrais pas vous forcer à jouer, alors pourquoi garder le secret plus longtemps.
Grethel: J'ai cru comprendre que quelque chose clochait dans le casino. 
Grethel: Et vous n'avez même pas honte de venir me le dire en face.
Grethel: Mais pourquoi ?
Majordome: Allons, allons.
Majordome: Nous devons tous vivre de quelque chose.
Majordome: J'ai été conçu pour faire jouer les gens, c'est mon but premier.
Majordome: Et je m'enrichi par la même occasion.
Grethel: Si vous aimez tant jouer alors jouons, je ne veux pas laisser mon frère entre vos sales pâtes.
Majordome: En fonction de ce que vous me proposer. Ce sera avec plaisir.
Majordome: Mais sachez que je suis impassible et sans pitié lorsqu'il s'agit de jouer.
Grethel: Ca ne m'étonne que très peu bizarrement.
Grethel: Un quitte ou double ça vous tente ? 
Grethel: Si je perd, j'accepte de devenir croupière dans votre casino.
Grethel: Sinon vous nous laissez partir avec Hansel.
Majordome: Mhh....
Majordome: C'est vrai que c'est une proposition alléchante j'aurais bien besoin de vos services.
Majordome: Alors laissez moi vous inviter à résoudre cette énigme.
->enigme

===enigme
Majordome: A ma table, nous sommes quatre, mais avons deux couleurs distinctes.
Majordome: Je suis sans visage, mais on peut me compter.
Majordome: Parmi nous je suis le plus agressif.
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
~face("Grethel", "Idle")
Majordome: On dirait que vous allez travailler pour moi jeune demoiselle.
Majordome: Ne vous en faites pas vous allez vous y plaire.
Grethel: Epargnez-moi ça.
Majordome: Allons, fixez votre attitude, elle pourrait déplaire à nos futurs clients.
Grethel: Je ne serais jamais sous votre contrôle.
Majordome: Vous êtes dans mon domaine, vous y serez contrainte. 
Majordome: Que vous le vouliez ou non.
~LoadScene("KeySceneBadMid")
->END

===midgood
~show("Grethel")
~show("Majordome")
~face("Grethel", "Idle")
Majordome: Je dois m'avouer battu cette fois-ci.
Majordome: Vous pouvez aller chercher votre frère.
Grethel: Comme ça ? Sans entourloupe ? Je ne vous crois pas.
Majordome: Que vous me croyez ou non ça ne change rien.
Majordome: Jugez moi autant que vous le voulez mais ici tout est régi par des règles.
Majordome: Il faut les respecter sinon je le jeu perd de la valeur même pour moi. 
Majordome: Partez maintenant.->FingoodEscape
