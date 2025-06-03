EXTERNAL LoadScene(string)
EXTERNAL LoadVFX(string)
INCLUDE 2d_api.ink
VAR curseur = 0
VAR carreau = false
VAR trefle = false
VAR coeur = false
VAR A = 0 
VAR objet = false
VAR etreAlleVoirUnCroupier = 0

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

~changeBg("Ruelle")
~playSound("Rain")
~playSound("WalkRain")
  Après quelques heures à marcher sous la pluie
    
    Hansel et Grethel désormais seuls, se regardent dans le blanc des yeux, d'un air livide, montrant leur désespoir.
    
    ~show("Grethel")
    
    ~show("Hansel2")
    
    ~face("Grethel", "Inquiete")
    
    Grethel: Comment on va faire ? Papa est malade et on ne peut plus rentrer chez nous.
    
    Hansel2: Greth... 
    
    Hansel2: C'est normal d'être triste, j'le suis aussi. 
    
    Hansel2: Mais faut pas qu'on se laisse abattre.
    
    Grethel: Papa... 
    
    ~face("Grethel", "Enervee")
    Grethel: Notre belle-mère est une sorcière de tout façon. 
    
    ~face("Grethel", "Inquiete")
    Grethel: Je ne veux pas le laisser seul, j'ai peur.
    
    ~face("Hansel2", "Triste")
    Hansel2: Moi aussi mais t'inquiète pas, j'ai un plan pour nous tailler d'ici.
    
    ~face("Hansel2", "Idle")
    Hansel2: Ça risque de prendre du temps mais fais-moi confiance.
    
    Hansel2: On va devoir se débrouiller seul en attendant...
    
    Hansel2: Faut trouver à manger et un lieu où squatter.
    
    ~face("Grethel", "Idle")
    
    Grethel: Vas-y j'ai confiance en toi.
    
    Hansel2: Regarde là bas y'a un vieux distributeur, on va voir ? 
    
    *[Aller voir le distributeur]->Fouiller_la_ruelle
    
    *[Demander le plan d'Hansel]->Evoquer_les_plans
    
    -(Fouiller_la_ruelle)
    
    Hansel2: J'suis sûr qu'on peut trouver quelque chose à manger dans le distributeur, vas-y moi j'vais voir ailleurs.
    
    ~face("Grethel", "Enervee")
    Grethel: NON ! 
    ~face("Grethel", "Inquiete")
    Grethel: ...
    
    Grethel: Je ne veux rester seule j'ai peur dans le noir.
    
    Grethel: Papa est entrain de mourir et j'ai nulle part où aller. 
    
    Grethel: J'ai besoin de toi au cas où il y ait une galère.
    
    Hansel2: Okay on reste ensemble. Allons voir le distributeur, tu penses que tu peux le hacker ?
    ~face("Grethel", "Idle")
    Grethel: Hmm...
    
    Hansel: Alors ?
    
    ~face("Grethel", "Enervee")
    Grethel: Je crois qu'il est foutu j'y arrive pas.
    
    Hansel2: Laisse j'vais essayer de casser la vitre avec mon implant.
    
    ~face("Grethel", "Inquiete")
    Grethel: Mais on risque de se faire cramer avec le bruit.
    
    ~face("Hansel2", "Content")
    Hansel2: T'inquiète, je gère.
    
    ~playSound("Glass")
    
    ~face("Hansel2", "Triste")
    Hansel2: Merde, c'est périmé... 
    
    Grethel: Y'a rien d'autre ?
    
    Hansel2: Nan, rien du tout. Tout est pourri, va falloir chercher ailleurs.
    
    ->Neon_ON
    
    --(Evoquer_les_plans)
    
    ~face("Hansel2", "Content")
    Hansel2: J'crois avoir un plan pour dormir ce soir.
    
    Hansel2: Mais c'est grave loin dans la ville. 
    
    ~face("Grethel", "Inquiete")
    Grethel: Tu sais que j'me sens pas à l'aise quand y'a trop de monde autour...
    
    Hansel2: T'inquiètes c'est chez un bon pote à moi.
    
    Hansel2: Il m'a sauvé de plusieurs galères, même s'il m'a foutu dans d'autres.
    
    ~face("Grethel", "Enervee")
    Grethel: Attends tu parles de Max ?! Celui qui t'a fait perdre ton bras ??
    
    ~face("Hansel2", "Triste")
    Hansel2: Ouais, on a failli crever ce jour-là... 
    
    ~face("Hansel2", "Idle")
    Hansel2: Mais il m'a sauvé et je lui dois beaucoup, il saura comment nous sortir de là.
    
    Grethel: Ça sent le plan foireux mais c'est toujours mieux que rien j'avoue.
    
    ~hide("Grethel")
    
    ~hide("Hansel2")
    
    ->Neon_ON
    
    
    ===Neon_ON
    ~show("Grethel")
    ~show("Hansel2")
    ~playSound("Neon")
    *[Observer les néons]
    ~neonOn= true
    
    ~face("Grethel", "Idle")
    Hansel2: Oula c'est bizarre tous ces néons.
    
    Grethel: Ouais, en plus il commence à être tard faut qu'on bouge.
    
    Hansel2: Attends...
    Hansel2: Regarde la porte devant, elle s'allume comme-ci elle voulait qu'on y rentre.
    Grethel: Je sais pas... c'est super bizarre
    ~face("Grethel", "Enervee")
    Grethel: Ne me dis pas que tu veux y aller ?
    ~face("Grethel", "Idle")
    Hansel2: En vrai ça peut être une bonne idée, t'en as une meilleure sinon ?
    
    ~face("Grethel", "Pensive")
    Grethel: Non... Mais j'le sent mal.
    
    Hansel2 : Allez viens, on a pas mieux actuellement.
    
    ~face("Grethel", "Idle")
    Grethel: Si on y va, tu promets de faire gaffe ?
    
    Hansel2: T'inquiètes, reste derrière moi et ça ira.
    
    ->Sous_sol
    
    ==Sous_sol
    ~LoadScene("KeySceneSous-Sol")
    ~changeBg("Sous-sol")
    ~show("Grethel")
    ~show("Hansel2")
    ~playSound("Sous-sol")
    Hansel2: Wah c'est vieux comme endroit.
    Hansel2: On dirait un vieux truc abandonné vu les toiles.
    
    Grethel: J'avoue, y'a que des vieux trucs.
    ~face("Grethel", "Pensive")
    Grethel: Et ça pue, j'pense qu'il y a un rat mort quelque part.
    ~face("Grethel", "Idle")
    Hansel2: Par contre les écrans sont allumés, c'est super bizarre.
    Hansel2: Regarde les sièges, c'est des vieux modèles de Neurolink, mais ça a l'air de fonctionner. 
    Grethel: Ah bon ? On dirait tellement pas.
    Hansel2: J'ai vu ces modèles là dans un vieux livre de papa, j'me demande ce qu'ils font ici.
    Hansel2: Par contre l'endroit est pas accueillant, j'ai l'impression qu'on m'observe
    Grethel: Ouais, moi aussi ça peur.
    
    +{not scene_full}->description
    - -(description)
    * * [Déterminer d'où vient l'odeur] Grethel: Beurk y'a vraiment un rat mort dans le coin, en plus la ventilation marche mal. ->description
    * * [Regarder autour de soi]
    Hansel2: Tout ces trucs autour de nous, ils sont vraiment d'une autre époque. 
    Hansel2: Tout est couvert de poussière. C'est vraiment l'abandon.
    
    Grethel: Tout est super vieux, on dirait que le proprio a l'âge de notre grand-père au moins. ->description
    * *(scene_full)->Objets
    ===Objets
    * [S'approcher des différents objets]
    
    Grethel: Fais attention en touchant les objets.
    
    Hansel2: Oh regarde, c'est un holo diffuseur... qui date de 2063 !
    Hansel2: C'est hyper vieux, pourquoi est-ce que c'est là ?
    
    Grethel: Ouais, c'est bizarre, regarde la boîte qui fait de la musique avec une sorte de fleur métallique. 
    Grethel: Je me demande de quand ça date.
    Grethel: Je ne sais pas, c'est préhistorique ! Les sièges sont poussiéreux y'a même du moisi dessus.
    Grethel: Regarde, tu penses il sert à quelque chose le gros bouton rouge ?
    ->arrivee_majordome
    
    
    ===arrivee_majordome
    *[Utiliser le bouton]
    ->suitemajordome
    -(suitemajordome)
    ~hide("Hansel2")
    ~show("Majordome")
    Majordome: Bonjour jeunes gens, vous m'avez appelé ?
    Majordome: Je ne vous ai pas du tout entendu entrer.
    
    ~show("Hansel2")
    ~hide("Majordome")
    ~show("Grethel")
    Grethel: Et nous on pensait que c'était abandonné.
    ~hide("Hansel2")
    ~show("Majordome")
    Majordome: Veuillez m'excuser si je vous ai fait peur, permettez-moi de me présenter. 
    Majordome: Je suis "le Majordome", gérant du prestigieux "Hexe Holle".
    
    ~hide("Grethel")
    ~show("Hansel")
    Hansel: Le Hexe Holle ? C'est quoi ?
    Majordome: C'est un casino, le plus beau de tous. 
    ~face("Majordome", "Enjoue")
    Majordome: Souhaitez vous y entrer?
    Majordome: Quels sont vos noms jeunes gens ?
    ~face("Majordome", "Idle")
    Hansel: Moi c'est Hansel et voilà ma sœur Grethel.
    
    Majordome: Ce sont de jolis noms que vous avez la !
    
    Hansel: Merci, mais comment ça y entrer ? On a pas d'argent.
    ~face("Majordome", "Enjoue")
    Majordome: Ce n'est pas grave, ici pas besoin d'argent !
    Majordome: Vous gagnez mais vous ne perdez rien ! 
    ~face("Majordome", "Idle")
    
    Hansel: Donc juste on joue et on gagne ?
    
    Majordome: Pour ça il faut déjà gagner, mais en effet c'est bien cela.
    
    ~hide("Hansel")
    ~show("Grethel")
    Grethel: Et on peut y gagner quoi ? 
    
    Majordome: De la monnaie voyons ! Des Neumarks par milliers !
    Majordome: Vous pourrez en gagner autant que vous voulez une fois connectés
    
    Grethel: Se connecter ?? Comment ça ?
    
    Majordome: Vous vous doutez bien que cet endroit n'a pas vraiment l'allure d'un prestigieux casino.
    Majordome: Tout ce joue via une interface Neurolink. Vous imaginez bien que ces sièges ne sont pas là pour rien.
    
    Grethel:...
    ~hide("Grethel")
    ~show("Hansel")
    Hansel: Oui je sais, c'est bizarre, mais fais-moi confiance, j'pense pouvoir gagner à n'importe quel jeu.
    
    Majordome: Vous êtes prêts jeunes gens ?
    
    Grethel: Oui, nous le sommes.
    
    Majordome: Je vais avoir besoin de vous synchroniser via un petit test, rien de bien compliqué pour des jeunes comme vous.
    Majordome: Asseyez vous et rendez-vous de l'autre côté.
    ->Branchement
    
    ===Branchement
    ~hide("Majordome")
    ~hide("Hansel")
    ~show("Hansel2")
    ~show("Grethel")
    *[Rentrer dans le casino]->Go
    
    -(Go)
    
    ~LoadScene("KeySceneBranchement")
     Hansel2: En avant.
~LoadScene("Puzzle 1")
    ->Hall_Casino
===Hall_Casino
Hansel2: Wow ! ça décoiffe ! 
~face("Grethel", "Enervee")
Grethel: Un labyrinthe ? Vraiment ??
~face("Grethel", "Idle")
~face("Majordome","Enjoue")
~hide("Hansel2")
~show("Majordome")
Majordome: Eh oui jeunes gens il fallait bien crypter votre arrivée ! 
~face("Majordome","Idle")
Grethel : On fait quoi maintenant qu'on est dans le casino ?
Majordome: Eh bien vous avez trois salles à disposition
Majordome: Chacune de ces salles a un croupier qui lui est attitré
~face("Grethel","Pensive")
Grethel: J'imagine qu'ils ne font pas tous le même jeu.
~face("Grethel", "Idle")
Majordome: Bien sûr sinon cela serait barbant
~face("Hansel","Content")
~hide("Grethel")
~show("Hansel")
Hansel: Est c'est quoi les jeux ? Moi j'suis là pour ça !
~face("Hansel","Idle")
Majordome: Du calme, je vous conseille de vous balader si vous voulez y rejter un coup d'oeil, je dois m'absenter quelques temps.
Majordome: Vous ne pouvez pas manquer les salles, elles ont pour nom coeur, carreau et trèfle.
~hide("Majordome")
~hide("Hansel")
->HUB

=== HUB
~hide("Hansel")
~hide("Majordome")
{etreAlleVoirUnCroupier == 1:
~playSound("Casino")
~changeBg("Casino")
~show("Grethel")
Grethel: J'espère que Hansel s'amuse bien, mais y'a un truc louche quand même.
~face("Grethel", "Inquiete")
Grethel: Un casino où on perd rien et où on ne ressort que gagnant...
~face("Grethel", "Enervee")
Grethel: En sortant de la prochaine salle j'essaierai d'espionner le majordome.
~face("Grethel", "Idle")
~show("Hansel2")
Hansel2: Je suis de retour 
Hansel2: En gagnant plusieurs fois on m'a dit quelque chose de bizarre.
Grethel: C'était quoi ? 
Hansel2: "Le silence est plus parlant que tous nos jeux."
~face("Hansel2", "Content")
Hansel2: C'est super bizarre surtout que j'arrête pas de parler !
~face("Grethel", "Pensive")
Grethel: Je me demande ce que cela voulait dire...
~face("Grethel", "Idle")
Hansel2: Allez viens on va à la prochaine salle !
~face("Hansel2", "Idle")
~hide("Hansel2")
}

{etreAlleVoirUnCroupier == 2:
~playSound("Casino")
~changeBg("Casino")
Grethel en sortant de la salle, se cacha derrière un poteau et écouta ce que le majordome disait.
~show("Majordome")
Majordome: Le petit Hansel semble déjà totalement sous mon contrôle, il est attiré si fort par l'appât du gain.
~face("Majordome", "Mesquin")
Majordome: Si je continue à le faire jouer il perdra toute envie de sortir
Majordome: Il faut encore réussir à convaincre sa soeur qui a l'air un peu plus réfléchie hmmm...
Majordome: Elle parle peu, mais comme on dit celui qui se tait en sait parfois bien plus.
~face("Majordome", "Idle")
~hide("Majordome")
~show("Grethel")
Grethel: Merde... Je me disais bien que c'était louche, il veut nous garder dans le Casino mais pourquoi...
~show("Hansel2")
~face("Hansel2", "Content")
Hansel2: C'est bon j'ai fini de m'amuser dans la salle, si tu savais combien j'ai gagné !! On aura plus jamais de soucis d'argent, je pourrais en gagner encore plus !!
~face("Hansel2", "Idle")
~face("Grethel", "Enervee")
Grethel: Hansel... On devrait arrêter la je pense que c'est trop déjà et j'ai surpris le majordome essayer de nous garder dans le casino, il veut nous rendre accro pour qu'on parte jamais !!
~face("Grethel", "Idle")
~face("Hansel2", "Content")
Hansel2: Mais non t'as dû mal entendre, il nous reste une salle à faire, allez viens ! 
~face("Hansel2", "Idle")
~hide("Hansel2")
}

{etreAlleVoirUnCroupier == 3:
~playSound("Casino")
~changeBg("Casino")
~face("Grethel", "Pensive")
Grethel: Bon... Il faut vraiment que je nous fasse sortir d'ici, mais comment... Hansel est totalement absorbé par les jeux il faut que je tente le tout pour le tout avec le majordome.
~face("Grethel", "Idle")
->FIN
}

*[Se diriger vers la salle Coeur ]->SalleCoeur
*[Se diriger vers la salle Carreau ]->SalleCarreau
*[Se diriger vers la salle Trefle ]->SalleTrefle
->FIN

===SalleCoeur
~changeBg("Coeur")
~playSound("Memory")
~DejaVenuCroupierCoeur = true
~etreAlleVoirUnCroupier +=1
~show("Grethel")
~show("Coeur")
~face("Coeur", "Contente")
Coeur: Des visiteurs ! C'est rare ! 
~face("Coeur", "Idle")
Grethel: Ah bon ? Le majordome nous a dit que c'était un endroit de prestige ici.
~face("Coeur", "Contente")
Coeur: C'était une blague voyons ! 
~face("Coeur", "Idle")
Grethel: Toutes ces cartes qui volent ! C'est super stylé ! 
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: J'avoue ça tue ! 
~face("Hansel", "Idle")
~face("Coeur", "Contente")
Coeur: Ravie que ça vous plaise, vous devinez le jeu auquel on joue sur cette table ? 
~face("Coeur", "Idle")
Hansel: Hmmm...
~hide("Hansel")
~show("Grethel")
~face("Grethel", "Pensive")
Grethel: Des cartes avec juste un gros dessin au milieu...
Grethel: Un memory ? C'est pas très courant des les casinos après.
~face("Grethel", "Idle")
~face("Coeur", "Contente")
Coeur: Eh oui c'est bien ça ! Ici tout est différent, vous ne trouverez jamais meilleur casino ! 
~face("Coeur", "Idle")
* [En quoi c'est le meilleur casino ?]->SuiteCoeur
* [Un memory ? Mais pourquoi ?]->SuiteCoeur2

===SuiteCoeur
~hide("Grethel")
~show("Hansel")
~face("Coeur", "Pensive")
Coeur: Pourquoi me dites-vous ? Car je suis dedans pardi. Moi la chanteuse de Synthex Virga suis une star !
~face("Coeur", "Idle")
~face("Hansel", "Content")
Hansel: Je pensais jamais entendre ça de ma vie WOW !!!
Hansel: Synthex Virga !!! Mon groupe préféré j'écoute vos musiques tous les jours !!! Je pourrais parler une étérnité avec vous je pense !
~face("Hansel", "Idle")
~face("Coeur", "Pensive")
Coeur: Une éternité vous dites hmmm....
~face("Coeur", "Contente")
Coeur: Essayez une partie, c'est 100% gagnant.
~playSound("Shuffle2")
~face("Coeur", "Idle")
~face("Hansel", "Content")  
Hansel: C'est sûrement une folie alors je fonce !!
~face("Hansel", "Idle")
~LoadScene("MemoryCards")
~face("Coeur", "Contente")
Coeur: Je dis bravo ! Le jeu n'est pas si simple et pourtant vous avez réussi haut la main jeune-homme.
~face("Coeur", "Idle")
~face("Hansel", "Content") 
Hansel: Ouais je sais j'ai plutôt une bonne mémoire ! 
~face("Hansel", "Idle")
~face("Coeur", "Pensive")
Coeur: Maintenant un choix s'offre à vous, voulez-vous changer de table et aller ailleurs ou bien refaire une partie ici ?
Coeur: Si jamais vous refaites une partie je peux vous offrir quelque chose que les deux autres croupiers ne peuvent pas vous donner ! 
~face("Coeur", "Idle")
~face("Hansel", "Content")
Hansel: Okay je rejoue alors !
~face("Hansel", "Idle")
~hide("Hansel")
~show("Grethel")
~face("Grethel", "Pensive")
Grethel: Je vais me balader en attendant, amuse toi bien.
~face("Grethel", "Idle")
~hide("Coeur")
->HUB



===SuiteCoeur2
~hide("Grethel")
~show("Hansel")
~face("Coeur", "Pensive")
Coeur: Pourquoi ? Mais pour entrainer votre mémoire pardi, avant d'être croupière j'étais la chanteuse de Synthex Virga.
~face("Coeur", "Contente")
Coeur: Et croyez moi, la mémoire est le plus important en tant que chanteuse, je doit le reste à mon talent.
~face("Coeur", "Idle")
~face("Hansel", "Content")
Hansel: Je pensais jamais entendre ça de ma vie WOW !!!
~face("Coeur", "Pensive")
Coeur: Quoi donc ?
Hansel: Synthex Virga !!! Mon groupe préféré j'écoute vos musiques tous les jours !!! Je pourrais parler une étérnité avec vous je pense !
~face("Hansel", "Idle")
~face("Coeur", "Contente")
Coeur: Oh mais cela pourrait bien arriver.
Coeur: Essayez une partie, c'est 100% gagnant.
~playSound("Shuffle2")
~face("Coeur", "Idle")
~face("Hansel", "Content")  
Hansel: C'est sûrement une folie alors je fonce !!
~face("Hansel", "Idle")
~LoadScene("MemoryCards")
~face("Coeur", "Contente")
Coeur: Je dis bravo ! Le jeu n'est pas si simple et pourtant vous avez réussi haut la main jeune-homme.
~face("Coeur", "Idle")
~face("Hansel", "Content") 
Hansel: Ouais je sais j'ai plutôt une bonne mémoire ! 
~face("Hansel", "Idle")
~face("Coeur", "Pensive")
Coeur: Maintenant un choix s'offre à vous, voulez-vous changer de table et aller ailleurs ou bien refaire une partie ici ?
Coeur: Si jamais vous refaites une partie je peux vous offrir quelque chose que les deux autres croupiers ne peuvent pas vous donner ! 
~face("Coeur", "Idle")
~face("Hansel", "Content")
Hansel: Okay je rejoue alors !
~face("Hansel", "Idle")
~hide("Hansel")
~show("Grethel")
~face("Grethel", "Pensive")
Grethel: Je vais me balader en attendant, amuse toi bien.
~face("Grethel", "Idle")
~hide("Coeur")
->HUB






===SalleCarreau
~changeBg("Carreau")
~playSound("Roulette")
~DejaVenuCroupierCarreau = true
~etreAlleVoirUnCroupier +=1
~hide("Hansel")
~show("Grethel")
~show("Carreau")
~face("Carreau", "Content")
Carreau: Tiens deux têtes que je ne connais pas.
~face("Carreau", "Idle")
Carreau: Bienvenue dans ma salle, la salle de la roulette, ici tout est question de chance.
~face("Grethel", "Pensive")
Grethel: Super, moi qui ait aucune chance...
~face("Grethel", "Idle")
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: On s'en fout j'peux jouer à l'infini pour gagner des Neumarks !!
~face("Hansel", "Idle")
~face("Carreau", "Content")
Carreau: Eh oui, tout est infini ici tant qu'on le veut !
~face("Carreau", "Idle")
* [Infini ? Comment ça ?]->SuiteCarreau
* [Est-ce qu'on peut gagner autre chose ?]->SuiteCarreau2

===SuiteCarreau
~face("Carreau", "Colere")
Carreau: Vous savez, j'étais pilote de cuirassé il fût un temps,
~face("Carreau", "Content")
Carreau: après avoir fait l'armée je vous assûre que rien n'est plus beau qu'à l'intérieur de ce casino.
Carreau: Ici, vous pouvez vivre une infinité de bonheur, laissez vous plonger dedans il ne peut vous arriver que de bonnes choses.
~face("Carreau", "Idle")
~face("Hansel", "Content")
Hansel: C'est sûr ! Je suis trop heureux depuis que j'suis arrivé ! J'peux jouer ?? 
~face("Hansel", "Idle")
~face("Carreau", "Content")
Carreau: Avec plaisir
~face("Carreau", "Idle")
~LoadScene("VFXRoulette")
~face("Hansel", "Content")
Hansel: La roulette c'est bien trop excitant !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Retourne te balader un peu sans moi j'arrive bientôt


~hide("Carreau")

->HUB

===SuiteCarreau2
~face("Carreau", "Content")
Carreau: Bien sûr ! Jouez ! Vous ne pourrez vous sentir que mieux ! 
Carreau: Avant ça, j'étais dans l'armée, j'étais un pilote de cuirassé, croyez moi depuis que je suis ici je découvre enfin ce qu'est le bonheur ! 
~face("Carreau", "Idle")
~face("Hansel", "Content")
Hansel: Woah c'est super stylé, j'adore jouer aussi ça me rend fou, dites j'peux jouer ?  
~face("Hansel", "Idle")
~face("Carreau", "Content")
Carreau: Avec plaisir
~face("Carreau", "Idle")
~LoadScene("VFXRoulette")
~face("Hansel", "Content")
Hansel: La roulette c'est bien trop excitant !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Retourne te balader un peu sans moi j'arrive bientôt

~hide("Carreau")

->HUB





===SalleTrefle
~changeBg("Trefle")
~playSound("Blackjack")
~DejaVenuCroupierCarreau = true
~etreAlleVoirUnCroupier +=1
~hide("Hansel2")
~hide("Majordome")
~hide("Grethel")
~show("Hansel")
~show("Trefle")
~face("Hansel", "Content")
Hansel: Oh wow des cartes qui flottent !
~face("Hansel", "Idle")
~face("Trefle", "Smile")
Trefle: Bonjour, bienvenue dans la meilleure salle tout casino confondu, ma salle de Blackjack !
~face("Trefle", "Idle")
* [C'est super vieux !]->SuiteTrefle
* [La meilleure salle ?]->SuiteTrefle2



===SuiteTrefle
Hansel: C'est super vieux comme jeu ! 
~face("Hansel", "Content")
Hansel: Mais j'adore jouer au Blackjack !! Tu te souviens quand on y jouait ensemble avec papa ? 
~face("Hansel", "Idle")
~hide("Hansel")
~show("Grethel")
Grethel: J'avoue c'était sympa, le jeu est cool, mais on a arrêté depuis que papa est tombé malade ...
Trefle: Vous me rappelez un peu mes enfants, j'en ai perdu la garde il y a bien longtemps... Mais on jouait souvent au blackjack car c'était leur jeu préféré.
~face("Trefle", "Smile")
Trefle: Jouons ensemble au nom du bon vieux temps tous ensemble alors !
~playSound("Shuffle2")
~face("Trefle", "Idle")
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: Bah voilà exactement, raison de plus pour y jouer ! 
~face("Hansel", "Idle")
Trefle: Attention par contre ce blackjack est un peu spécial laissez moi vous expliquer les règles.
~hide("Hansel")
~show("Grethel")
~face("Grethel", "Pensive")
Grethel: Comment ça ?
~face("Grethel", "Idle")
Trefle: Ici, vous devez tirer au moins 2 cartes avant de stopper et on tire chacun son tour.
Trefle: Et comme un blackjack classique, si on dépasse 21 on perd.
Trefle: Prêt ? 
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: Toujours pour un jeu ! 
~face("Hansel", "Idle")
~LoadScene("Blackjack")
{gameWin== true:
~face("Hansel", "Content")
Hansel: Personne peut me battre au blackjack !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Tu peux faire autre chose en attendant j'reste un peu ici moi.
}

{gameWin== false:
~face("Hansel", "Triste")
Hansel: Et merde, Personne est censé me battre au blackjack !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Tu peux faire autre chose en attendant j'reste un peu ici moi.
}
~hide("Trefle")
->HUB


===SuiteTrefle2
~face("Trefle", "Smile")
Trefle: Eh oui la meilleure salle, ici on joue au meilleur jeu de casino du monde ! 
~face("Trefle", "Idle")
~face("Hansel", "Content")
Hansel: J'adore jouer au Blackjack !! Tu te souviens quand on y jouait ensemble avec papa ? 
~face("Hansel", "Idle")
~hide("Hansel")
~show("Grethel")
Grethel: J'avoue c'était sympa, le jeu est cool, mais on a arrêté depuis que papa est tombé malade ...
Trefle: Vous me rappelez un peu mes enfants, j'en ai perdu la garde il y a bien longtemps... Mais on jouait souvent au blackjack car c'était leur jeu préféré.
~face("Trefle", "Smile")
Trefle: Jouons ensemble au nom du bon vieux temps tous ensemble alors !
~face("Trefle", "Idle")
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: Bah voilà exactement, raison de plus pour y jouer ! 
~face("Hansel", "Idle")
Trefle: Attention par contre ce blackjack est un peu spécial laissez moi vous expliquer les règles.
~hide("Hansel")
~show("Grethel")
~face("Grethel", "Pensive")
Grethel: Comment ça ?
~face("Grethel", "Idle")
Trefle: Ici, tant que votre score est plus bas que le mien, vous êtes obligé de tirer une carte, vous devez tirer au moins 2 cartes avant de stopper. 
Trefle: Et comme un blackjack classique, si on dépasse 21 on perd.
Trefle: Prêt ? 
~hide("Grethel")
~show("Hansel")
~face("Hansel", "Content")
Hansel: Toujours pour un jeu ! 
~face("Hansel", "Idle")
~LoadScene("Blackjack")
{gameWin== true:
~face("Hansel", "Content")
Hansel: Personne peut me battre au blackjack !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Tu peux faire autre chose en attendant j'reste un peu ici moi.
}

{gameWin== false:
~face("Hansel", "Triste")
Hansel: Et merde, Personne est censé me battre au blackjack !! J'relance direct !
~face("Hansel", "Idle")
Hansel: Tu peux faire autre chose en attendant j'reste un peu ici moi.
}
~hide("Trefle")
->HUB











===FIN
Grethel laissa Hansel dans une des salles à jouer avec un croupier, celui-ci était méconaissable, totalement avare d'argent et voulant toujours relancer une partie.
Elle décida d'aller voir le majordome et de le confronter.
~show("Grethel")
~show("Majordome")
~face("Grethel", "Enervee")
Grethel: Bon... Monsieur le majordome, je sais ce que vous nous voulez, j'ai entendu ce que vous disiez, et nous ne resterons pas dans ce casino !
~face("Majordome", "Mesquin")
Majordome: Tu es perspicace jeune fille, je savais que j'aurais dû faire plus attention à toi. 
Majordome: Ton frère est déjà totalement accro, comment comptes tu le faire s'arrêter hahahaha.
Grethel: Je le ferai pas tous mes moyens !
~face("Majordome", "Enjoue")
Majordome: Eh bien je te propose un dernier jeu alors, une petite énigme, si tu la réussis je te promets de vous laisser partir.
Grethel: Si vous me dites ça comme ça c'est qu'il y a un mais.
~face("Majordome", "Mesquin")
Majordome: En effet, si tu perds tu deviendras croupière dans ce casino sans pouvoir jamais t'échapper d'ici !
~face("Grethel", "Pensive")
Grethel: C'est d'accord, je vous écoute, de toute façon je gagnerai.
~face("Majordome", "Enjoue")
Majordome:  Parmi les trois maîtres du jeu, un seul ment toujours, un autre dit parfois la vérité, et le dernier ne parle jamais. Qui dois-tu écouter pour sortir d’ici en vie ?
*[Celui qui dit parfois la vérité ]->BADENDING
*[Celui qui ne parle jamais ]->GOODENDING
*[Celui qui ment toujours ]->BADENDING

===BADENDING
~face("Majordome", "Mesquin")
Majordome: Eh bien je crois que vous allez travailler ici très chère, de toute façon le virus au niveau de votre implant neurolink devrait bientôt vous attaquer complètement.
Majordome: J'espère que vous aimerai votre nouveau travail en tant que 4ème croupière de ce casino.
~face("Grethel", "Inquiete")
Grethel: ...
~playSound("Bad")
~LoadScene("KeySceneBadMid")
->END
===GOODENDING
~face("Majordome", "Idle")
Majordome: Une parole est une parole, vous avez réussi à trouver la bonne réponse, je vais donc vous libérer d'ici, l'argent que vous avez gagné vous revient de droit lui aussi.
~face("Grethel", "Enervee")
Grethel: Ouais et plus vite que ça !
~changeBg("Sous-sol")
Majordome: Vous voilà enfin libre, à jamais jeunes gens.
~hide("Majordome")
~show("Hansel2")
~face("Hansel2", "Triste")
Hansel2: Je comprends pas comment j'ai pu être aussi aveugle...
Grethel: C'est pas grave, on a récupéré assez d'argent pour sauver papa quand même au final, ton idée n'était pas si mauvaise.
~face("Hansel2", "Content")
Hansel2: Merci de me réconforter, allons retrouver papa
~playSound("FinGood")
~LoadScene("KeySceneGood")
->END