VAR DéblocageInfoCroupierCoeur = 0
VAR InfoCroupierCarreau = false
VAR DejaVenuCroupierCarreau = false
VAR DéblocageInfoMajordome = false
 Le croupier se trouve au fond de la pièce, c'est tout droit vous ne pouvez pas le louper.->HUB
===HUB
+[CroupierCarreau]->CroupierCarreaux
+[CroupierTrefle]->CroupierTrefle

===CroupierCarreaux
{DejaVenuCroupierCarreau:
C'est encore vous, asseyez vous et jouons.
}
{not DejaVenuCroupierCarreau:
...
H : euh bonjour ?
Car: Oups, excusez moi j'étais perdu dans mes pensées, faut croire qu'on ne voit pas souvent du monde par ici..
G : Ah bon? je croyais que le casino était populaire dans le milieu.
Car: Populaire ? qui vous a dit ça ?
H : Votre collègue à l'entrée
Car: ça ne m'étonne pas de lui. Enfin bref j'imagine que vous êtes ici pour jouer, non ?
H : Evidemment, je suis bouillant ! C'est quoi les règles ?
Car : Oh et bien le jeu n'est pas très compliqué, il s'agit de miser sur un élément de la roue, cela peut être la couleur, Pair ou impair ou bien la case verte et si la bille atterrit sur la bonne case vous remportez la mise.
G : Donc c'est uniquement de la chance..
Car : Et bien oui, ici c'est un casino après tout
H : C'est parfait je me sens particulièrement chanceux en ce moment
G : J'aurais pas dis ça
Car : Alors, vous jouez ?
JEU
~DejaVenuCroupierCarreau = true
}
-(jouer)
Jouez mes couilles
//Fonction jouer jsp débrouille-toi
-
J'espère que vous vous amusez bien, dites moi s'il vous faut quoi que se soit, je serais heureux de vous aider
+[Oui]->jouer
+[Interroger]->Conversation1
+[Hub]->HUB



===Conversation1
*[bdbthd]->age
*[evtrhevtrhg]->plat
+[HUB]->HUB

*{InfoCroupierCarreau}[infomajor]->InfoMajordome


*{DéblocageInfoCroupierCoeur >= 2}[info croup coeur]->InfoCroupierCoeur

*{DéblocageInfoCroupierCoeur <=1}[choix blc]->origine

-(plat)
blabla
~DéblocageInfoCroupierCoeur += 1
->Conversation1
-

-(age)
blabla
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
->Conversation1

-(badChoiceCarr)
G : Il paraît que vous étiez dans la milice Corpo pendant la guerre ?
Car : Comment vous savez ? C'est encore trèfle qui sait pas tenir sa langue j'imagine..
G : Peut-être, j'étais curieuse de savoir comment un ancien pilote de "Cuirasser Fantôme" aussi réputé que vous avez pu atterrir ici.
Car : Ecoutez y a rien a savoir, ce qu'il s'est passé là-bas c'est du passé et j'ai aucune envie d'en parler, la Guerre ça n'a rien de glorieux c'est tout ce que je peux dire. Evitons les questions trop personnels et concentrons nous sur le jeu.
->Conversation1
-

-(goodChoiceCarr)
G : Apparemment vous connaissez le croupier Trèfle ?
Car : Ce jeune là ? Oui, pourquoi ?
H : Il nous a dit que vous étiez arrivé ici le premier c'est vrai ?
Car : Le premier, j'en doute il y en a eu quelques un avant moi

->Conversation1





===InfoCroupierCoeur
blabla
->END

===CroupierTrefle
Vous obtenez une information importante sur le croupier Carreau
~InfoCroupierCarreau = true
->HUB