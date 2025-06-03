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

Grethel: Mon frère, comment allons-nous faire, papa est mourant et nous ne pouvons plus rentrer chez nous.

Hansel2: Greth... 

Hansel2: C'est normal d'être triste, et je le suis aussi. 

Hansel2: Mais il ne faut pas qu'on se laisse abattre.

Grethel: Notre père Hans... 

Grethel: Je n'ai jamais eu confiance en notre belle-mère. 

Grethel: Je ne veux pas le laisser seul, j'ai peur.

Hansel2: Moi aussi, mais ne t'inquiète pas, j'ai toujours un plan pour sortir d'ici ! 

Hansel2: Ça risque de me prendre du temps, alors fais-moi confiance.

Hansel2: En attendant, on va devoir se débrouiller seul... 

Hansel2: Et trouver de quoi manger, ainsi qu'un lieu où squatter.

~face("Grethel", "Idle")

Grethel: Tu sais que j'ai confiance en toi, alors je te suis. 

*[Aller voir le distributeur]->Fouiller_la_ruelle

*[Demander le plan à Hansel]->Evoquer_les_plans

-(Fouiller_la_ruelle)

Hansel2: Tant qu'il est encore temps, essayons de récolter des choses qui pourraient nous aider à passer la nuit. 

Hansel2: Le mieux serait d'aller chacun de notre côté.

Grethel: NON !

Grethel: ...

Grethel: Je ne veux pas qu'il t'arrive quoi que ce soit.

Grethel: Papa est sur son lit de mort et la basse ville n'est pas recommendable. 

Grethel: J'ai besoin de toi s'il m'arrive quelque chose.

Hansel2: D'accord, avançons ensemble. Commençons par ce distributeur, tu penses pouvoir le hacker ?

Grethel: Mmmhh

Hansel: Alors, qu'est-ce que ça donne ?

Grethel: Je crois qu'il est déconnecté.

Hansel2: Laisse-moi essayer de casser la vitre avec mon implant.

Grethel: Mais on risque de se faire repérer.

Hansel2: T'inquiète, je sais ce que je fais.

~playSound("glass")

Hansel2: Merde, c'est périmé... 

Grethel: Il n'y a rien d'autre ?

Hansel2: Non, rien de rien. Tout est pourri, on va devoir chercher ailleurs.

->Neon_ON

--(Evoquer_les_plans)

Hansel2: Je pense avoir un plan pour dormir ce soir.

Hansel2: Mais c'est plus loin dans la ville. 

Grethel: Hans, tu sais que je ne me sens pas à l'aise dans les quartiers bondés.

Hansel2: T'en fais pas, c'est chez une bonne connaissance. 

Hansel2: Il m'a sauvé de plusieurs mauvaises aventures, même s'il m'a entraîné dans d'autres.

Grethel: Tu parles de Max ? Celui qui t'a fait perdre ton bras ?

Hansel2: Oui, on a presque perdu la vie ce jour-là... 

Hansel2: Mais il m'a sauvé et je lui dois beaucoup, il saura comment nous sortir de là.

Grethel: Ça sent le plan foireux mais c'est toujours mieux que rien, je suppose.

~hide("Grethel")

~hide("Hansel2")

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
Hansel2: Je connais ce casino.
Hansel2: Du moins son enseigne, mais il n'était pas ici avant.
~face("Grethel", "Enervee")
Grethel: Ne me dis pas que tu veux y aller ?
~face("Grethel", "Idle")
Hansel2: Ça peut être une bonne idée, mais ils m'ont dépouillé la dernière fois et j'ai eu du mal à m'arrêter.
Grethel: Raison de plus.
Hansel2: Je suis d'humeur revancharde, notamment avec le gérant du casino. 
Hansel2: Je ne sais pas comment il a fait la dernière fois, mais il m'a vu tricher.
Grethel: Tu es juste tombé sur meilleur que toi, ça arrive même aux meilleurs.
Hansel2: Non, tu sais à quel point je suis bon dans ce domaine. Personne ne remarque jamais rien.
Hansel2: Vraiment, il était louche. Même quand il n'était pas là, je sentais sa présence et chaque partie devenait plus addictive.

Grethel: Alors comment tu en es sorti ?

Hansel2: C'est un des croupiers qui m'a aidé, j'espère qu'il y travaille encore.

Grethel: Mais pourquoi on irait là-bas si c'est dangereux ?

Hansel2: Je connais ce genre d'endroit, il s'y passe toujours plus qu'on ne le voit.
Hansel2: Ça ne m'étonnerai pas qu'il y ait une activité parallèle ou autre.
Grethel: Oh non... je sais ce que tu vas proposer.
Grethel: Et je n'aime pas trop l'idée.
Hansel2: Mais si, écoute -moi ! Il y a forcément un max de NeuMarks à se faire, ce serait le jackpot.
Hansel2: Puis on est deux et il est seul.
Hansel2: Si on fait ça bien, on pourra peut-être le faire chanter ou autre chose, mais l'occasion est trop belle pour la rater.
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
Hansel2: Ce n'est pas du tout ce à quoi je m'attendais... 
Hansel2: L'endroit semblait plus attrayant de l'extérieur.

Grethel: C'est quoi cet endroit ? Il n'y a que du vieux matos.
~face("Grethel", "Pensive")
Grethel: Et ça pue. T'es sûr que c'est bien là le casino ?
~face("Grethel", "Idle")
Hansel2: Je t'ai dit, il n'était pas ici avant. 
Hansel2: Regarde les sièges, ce sont des vieux modèles de Neurolink, mais ça a l'air de fonctionner. 
Hansel2: Jetons un coup d'œil autour, on ne sait jamais sur quoi on peut tomber.
Grethel: Ouais, tu l'as dit, j'ai l'impression d'être observé... 
Grethel: Dépêchons-nous...


+{not scene_full}->description
- -(description)
* * [Déterminer d'où vient l'odeur] Grethel: Il y a une odeur de métal et de viande pourrie venant de la ventilation. Peut-être qu'il y a une boucherie de l'autre côté ou une planque de désosseurs... ->description
* * [Regarder autour de soi]
Hansel2: Où est-ce qu'on a atterri ? C'est plein de babioles d'une autre époque. 
Hansel2: Tout est couvert de poussière. Personne ne fait le ménage ou quoi.

Grethel: Tout à l'air vieux, on dirait que le propriétaire n'a pas voulu se mettre à jour. ->description
* *(scene_full)->Objets
===Objets
* [S'approcher des différents objets]

Grethel: Fais attention en touchant les objets.
Hansel2: Oh regarde, c'est un holo-diffuseur... qui date de 2063 !
Hansel2: C'est hyper vieux, pourquoi est-ce que c'est là ?
Grethel: Oui, c'est étrange, regarde cette boîte avec une sorte de fleur métallique. 
Grethel: Ça joue de la musique, on dirait.
Hansel2: Tout a l'air vieux, les sièges sont poussiéreux et la ventilation marche à peine.
Grethel: Qui voudrait installer un casino ici sérieux ?
Grethel: Regarde, il y a un gros bouton là.
Hansel2: Appuies dessus.
->arrivee_majordome



===arrivee_majordome
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
Majordome: Je suis celui qu'on appelle "le Majordome", gérant du prestigieux "Hexe Holle".

~hide("Grethel")
~show("Hansel")
Hansel: Le Hexe Holle ? Vous avez changer d'emplacement alors.
Majordome: En effet nous... 
~face("Majordome", "Enjoue")
Majordome: Attendez, je vous reconnais jeune homme.
Majordome: Quel est votre nom déjà ?
~face("Majordome", "Idle")
Hansel: Hansel et voilà ma sœur Grethel.
Hansel: Mais pourquoi avoir changé de lieu ? Et où sont passés tous vos clients ?

Majordome: Disons que du changement s'imposait, nouveau quartier veut dire nouveaux clients.
Hansel: Oui, mais des clients moins riches, quel intérêt ?

Majordome: J'ai mes raisons.
Majordome: Bon que me vaut votre présence ?

Hansel: On est là pour jouer évidemment.
Majordome: Quelle monnaie voulez-vous utiliser pour entrer ?

~hide("Hansel")
~show("Grethel")
Grethel: Il me reste des métadonnées à mettre en jeu, mais je préfère qu'on gagne des NeuMarks.

Majordome: Pas de problème pour moi.
Majordome: La transaction se fera lorsque vous vous connecterez au casino.

Grethel: Se connecter ?? Comment ça ?

Majordome: Vous vous doutez bien que cet endroit n'a pas vraiment l'allure d'un prestigieux casino.
Majordome: Tout ce joue via une interface Neurolink. Votre frère à l'habitude, ne vous en faites pas.

Grethel:...
~hide("Grethel")
~show("Hansel")
Hansel: Oui je sais, c'est bizarre, mais fais-moi confiance.

Majordome: Bon j'espère que cette soirée se passera mieux que la dernière, n'est-ce pas ?

Hansel: Oui, j'y compte bien.

Majordome: Cela dit, vous êtes accompagné cette fois.
Majordome: Je vais avoir besoin de vous synchronyser via un petit test, rien de bien compliqué pour des jeunes comme vous.
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
Hansel2: Moi je joue et j'essaye de gagner un max, mais surtout, j'essaye de détourner l'attention du Majordome.
Hansel2: Pendant ce temps, toi, tu en profites pour parler avec les croupiers, ils savent sûrement des choses.
Hansel2: Que ce soit sur le Majordome ou le casino.
Grethel: J'assure tes arrières, t'en fais pas.
Grethel: Je vais surtout essayer d'en savoir plus sur ce Majordome, il m'inspire pas confiance.
Hansel2: Non à moi non plus.
Hansel2: Surtout sois efficace, essaye de poser les bonnes questions parce que tu me connais si je joue trop...
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
{ConvNul && Question2Coeur && Question1Trefle && Grethel >=2:
->CurseurMid
- else:
->prehubMajordome
}


===prehubMajordome
{InfoCroupiercarreau:
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
{ConvNul:
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
{ConvNul:
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
{Question2Coeur:
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
{Question1Trefle:
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
Majordome: L'arrivée au casino est un peu déroutante au début, ne vous en faites pas... 
Majordome: Ça change de mon antre, n'est-ce pas ?

Grethel: C'est... impressionnant, en effet.

Majordome: Effectivement, mes visiteurs sont souvent ébahis en arrivant. 
Majordome: J'en suis plutôt fier d'ailleurs, ça veut dire que mon casino fait une bonne première impression.
~hide("Grethel")
~show("Hansel")
Majordome: Comme vous pouvez le constater, nous nous trouvons à l'entrée. 
Majordome: C'est d'ici que vous pouvez accéder à nos différents jeux. 
Majordome: Malheureusement, je n'ai que 3 jeux à vous proposer aujourd'hui. 
Majordome: Les divers croupiers du casino expliqueront bien mieux que moi les jeux auxquels ils sont attribués. 

Hansel: Le croupier Trèfle travaille toujours ici ?

Majordome: Oh oui, il s'occupe du blackjack.
Majordome: Comme promis, vous pourrez gagner des Neumark pour chaque manche remportée.

Hansel: Très bien. 
~hide("Hansel")
~show("Grethel")
Grethel: Comment se passent les mises ? Nous n'avons pas un rond sur nous.
Majordome: Il n'y a pas de contrepartie, ici vous jouez pour gagner et seulement gagner, vous ne pouvez pas perdre d'argent.
Grethel: Mais alors, comment fonctionne le casino ?

Majordome: Il tourne sur les fonds d'investissement de grandes entreprises, telles que Bargeld et Endlos Netz. 
Majordome: Malheureusement à cause de la crise économique, nous avons dû fermer une partie des jeux à disposition.
->suite2
-
-(suite2)
~hide("Grethel")
~show("Hansel")
Hansel: On peut rester autant qu'on veut ?

Majordome: Évidemment, jouez autant que vous le souhaitez. Si vous avez la moindre question, je reste à votre disposition.

Hansel: Parfait, alors allons jouer.
~hide("Hansel")
~show("Grethel")
~show("Hansel2")
~hide("Majordome")
Hansel: On devrait peut-être aller voir Trèfle en premier, je le connais un peu.
Hansel: Et je suis plutôt bon au blackjack.

Grethel: D'accord, joues, de mon côté, je vais essayer d'en apprendre plus.
->hubMajordome




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
Grethel: Te revoilà Hans tout va bien ?
Hansel2: Ouais, c'est nickel, j'ai encore gagné.
}


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

Carreau: ...

~hide("Grethel")
~show("Hansel")
Hansel: Euh, bonjour ?
Carreau: Oups, excusez-moi, j'étais perdu dans mes pensées. Il faut croire qu'on ne voit pas souvent du monde par ici.

~show("Grethel")
~hide("Hansel")
Grethel: Ah bon ? Je croyais que le casino était populaire dans le milieu.

Carreau: Populaire ? Qui vous a dit ça ?
~hide("Grethel")
~show("Hansel")
Hansel: Votre collègue à l'entrée.

Carreau: Ça ne m'étonne pas de lui. 
Carreau: Enfin bref, j'imagine que vous êtes ici pour jouer, non ?

Hansel: Évidemment, je suis bouillant ! 
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

*[Lui demander s'il connait bien ses collègues]->PasEncoreJouer
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
Grethel: D'accord, on y va de ce pas.
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

*{not InfoCroupierCoeur}[Lui demander s'il connait bien ses collègues]->InfoCroupierCoeur
*{not ConvNul}[Demander d'où il vient]->ConvNul
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome 


===ConvNul
~hide("Hansel")
~show("Grethel")
Grethel: Et vous êtes né ici ?

Carreau: Par ici, vous voulez dire en Allemagne ?

Grethel: Oui.

Carreau: Malheureusement, oui, comme beaucoup de gens.

~hide("Grethel")
~show("Hansel")
Hansel: Vous n'aimez vraiment pas cette ville, j'ai l'impression.

Carreau: Qui peut bien aimer ? 
Carreau: Naître ici ça revient à jouer à pile ou face dès la naissance, soit on grandit dans la haute ville.
Carreau: Soit, on étouffe ici dans les quartiers bas.

~hide("Hansel")
~show("Grethel")
Grethel: Oui... faut croire que notre pièce est mal tombée.

*{not InfoCroupierCoeur}[Lui demander s'il connait bien ses collègues]->HopHopHop
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->HopHopHop

-(HopHopHop)
Carreau: Oh là, jeunes gens, je vous ai dit une question à la fois.
Carreau: Une partie et ensuite une question.
~Hansel +=1
~LoadScene("VFXRoulette")

Grethel: Une question maintenant.


*{not InfoCroupierCoeur}[Lui demander s'il connait bien ses collègues]->InfoCroupierCoeur
*{not InfoMajordome && DéblocageInfoMajordomeCarreau}[Lui parler de ses voyages]->InfoMajordome





===InfoMajordome
*[Demander comment il connait le croupier trèfle.]->goodChoiceCarr
*[Évoquer son passé au sein de la milice corpo durant la guerre.]->badChoiceCarr

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
->JouerCarreau
}
{InfoCroupierCoeur && InfoMajordome:
->JouerCarreau
}
*{not InfoCroupierCoeur}[Lui demander s'il connait bien ses collègues]->CumAndPlayInfoCroupierCoeur
*{not ConvNul}[Demander d'où il vient]->CumAndPlayConvNul
-

-(goodChoiceCarr)
~hide("Hansel")
~show("Grethel")
Grethel: Apparemment, vous connaissez le croupier Trèfle ?

Carreau: Ce jeune-là ? Oui, pourquoi ?
~hide("Grethel")
~show("Hansel")
Hansel: Il nous a dit que vous étiez arrivé ici le premier, c'est vrai ?
Carreau: Le premier, j'en doute, il y en a eu quelques-uns avant moi
~hide("Hansel")
~show("Grethel")
Grethel: Vous avez beaucoup voyagé auparavant, non ?
~face("Carreau", "Content")
Carreau: En effet, j'ai eu cette chance-là, mais pourquoi ces questions ?

Grethel: On n'en a jamais eu l'occasion nous... et je suis pas sûr qu'on en ait une un jour.

Carreau: Je comprends, écoutez, mon voyage en Asie est celui qui m'a le plus marqué, si ça vous intéresse autant.
~hide("Grethel")
~show("Hansel")
Hansel: L'Asie ? Toute l'Asie ?
Carreau: À peu près partout, oui, je suis parti plus d'un an.
Carreau: A cette époque, on voyageait plus facilement, donc j'ai eu tout le temps qu'il me fallait et autant vous dire que j'y serais bien resté. 
Carreau: C'est un tel dépaysement et la nourriture, que dire, je crois que c'est ce qui me manque le plus au monde.

~hide("Hansel")
~show("Grethel")
Grethel: Vous en parlez avec tellement de passion, alors pourquoi ne pas y retourner ?

Carreau: C'est une histoire plus compliquée qu'elle n'en a l'air, je cherchais avant tout à m'évader et à me sortir d'une période sombre que je venais de traverser.
~face("Carreau", "Idle")
Grethel: Je comprends. J'en profite, mais je peux vous poser une question ?

Carreau: Oui allez-y, je me suis remémoré de bons souvenirs grâce à vous.

Grethel: Je m'interroge sur le Majordome, on dirait qu'il nous cache quelque chose.

Carreau: Bon écoutez... 
Carreau: Le Majordome, je le connais depuis l'époque du Kristallkugel Palace. Il s'appelle Herz, c'est un androïde autonome. 
Carreau: À la fermeture du Palace il s'est retrouvé comme tous les croupiers à la rue et nous nous sommes perdus de vue pendant plusieurs années. 
Carreau: Puis, il y a quelques mois, j'ai vu une annonce de job de croupier pour un soi-disant casino, et évidemment, qui ai-je retrouvé en allant voir sur place ? 
Carreau: Ce bon vieux Herz, autoproclamé "Majordome", je n'ai sûrement pas fait attention à ce moment-là, mais il parlait et se comportait différemment du Herz que je connaissais. 
Carreau: J'ai néanmoins accepté de travailler pour lui, étant ma seule option.
~face("Grethel", "Inquiete")
Grethel: Donc vous pensez que c'est toujours le même Herz ?

Carreau: C'est dur à dire, mais je m'en méfierai quand même, après tout, ces androïdes sont créés pour être les plus attractifs possible.
Carreau: C'est facile pour eux d'amadouer des joueurs.
Grethel: Mais du coup où sont les joueurs ?

Carreau: Autrefois, les joueurs perdaient et partaient, mais ils revenaient.
Carreau: Maintenant, on ne les voit plus repartir. On dit qu’ils gagnent gros et qu’ils préfèrent rester. 
Carreau: Moi, je vois surtout leurs pensées s'en aller comme s'ils abandonnaient toute conscience.
Carreau: On ne les revoit plus après ça.

Grethel: D'accord, on fera attention en sa présence. Merci.

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
*{not InfoCroupierCoeur}[Lui demander s'il connait bien ses collègues]->CumAndPlayInfoCroupierCoeur
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
Grethel: Et sinon, vous connaissez bien vos autres collègues ?

Carreau: Je connais les deux, mais Trèfle et moi, on ne se parle plus trop, surtout qu'avec le temps on n'a plus grand-chose à se dire.

Grethel: Alors vous savez des choses sur Cœur ?
Carreau: Assez peu, mais récemment, on a eu l'occasion de bien parler.
Carreau: Elle est assez troublée à cause de son défunt mari, donc j'évite de lui en parler vu l'état dans lequel ça la met. 
Carreau: Les seules fois où je l'ai vu sourire, c'était quand on parlait de son ancien groupe de musique. Par contre le nom, je ne m'en souviens pas.
Carreau: Il me semble que c'est un truc du genre Syne Fierga ou dans ce style.

Grethel: SYNTHEX VIRGA ? Le Synthex Virga ??? Mais j'écoute encore leurs chansons en boucle sur mon RadioLink !

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
Coeur: Vous êtes là pour jouer, c'est ça ?
+[Oui]->Oui
+[Non]->Non

-(Non)
Coeur: Allons allons, pourquoi êtes-vous ici alors ?
~playSound("Shuffle2")
->suite3
-
-(Oui)
Coeur: Alors jouons.
~playSound("Shuffle2")
->suite3
-
-(suite3)
Grethel: On dirait qu'elle veut nous dépêcher.
~hide("Coeur")
~show("Hansel2")

Hansel: C'est clair.
~hide("Hansel2")
~show("Coeur")
Coeur: Ici vous jouerez au memory. 
Coeur: Le jeu est simple. 
Coeur: Il vous faut constituer des paires de cartes. 
Coeur: Vous retournez deux cartes, si elles sont identiques, alors vous les laissez faces retournées.
~face("Coeur", "Pensive")
Coeur: ...
~face("Coeur", "Idle")
Coeur: Sinon, vous les retournez face cachée. L'objectif est de trouver toutes les paires.

Grethel: Ça va ? Vous avez l'air d'avoir eu une absence.

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
{InfoCroupiertrefle &&  not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dit pour le moment.
Coeur: Vous devriez aller voir mon collègue trefle, il s'occupe du blackjack.
Grethel: D'accord, on y va de ce pas.
->hubMajordome
}


Coeur: Quel bon vent vous ramène ici ?
Coeur: Puis-ce que vous êtes là, vous connaissez les règles, alors faisons une partie.
->jouerCC0



===PaspossibleQuestionCoeur
~show("Grethel")
~hide("Hansel")
~hide("Hansel2")
~show("Coeur")
Coeur: Désolé, je ne peux pas répondre à quoique ce soit avant que vous ayez joué.
{CroupierCarreaux || CroupierTrefle:
Coeur: Pourtant, mes collègues ont sûrement dû vous le dire.
}
~hide("Coeur")
~show("Hansel2")
Grethel: Bon, on dirait qu'il va falloir jouer Hans.
->jouerCC0



===jouerCC0
{InfoCroupiertrefle && InfoMajordomeviaCCO:
Coeur: Vous feriez mieux d'aller voir mes collègues. 
Grethel: Merci on y va tout de suite.
->CheckVariablePourFin
}
{InfoCroupiertrefle && not DéblocageInfoMajordomeCCO:
Coeur: Je crois que je vous ai tout dit pour le moment.
Coeur: Vous devriez aller voir mon collègue trefle, il s'occupe du blackjack.
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



*{not Question2Coeur}[Demander comment elle maîtrise aussi bien les cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander si elle se sent proche des autres croupiers]->InfoCroupiertrefle
*{not InfoMajordomeviaCCO && DéblocageInfoMajordomeCCO}[Lui parler du groupe Synthex Virga]->InfoMajordomeviaCCO



===Question2Coeur
~Question1CCO +=1
~hide("Hansel")
~show("Grethel")
Grethel: On voit que vous maîtrisez les cartes, j'imagine que ça demande une certaine expertise ?

~hide("Grethel")
~show("Hansel")
Hansel: Ça veut dire qu'on va pouvoir jouer plus rapidement.
Coeur: On peut dire ça, oui, ça fait quelque temps que je suis là.
~hide("Hansel")
~show("Grethel")
Grethel: J'imagine oui, vous sauriez dire depuis combien de temps ?

Coeur: Depuis quelques mois.
Coeur: Si on s'investit, on progresse plutôt rapidement dans le métier.
~hide("Grethel")
~show("Hansel")
Hansel: On rejoue ! Je veux assister à une nouvelle démonstration de vos talents.
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
Grethel: Vous ne travaillez pas toute seule ici, il me semble, l'ambiance est bonne ?

Coeur: Oui, on peut dire ça, je suis plus proche du croupier trèfle que du carreau, mais on s'entend plutôt bien tous les trois.

Grethel: Qu'est-ce que vous entendez par plus proche du trèfle ?

Coeur: On partage tous les deux de vieilles cicatrices.

Grethel: Oui j'avais cru comprendre dans notre conversation.

Coeur: Il a eu de gros problèmes d'addictions plus jeune. C'est comme ça qu'il a atterrit ici. 
Coeur: Mais tout ça lui pèse encore beaucoup, alors évitez le sujet avec lui. 
Coeur: Ça lui fait vraiment mal de voir les gens sombrer dans l'addiction en venant ici. 
Coeur: Mais il me parle souvent de ses enfants dont il a perdu la garde, il espère de tout cœur les revoir un jour.

Grethel: Nous aussi, nous espérons pouvoir revoir notre père. 
Grethel: Notre belle-mère nous a mis à la porte en nous disant de ne jamais revenir…

Coeur: J'espère de tout cœur que vous trouverez une solution, l'amour d'un parent n'est pas quelque chose de remplaçable.
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

Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite pliée.}
*{not InfoMajordomeviaCCO && DéblocageInfoMajordomeCCO}[Lui parler du groupe Synthex Virga]->InfoMajordomeviaCCO
*{not Question2Coeur}[Demander comment elle maîtrise aussi bien les cartes]->Question2Coeur




===InfoMajordomeviaCCO
*[Demander si elle était bien la chanteuse du groupe Synthex Virga]->goodChoicecoeur
*[Demander comment était le groupe de musique avec son mari]->badChoicecoeur

-(goodChoicecoeur)

~hide("Hansel")
~show("Grethel")
Grethel: Le croupier Carreau nous a dit que vous étiez la chanteuse du groupe Synthex Virga ?!

Coeur: Ah, il ne sait pas tenir sa langue, celui-là.

Grethel: C'est incroyable ! Je suis fan de votre groupe !

Coeur: C'est vrai que c'était une époque magnifique, on était libre, passionné et populaire.

Grethel: Mais... 
Grethel: Pourquoi avoir mis fin au groupe si tout se passait si bien ?
Grethel: Une tournée était annoncée en plus.
~face("Coeur","Pensive")
Coeur: ...
Coeur: C'est compliqué.

Grethel: Comment ça ?

Coeur: C'est en lien avec mon mari... et ce maudit accident.
~face("Grethel","inquiete")
Grethel: Ah, désolé, ne vous sentez pas obligée d'en parler.

Coeur: Non, ça va. C'est juste que...
~face("Grethel","Idle")
Coeur: Avec le travail, j'arrive à me distraire, mais ça fait bientôt un an que c'est arrivé.
Coeur: Mais cet événement reste ancré en moi. Maudites corpos... 
Grethel: Quelles corpos ?
Coeur: Bargeld et Endlos Netz. Ils ont tout fait pour étouffer l'incident.
Coeur: C'était pendant une représentation d'un de leurs concerts privés, soi-disant caritatif. 
Coeur: Il était contre l'idée de supporter ces corpos, mais l'occasion était trop belle alors je lui ai forcé la main...
Coeur: Je me sens tellement responsable de sa mort.

Grethel: Vous vous faites du mal, on ne peut tout contrôler.
Grethel: Je ne pense pas que votre mari aurait voulu que vous remettiez la faute sur vous.
~face("Coeur", "Idle")
Coeur: Oui vous avez sûrement raison...
Coeur: Merci pour ces mots réconfortants, dites-moi si je peux vous aider d'une quelquonque manière.

Grethel: J'aimerais vous poser une question justement.
Grethel: Le Majordome nous a dit que le casino était financé par des corpos ce qui explique qu'on ne mise rien.
Coeur: Quelles corporations ? Bergeld et EndlosNetz ?
Grethel: Oui, c'est ce qu'il a dit.
Coeur: Il me semble qu'avec la crise, ces corporations ont fait faillite. 
Coeur: Si c'est vraiment le cas, ce casino aurait dû fermer comme tous les autres. 
Grethel: C'est étrange qu'il soit encore fonctionnel. Et d'où viennent les finances alors ?
Coeur: Aucune idée. Mais pas un mot au majordome où vous risquez gros.

Grethel: Bon, je me demande ce qu'il se passe. Merci pour l'info.

~Grethel +=1
~InfoCroupierCCO = true

{InfoMajordomeviaCCO && InfoCroupiertrefle:
->jouerCC0
}

Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite pliée.}

*{not Question2Coeur}[Demander comment elle maîtrise aussi bien les cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander si elle se sent proche des autres croupiers]->InfoCroupiertrefle


-(badChoicecoeur)
~face("Coeur", "Enervee")

Grethel: J'ai entendu dire que vous aviez un groupe de musique avec votre mari.

Coeur: C'est le croupier carreau qui vous a dit ça ? Pourtant, il a sûrement dû aussi vous dire d'éviter le sujet. 
Coeur: C'est encore douloureux et ça le sera certainement toujours. 
Coeur: Merci de ne pas me reposer de question là-dessus.
Grethel: Excusez-nous.
Grethel: ....
Coeur: Revenons au jeu, voulez-vous.
~face("Coeur", "Idle")


{InfoMajordomeviaCCO && InfoCroupiertrefle:
->jouerCC0
}

Hansel: Pose une autre question pendant que je joue, {c'est pas grave.|ne t'en fais pas.| elle sera vite pliée.}

*{not Question2Coeur}[Demander comment elle maîtrise aussi bien les cartes]->Question2Coeur
*{not InfoCroupiertrefle}[Lui demander si elle se sent proche des autres croupiers]->InfoCroupiertrefle









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

Trefle: Le Majordome t'a laissé entrer ? Vu la dernière fois, ça me surprend.

Hansel: Faut croire que oui, en même temps y a pas foule non plus.
~hide("Hansel")
~show("Grethel")
Grethel: C'est quel jeu ici ?
Trefle: Moi je m'occupe du blackjack, un jeu de cartes qui remonte à l'époque du Far-West.

Grethel: Ah, mais je connais ce jeu, je l'ai vu dans les vieux films que notre père adore.
Grethel: Par contre, je veux bien qu'on me réexplique les règles.

Trefle: Bien sûr, le but, c'est de me battre en obtenant un nombre supérieur au mien sans jamais dépasser 21. 
Trefle: Chaque carte numérotée vaut sa valeur et les figures valent 10.
Trefle: Au début, chacun de nous reçoit deux cartes. 
Trefle: Le joueur peut ensuite "tirer une carte" ou "rester". 
Trefle: Le croupier doit tirer jusqu’à atteindre au moins 17. Si un joueur dépasse 21, il perd automatiquement.
Trefle: Voilà tout ce qu'il faut savoir, vous êtes partant pour une partie ?
Grethel: Est-ce qu'on peut vous poser des questions ou non ?
Trefle: Bien sûr, mais je ne pourrais pas y répondre tant que vous n'avez pas fait une partie.
Trefle: Sinon on va dire que je ne fais pas assez jouer les clients.
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
Grethel: D'accord on s'y dépêche.
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
Grethel: …
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
Grethel: Par hasard, vous auriez des infos sur le croupier carreau ?
Grethel: Il m'intrigue, j'aimerais bien parler avec lui et apparemment vous le connaissez.
Trefle: Ce bon vieux Carreau, oui, je le connais.
Trefle: Il était déjà là quand je suis arrivé, on a eu l'occasion de discuter un bon nombre de fois.
Grethel: Il y a des sujets qui l'intéressent particulièrement ?
Trefle: Alors ça, oui, notamment ses nombreux voyages. Quand il en parle, il a des étoiles pleins les yeux.
Trefle: Il faut croire que ça lui remémore des bons souvenirs, contrairement à son passage dans l'armée corporative...
Grethel: Il a fait la guerre corpo ?
Trefle: Oui, à chaque fois que j'essayais d'échanger sur ce sujet, il m'envoyait valser et la discussion s'arrêtait net, mais j'ai quand même appris son rôle.
Trefle: C'était un pilote de "Cuirasser Fantôme" et pas des moindres, il a dirigé l'unité Zero pendant un temps.
~hide("Grethel")
~show("Hansel")
Hansel: Vraiment ?!
Hansel: Mais ce sont des légendes, ces soldats !
Hansel: Il y a même eu un film sur eux ?
~hide("Hansel")
~show("Grethel")
Grethel: Oui ! Ça me dit quelque chose, on a dû le voir avec papa...
Grethel: En tout cas, merci pour les infos.
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
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->CumAndPlayInfoCroupiercarreau

-

-(goodchoicetrefle)
~hide("Hansel")
~show("Grethel")
Grethel: On peut vous parler deux minutes ?
Trefle: Oui, enfin, ça dépend du sujet.
Grethel: Cœur nous a évoqué votre histoire, notamment celle de vos enfants...
Trefle: D'accord, si vous y tenez, c'est vrai que je n'y pense plus trop en ce moment.
Grethel: Ils s'appellent comment vos petits ?
Trefle: Sofia et Gustav...
~hide("Grethel")
~show("Hansel")
~face("Trefle", "Smile")
Hansel: Bon choix de prénoms.
Trefle: Merci, c'était le choix de mon épouse.
~hide("Hansel")
~show("Grethel")
Grethel: Et quel âge ont-ils ?
Trefle: Ma fille doit avoir à peu près ton âge, quant à mon fils, et bien... Il devrait avoir 13 ans cette année.
Grethel: Mais vous n'avez plus de nouvelles d'eux ?
~face("Trefle", "Idle")
Trefle: En fait, ils sont partis avec ma femme… enfin, ex-femme.
~hide("Grethel")
~show("Hansel")
Hansel: Ouais ça doit compliquer les choses.
~hide("Hansel")
~show("Grethel")
Grethel: Vous avez pu les contacter ? Ne serait-ce que par Visio ? Au moins, vous auriez des nouvelles.
Trefle: J'ai bien essayé, croyez-moi, mais elle a coupé tous les ponts avant de partir.
Trefle: Je ne sais même pas s'ils sont encore en ville.
Grethel: Ça doit pas être facile pour vous, j'en suis désolée... 
Grethel: Je vous souhaite de retrouver vos enfants.
Grethel: Si c'est dur pour vous, ça doit l'être aussi pour eux.
Trefle: Merci pour ces mots, et si vous aviez quelque chose à me demander, faites-le maintenant.

Grethel: Mon frère dit que le casino n'était pas ici avant. Pourquoi avoir changé ?
Trefle: Hein ? Comment ça ?
Trefle: J'ai pas le souvenir de mettre déplacé.
~face("Grethel", "Inquiete")
Trefle: Il faut dire que ça fait longtemps que je ne suis pas sorti, mais normalement, le gérant nous dit quand nos horaires sont terminés.
Trefle: À moins qu'il ne l'ait fait pendant la maintenance.
Grethel: C'est bizarre comme fonctionnement...

Grethel: J'aimerais vous poser une autre question justement.
Trefle: Très bien mais une dernière alors.
Grethel: Que deviennent les joueurs qui jouent trop ?

Trefle: Pour tout vous dire, je ne sais pas exactement.
Trefle: Je vais prendre un risque en vous disant cela, mais...
Trefle: Parfois j'entends des voix dans le réseau, comme des murmures. 
Trefle: On dirait que des joueurs continuent à parier, à jouer... sauf qu’il n’y a plus personne dans le casino.
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
*{not InfoCroupiercarreau}[Poser une question sur le Croupier Carreau]->CumAndPlayInfoCroupiercarreau




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

Grethel: Le croupier Carreau m'a dit que le Majordome s'appelait Herz, ils ont travaillé ensemble dans l'ancien Krystalkugell.
Grethel: D'après lui, le Majordome est bien différent de celui qu'il a connu.
Grethel: Il m'a aussi dit que beaucoup de gros joueurs ont fini par perdre la raison ici et on ne les a jamais revus.
Hansel2: Merde quoi d'autre ?
Grethel: Selon la croupière Cœur, le casino étant financé par Bargheld et EndlosNetz, il aurait dû fermer depuis longtemps, quand ces corpos ont fait faillite.
Hansel2: Comment il se finance alors ?
Grethel: Un fond de commerce caché j'imagine.
Grethel: Et le Trèfle n'était même pas au courant que le casino s'était déplacé.
Grethel: Le Majordome n'en a même pas parlé à ses employés, il doit avoir une bonne raison de leur cacher.
Grethel: Il a aussi dit qu'il entendait des voix d'anciens joueurs comme s'ils étaient encore dans le système.
Hansel2: Oh non, je crois savoir ce qu'il se passe.
Grethel: Je crois que moi aussi !
Hansel2: Chut ! On devra en parler après, on doit d'abord sortir du casino numérique avant de confronter le Majordome.
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
Majordome: Votre frère a été assez bavard lors de sa dernière venue.
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
Grethel: Non pas vraiment mais j'ai juste un mauvais pressentiment.
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

Hansel: C'est maigre comme indices.
Hansel: Franchement je pense que y a pas de quoi s'inquiéter, en plus je suis en veine.
Grethel: Tu veux vraiment continuer ?
Hansel: Mais oui. Fais moi confiance et toi aussi joues !
Grethel: Bon si tu le sens alors...
~hide("Hansel")
~hide("Grethel")

Quelques parties plus tard...

~show("Majordome")
Majordome: Eh bien !
Majordome: On dirait que vous n'êtes pas prêt de vous en aller...
Majordome: Il faut dire que mon casino est l'endroit rêvé pour des joueurs tels que vous.
Majordome: On y joue.
Majordome: On y gagne.
Majordome: Et on y reste !
~LoadScene("KeySceneBad")

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
Grethel: Un quitte ou double ça vous tente ? Si je perd, j'accepte de devenir croupière dans votre casino.
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
Majordome: Que vous me croyez ou non ça ne change rien, jugez moi autant que vous le voulez mais ici tout est régi par des règles.
Majordome: Il faut les respecter sinon je le jeu perd de la valeur même pour moi. Partez maintenant.->FingoodEscape
