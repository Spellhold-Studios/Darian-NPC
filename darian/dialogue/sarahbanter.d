CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("K#Sarah")
See("T1Dar")
!See ([ENEMY])
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarahTalk","GLOBAL",0)~
THEN BT1Dar T1DarSarahTalk
~Unusual. The vast majority of humans I have encountered, even those who profess to be rangers, are far too attached to their cities and civilization. You, however, seem to be an exception. Curious.~
== K#SarahB ~Not all humans can stand the crowds and filth of the cities. I will take the forest over the city any day.~
== BT1DAR ~As I said, curious. I am less certain of your attachment to these forests. Too dense, far too much cover and broken lines of sight for my liking. I seldom had cause to venture into forests on foot before now, and I am not certain I enjoy the experience. I will be very glad to return to the mountains.~
== K#SarahB ~But the cover and denseness are nature's shields; they protect the forest life from those who would threaten it. Tell me, is it the seclusion you value by living in the mountains or is there some other reason you prefer them over other places?~
== BT1DAR ~I am home amongst the clouds and mountain peaks, and I will protect them as such. There is more than sentimental reason for my attachment to the mountains, however. Those who cannot fly face a significant disadvantage, which is my pleasure to take advantage of. The earth-bound should stay where they belong.~
== K#SarahB ~That I will agree with you on. Flying seems a bit….unsettling.~
== BT1DAR ~A spark of genuine wisdom from a human. Unexpected. I follow into your cities and beneath the earth because I must. I do not belong there, and I do not intend to stay longer than I must.~
== K#SarahB ~Thank you…I think. For what it's worth, I hope when you return to your home, you will have learned something of value from us 'earth-bound'. Sometimes immersion in another's world can do wonders for oneself. I know because when I first arrived in the Cloakwood Forest, I was very reluctant to change my ways to those of uncle's. I like to think that I am wiser and better off now because of my experience.~
== BT1DAR ~You humans do have an interesting proverb: know your enemy. I know mine better than I did before, I will grant you that small victory.~
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("K#Sarah")
See("T1Dar")
!See ([ENEMY])
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarahToBTalk","GLOBAL",0)~
THEN BT1Dar T1DarSarahToBTalk
~You were right in Amn, Sarah. Come what may, I think I am a better and wiser person for my time amongst the earth-bound.~
== K#SarahB ~It would be rude to say 'I told you so,' but I did.~
== BT1DAR25 ~Humans. Give them an inch and they turn it into a mile... That may explain the current state of Faerun, come to think of it...~
END