BEGIN BT1DAR25

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscBooTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarMinscHopeTalk
~Minsc, what do you hope for in all of this? What keeps you going even when the Realms burn around us?~ DO ~SetGlobal("T1DarMinscHopeTalk","GLOBAL",1)~
== BMINSC25 ~Boo is puzzled that you ask. Our hope is what it has always been: to make the Ice Dragon berserker lodge proud, and to leave no evil posterior unkicked!~
== BT1DAR25 ~Thank you, Minsc. And Boo, too, I suppose.~
== BMINSC25 ~What? What do you thank us for?~
== BT1DAR25 ~Hope.~
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscFightTalk","GLOBAL",0)~
THEN BMINSC25 T1DarMinscFightTalk
~You know, Boo has noticed the winged elf is not as ferocious in battle as he used to be.~ DO ~SetGlobal("T1DarMinscFightTalk","GLOBAL",1)~
== BT1DAR25 ~Boo is observant. Combat is less... gratifying... than I used to find it.~
== BMINSC25 ~But you still enjoy kicking evil butt, do you not?~
== BT1DAR25 ~Purging this land of evil is a task I can appreciate, yes.~
== BMINSC25 ~You have a funny way of saying things.~
== BT1DAR25 ~That I do, Minsc. That I do.~
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahSorryTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarJahSorryTalk
~Jaheira, I'm sorry for the tremendous disrespect and insensitivity I offered you in Amn. In hindsight, I'm surprised you didn't slap me or worse.~ DO ~SetGlobal("T1DarJahSorryTalk","GLOBAL",1)~
== BJAHEI25 ~Do not think that the thought did not occur to me.~
== BT1DAR25 ~Pardon my Common, but I was an ass to you.~
== BJAHEI25 ~You were.~
== BT1DAR25 ~...So do you forgive me? I am trying to make amends.~
== BJAHEI25 ~Do you forgive yourself?~
== BT1DAR25 ~What?~
== BJAHEI25 ~You care sufficiently to seek my forgiveness over something I care little for. Absolution is yours to give.~
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahMatTalk","GLOBAL",0)~
THEN BJAHEI25 T1DarJahMatTalk
~So where are the scowls on our elven knight? Where have the judgments and racial epithets and smugness gone?~ DO ~SetGlobal("T1DarJahMatTalk","GLOBAL",1)~
== BT1DAR25 ~Jaheira, please don't start.~
== BJAHEI25 ~I am genuinely curious, child. Such an unusual change of behavior demands explanation.~
== BT1DAR25 ~And if my response was to call you an overly nosy crow poking its beak where it is not welcome?~
== BJAHEI25 ~I would be relieved that all is back to normal and you are well.~
== BT1DAR25 ~Naurereg.~
== BJAHEI25 ~I presume that means more to the winged folk than I.~
== BT1DAR25 ~It is a term of art in the army of Myrrhavin. The connotations are best not discussed in polite company.~
EXIT


CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("sarevok")
See("T1Dar")
!See ([ENEMY])
!StateCheck("sarevok",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarGhostTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarSarGhostTalk
~Consider me surprised. This miserable spectre is nothing like the juggernaut <CHARNAME> described fighting on the Sword Coast.~ DO ~SetGlobal("T1DarSarGhostTalk","GLOBAL",1)~
== BSAREV25 ~I do not need your fear to vindicate me, bird.~
== BT1DAR25 ~It is hard for me to fear a man twice slain, resurrected only by the grace of his murderer.~
== BSAREV25 ~Say what you will. Your words mean nothing to me. Insult me, mock me, lay your judgments bare.~
== BT1DAR25 ~No, I don't think so.~
== BSAREV25 ~Ah. You're too proud for that. Something we have in common, I think. It is odd that Wrath is the sin I served in hell. Pride was more to my nature, I think.~
== BT1DAR25 ~Sarevok, I think you've misunderstood everything I've said.~
== BSAREV25 ~Have I now?~
== BT1DAR25 ~You do frighten me. You were once a man of great confidence and power, capable and with strong allies. Now look at you. A living example of what might await me. What might have, if not for quirk of fate or will of the gods.~
== BSAREV25 ~Of all things, you still fear death?~
== BT1DAR25 ~I fear failure. Failure and what I might become in defeat. *That* is what you call to mind and why I fear you in turn.~
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("sarevok")
See("T1Dar")
!See ([ENEMY])
!StateCheck("sarevok",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarGodTalk","GLOBAL",0)~
THEN BSAREV25 T1DarSarGodTalk
~So what does the winged elf think of my sibling's mad crusade? Do you enjoy battling the gods of mankind?~ DO ~SetGlobal("T1DarSarGodTalk","GLOBAL",1)~
== BT1DAR25 ~I think humanity has given divinity to many of its worst vices. During my time at your <PRO_BROTHERSISTER>'s side, I have come to the conclusion that anyone who wants godhood should automatically be disqualified from candidacy for such a position.~
== BSAREV25 ~Hah! Am I to believe you would turn down godhood if your goddess offered it to you?~
== BT1DAR25 ~...I don't know. I do know, however, that it would be an awesome responsibility, and I do not think my shoulders are strong enough to bear it.~
== BSAREV25 ~Nor do I. Divinity is wasted on the meek.~
== BT1DAR25 ~As opposed to the mad, the reckless, and the psychotic?~
== BSAREV25 ~Power belongs to the deserving.~
== BT1DAR25 ~Force without wisdom is mere violence.~
== BSAREV25 ~Of whose wisdom do you speak, I wonder?~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarNalSorTalk
~Nalia, I am sorry for being so dismissive of you and your goals before. You have a nobler goal than I gave you credit for.~ DO ~SetGlobal("T1DarNalSorTalk","GLOBAL",1)~
== BNALIA25 ~Thank you, though you did have a point. Massive, direct change like I thought about in Amn *would* demand great upheaval, likely hurting more people than it would help.~
== BT1DAR25 ~So what do you intend to do now?~
== BNALIA25 ~Reform, not revolution. Amn can be redeemed, I think. It will not be easy or fast, but I think it is possible.~
== BT1DAR25 ~Better you than I to attempt such a crusade. May your gods smile on your endeavor.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Korgan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorGloryTalk","GLOBAL",0)~
THEN BKORGA25 T1DarKorGloryTalk
~Ah, blood flowing from horizon to horizon, and here we be in the thick of it! Glorious, wouldn't ye say?~ DO ~SetGlobal("T1DarKorGloryTalk","GLOBAL",1)~
== BT1DAR25 ~You are a vile little creature who belongs with these Bhaalspawn.~
== BKORGA25 ~Hah! That be the kindest thing anyone's said to me for months!~
== BT1DAR25 ~I am done talking to you.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoGodTalk","GLOBAL",0)~
THEN T1DAR T1DarAnoGodTalk
~Do human gods always cause this much trouble, Anomen? I'm starting to wonder if wiping out the lot might be the best thing for Faerun at this rate.~ DO ~SetGlobal("T1DarAnoGodTalk","GLOBAL",1)~
== BANOME25 ~Hah! This is exceptional even for our gods, I am thankful to say.~
== BT1DAR25 ~Thank the Winged Mother. This Time of Troubles thing had better not become a regular occurance.~
== BANOME25 ~I think we are all praying it does not. One way or another, Bhaal's legacy should soon be put to rest.~
== BT1DAR25 ~Why did humans even *have* a god of murder?~
== BANOME25 ~A good question, Darian. A good question.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicWarTalk","GLOBAL",0)~ 
THEN BVICON25 T1DarVicWarTalk
~Ah, such a gratifying experience, watching all these rivvil butcher each other.~ DO ~SetGlobal("T1DarVicWarTalk","GLOBAL",1)~
== BT1DAR25 ~As opposed to elves slaughtering each other?~
== BVICON25 ~Haha! Where did your spine go, oh winged one?~
== BT1DAR25 ~My hypocrisy did not survive its meeting with reality.~
== BVICON25 ~You are far more sentimental than I realized. A pity that your strength was so short-lived.~
== BT1DAR25 ~I have found it takes more strength to admit weakness than to lie about a lack of the same. I find it telling that you believe otherwise.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarVicRomTalk","GLOBAL",0)~ 
THEN BVICON25 T1DarVicRomTalk
~So <CHARNAME> has broken her mate at last, has she?~ DO ~SetGlobal("T1DarVicRomTalk","GLOBAL",1)~
== BT1DAR25 ~Do *not* start with me, Viconia.~
== BVICON25 ~*Chuckles* I'll take that as a 'yes.'~
== BT1DAR25 ~Why the hell does it matter to you? I am not here to provide amusement.~
== BVICON25 ~Yet it is amusing all the same. It is always entertaining to watch a strong male learn their place.~
== BT1DAR25 ~Enough! I will not be provoked by the likes of you!~
== BVICON25 ~Hahahaha. As you wish.~
EXIT 

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Jan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJanNoTalk","GLOBAL",0)~
THEN BJAN25 T1DarJanNoTalk
~Say, Darian-~ DO ~SetGlobal("T1DarJanNoTalk","GLOBAL",1)~
== BT1DAR25 ~No.~
== BJAN25 ~I think you'd-~
== BT1DAR25 ~No.~
== BJAN25 ~But-~
== BT1DAR25 ~No.~
== BJAN25 ~Uncle Spanky-~
== BT1DAR25 ~No.~
== BJAN25 ~You're just no fun at all nowadays!~
== BT1DAR25 ~Thank you.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarKelSorTalk
~Keldorn, I am sorry for disregarding your words in Amn. I have never been a quick learner, I'm afraid.~ DO ~SetGlobal("T1DarKelSorTalk","GLOBAL",1)~
== BKELDO25 ~Think nothing of it. That you are willing to learn at all is important, not how quickly you do so.~
== BT1DAR25 ~Thank you, heru'nim'ohtar. The virtue of patience is one I have yet to learn, it seems.~
== BKELDO25 ~I am not worried about you, young Talon. Live with honor.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelRetireTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarKelRetireTalk
~That you still serve astounds me, Lord Keldorn. I, for one, am looking forward to some peace and quiet when this mess is all over.~ DO ~SetGlobal("T1DarKelRetireTalk","GLOBAL",1)~
== BKELDO25 ~A life of battle and service is not for everyone. Too often, I have found that my estate feels less like home than the road of service does.~
== BT1DAR25 ~I don't know if adventure and battle will much interest me in the future. I doubt anything I could face after this will compare.~
== BKELDO25 ~Hah! I suspect there are many challenges left for you, young man. Challenges like nothing you have yet faced.~
== BT1DAR25 ~I find that hard to believe.~
== BKELDO25 ~Just wait until you marry or become a father. You may decide you preferred battling dragons.~
== BT1DAR25 ~That... is not a comforting thought.~
== BKELDO25 ~Take your trials as they come, Darian. Tomorrow is another day.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerEndTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarHaerEndTalk
~Looks like you're in luck, Haer'Dalis, This is shaping up to be a fittingly climactic end to the adventure.~ DO ~SetGlobal("T1DarHaerEndTalk","GLOBAL",1)~
== BHAERD25 ~Indeed it is. The eagle's horizons broaden, I see.~
== BT1DAR25 ~It was around the time we assaulted Suldanessellar that I realized books would be written about all this. A heady thought, that.~
== BHAERD25 ~Ah, so have you given further thought to collaborating on my play?~
== BT1DAR25 ~I haven't changed that much, bard.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwRetTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarEdwRetTalk
~So I presume our resident mad wizard intends to return to Thay soon enough?~ DO ~SetGlobal("T1DarEdwRetTalk","GLOBAL",1)~
== BEDWIN25 ~This Red Wizard is not mad, but Thay will tremble at the mention of his name (yes, all will tremble).~
== BT1DAR25 ~Good.~
== BEDWIN25 ~You know, a few feathers of yours would go a long way towards establishing a good name for your people in Thay...~
== BT1DAR25 ~The answer is still no.~
== BEDWIN25 ~You risk your one chance to earn the good graces of Edwin Odesseiron, Archmage of Thay.~
== BT1DAR25 ~I'll take my chances.~
== BEDWIN25 ~Luck belongs to the deserving, oh winged monkey.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazTireTalk","GLOBAL",0)~
THEN BMAZZY25 T1DarMazTireTalk
~I fear I may be beginning to tire of the adventure. The soul can only stand so much death.~ DO ~SetGlobal("T1DarMazTireTalk","GLOBAL",1)~
== BT1DAR25 ~I know what you mean. Open war is not to my taste.~
== BMAZZY25 ~Indeed. I had thought Patrick's death tragic enough, but this is something else altogether.~
== BT1DAR25 ~Still, <CHARNAME> seems to be the best shot for ending all this.~
== BMAZZY25 ~<PRO_HESHE> will need our support.~
== BT1DAR25 ~<PRO_HESHE> has it.~
== BMAZZY25 ~We are talking loudly nough for <PRO_HIMHER> to hear, I trust?~
== BT1DAR25 ~I think so, yes.~
== BMAZZY25 ~Good. Let us pray <PRO_HESHE> can lay <PRO_HIMHER> father's legacy to rest.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
See("Valygar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarValWarTalk","GLOBAL",0)~ 
THEN BT1DAR25 T1DarValWarTalk
~I suppose you must be enjoying this, Valygar. Not just refusing to believe in the gods, but carrying the fight to their children.~ DO ~SetGlobal("T1DarValWarTalk","GLOBAL",1)~
== BVALYG25 ~Why would I enjoy this? People are dying.~
== BT1DAR25 ~I just thought that-~
== BVALYG25 ~You do not understand me. I do not take joy in killing, Darian, whoever my enemies may be. It is something that has to be done.~
== BT1DAR25 ~I see.~
== BVALYG25 ~Then leave me be.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Cernd")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndBalTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarCerndBalTalk
~Cernd, you claim to see balance in all things, correct?~ DO ~SetGlobal("T1DarCerndBalTalk","GLOBAL",1)~
== BCERND25 ~Not in all things, but all things do serve the balance in the end.~
== BT1DAR25 ~Then how could any of this - this chaos and destruction and death - serve the balance?~
== BCERND25 ~Ancient forests are rare with good reason. When the trees grow old and their branches thick, they choke out the light below.~
== BT1DAR25 ~And?~
== BCERND25 ~Suppose lightning strikes and begins a fire that burns down much of the forest. Countless plants and animals die. Yet afterwards, life flourishes anew and grows brilliantly amidst the ashes.~
== BT1DAR25 ~You cannot seriously be comparing the destruction in Suldanessellar and Tethyr to a damn forest fire.~
== BCERND25 ~The difference is only in your upbringing, Darian. Were you a squirrel, your opinion would be quite different.~
== BT1DAR25 ~I am not a squirrel.~
== BCERND25 ~Indeed you are not. You revere life and seek to uphold it at all costs. You, too, serve the balance in the long run.~
== BT1DAR25 ~Sigh. Forget I said anything.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoJournalTalk","GLOBAL",0)~
THEN T1DAR T1DarImoJournalTalk
~Imoen, please give me back my journal.~ DO ~SetGlobal("T1DarImoJournalTalk","GLOBAL",1)~
== BIMOEN25 ~What makes you think I have your journal?~
== BT1DAR25 ~I don't exactly sleep. You're not nearly as stealthy as you think you are.~
== BIMOEN25 ~Can you blame me for wanting a peek?~
== BT1DAR25 ~If you want to know what I'm thinking, ask.~
== BIMOEN25 ~Would you tell me if I did ask?~
== BT1DAR25 ~Probably not.~
== BIMOEN25 ~Sheesh. Fine, have your journal back.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoRomTalk","GLOBAL",0)~
THEN BIMOEN25 T1DarImoRomTalk
~Darian, are you and <CHARNAME> alright? You two don't seem to be as happy as you used to be.~
== BT1DAR25 ~It is, in a word, complicated.~
== BIMOEN25 ~Anything you want to talk about?~
== BT1DAR25 ~No.~
== BIMOEN25 ~My threat if you hurt <CHARNAME> stands.~
== BT1DAR25 ~Understood, but... it's complicated, Imoen. And more than a little messy.~
== BIMOEN25 ~Alright, alright. Good luck.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR(2)
  Global("T1DarRomanceActive","GLOBAL",2)
  Global("AerieRomanceActive","GLOBAL",2)
Global("T1DarAerNonSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarAerNonSorTalk
~Aerie... I am so sorry for how I acted towards you earlier, the things I said. I offered you only cruelty and coldness when I meant to help. I do not expect you to forgive me, and I wish I could somehow make it up to you.~ DO ~SetGlobal("T1DarAerNonSorTalk","GLOBAL",1)~
== BAERIE25 ~I forgive you on one condition.~
== BT1DAR25 ~What would that be?~
== BAERIE25 ~That you forgive me as well. I also said some very childish and unwise things.~
== BT1DAR25 ~...We've both grown up, haven't we?~
== BAERIE25 ~Yes, we have. Thank you for understanding.~
== BT1DAR25 ~Your forgiveness for my idiocy is thanks enough.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR(2)
  Global("T1DarRomanceActive","GLOBAL",3)
  Global("T1DarRomanceActive","GLOBAL",0)
OR(2)
  Global("AerieRomanceActive","GLOBAL",3)
  Global("AerieRomanceActive","GLOBAL",0)
Global("T1DarAerRom1","GLOBAL",0)~
THEN BT1DAR25 T1DarAerRom1
~Aerie... I am so sorry for how I acted towards you earlier, the things I said. I offered you only cruelty and coldness when I meant to help. I do not expect you to forgive me, and I wish I could somehow make it up to you.~ 
DO ~SetGlobal("T1DarAerRom1","GLOBAL",1)~
== BAERIE25 ~I forgive you on one condition.~
== BT1DAR25 ~What would that be?~
== BAERIE25 ~That you forgive me as well. I also said some very childish and unwise things. I... mistook infatuation for love.~
== BT1DAR25 ~...Aerie, I thought of you as a strong young woman indulging in feelings neither of us understood.~
== BAERIE25 ~Thought of? What do you think of me now?~
== BT1DAR25 ~An equal. I will never have your outward passion, Aerie, nor your sheer purity of heart. In hindsight, I do not know how I mistook those great strengths for weakness.~
== BAERIE25 ~Darian, can we start over? One to another?~
== BT1DAR25 ~As friends?~
== BAERIE25 ~Or perhaps as something more.~
== BT1DAR25 ~I think I'd like that.~
EXIT

CHAIN
IF WEIGHT #2 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
InParty("HaerDalis")
See("T1Dar")
See("Aerie")
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("T1DarAerRom1","GLOBAL",1)
Global("T1DarAerRom2","GLOBAL",0)
Global("T1DarAerRomHD","GLOBAL",0)~
THEN BHAERD25 T1DarAerRomHD
~It appears our drama has reached a crossroads. The dove, the eagle, and the sparrow. Which story will the play follow, I wonder?~ 
DO ~SetGlobal("T1DarAerRomHD","GLOBAL",1) ActionOverride("Haerdalis",SetGlobal("ExpBHaer1","LOCALS",2))~
== BT1DAR25 ~You are no sparrow, Haer'Dalis. You are a vulture and Doomguard. Still, it is Aerie's decision to make. I will respect her decision, whatever it may be.~
== BAERIE25 ~Haer'Dalis, Darian is right. You *are* a vulture. I've seen the way you looked at all the destruction in Suldanessellar, and now here in Tethyr!~
== BHAERD25 ~And yet the eagle preaches war from his pulpit, does he not? Talk of extermination and slaughter if this sparrow recalls?~
== BT1DAR25 ~Does the sparrow also recall me being all but unable to reverie because I keep seeing the dead in my memories? You rejoiced in their ends!~
== BHAERD25 ~All things are torn down to create the new. 'Tis a cycle we are part of and must accept.~
== BAERIE25 ~No, we don't have to accept it! We are through, Haer'Dalis!~
EXIT

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom1","GLOBAL",1)
Global("T1DarAerRom2","GLOBAL",0)~
THEN BAERIE25 T1DarAerRom2
~Darian, you've been very quiet recently. Is something wrong?~ DO ~SetGlobal("T1DarAerRom2","GLOBAL",1) SetGlobal("T1DarAerRom2HD","GLOBAL",1) SetGlobalTimer("T1DarAerieTimer","GLOBAL",ONE_DAY)~
== BT1DAR25 ~I've been a warrior my entire life, Aerie. It's one thing to preach a doctrine of war and extermination. It's another matter entirely to see so many dead... innocent and guilty, good and evil, just and depraved.~
=  ~I'm not sure I can remain a warrior after this, Aerie. The entire notion is starting to become bitter in my mouth. I rained down condemnation and judgment on you when you needed anything but that.~
== BAERIE25 ~You were right about me, at least a little. I did so desperately want someone to lift me up, make me feel whole again. I was childish.~
== BT1DAR25 ~So was I. Aerie, I grew up aspiring to the Talons. I was raised on stories of them, just as you were. In Amn, I tried so very hard to live up to what I thought a Talon should be.~
== BAERIE25 ~Growing up is painful, isn't it?~
== BT1DAR25 ~What a matched pair of fools we are.~
== BAERIE25 ~We are adults now, Darian. I would like us to be adults with each other as well.~
== BT1DAR25 ~Adults it is. Perhaps we should speak more, in private.~
EXIT

// on rest lovetalk - in t1dar25j

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom3","GLOBAL",1)
Global("T1DarAerRom4","GLOBAL",0)~
THEN BAERIE25 T1DarAerRom4
~Darian, have you given much thought to what you'll do, when this is all over?~ DO ~SetGlobal("T1DarAerRom4","GLOBAL",1)~
== BT1DAR25 ~Return home, probably. Myrrhavin needs to know what's happened here, and I'd dearly like to see my family again.~
== BAERIE25 ~Do you know where Faeyna-Dail is?~
== BT1DAR25 ~Vaguely. I know it's not much more than a tenday or two from Myrrhavin. You're feeling homesick, too?~
== BAERIE25 ~Not homesick, I think, but I would like to see my home, and my family again. I don't know if they'll recognize me, but I want them to know I'm still alive.~
== BT1DAR25 ~Then we will leave immediately, once this is over.~
== BAERIE25 ~We? I'm quite capable of making the journey on my own.~
== BT1DAR25 ~Even among our people, it is customary to meet the family of the beautiful young lady you've been courting.~
== BAERIE25 ~Courting? I thought we were merely talking away from the others and helping each other stretch?~
== BT1DAR25 ~(Darian blushes furiously and returns to his place in formation)~
EXIT

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom4","GLOBAL",1)
Global("T1DarAerRom5","GLOBAL",0)~
THEN BT1DAR25 T1DarAerRom5
~It's a funny feeling, knowing that all this is about to end. Feels like an eternity since I left Myrrhavin.~ DO ~SetGlobal("T1DarAerRom5","GLOBAL",1)~
== BAERIE25 ~<CHARNAME> does have a way of messing up one's plans, doesn't <PRO_HESHE>.~
== BT1DAR25 ~A gift that doesn't discriminate between friends or foe, at that. Still... Aerie, I'm glad all this happened. I'm glad I got a chance to meet you.~
== BAERIE25 ~Hehe. I was right about you, you know. You are my knight in shining armor after all.~
== BT1DAR25 ~Your knight? You tend to wear heavier armor than I do when you're not wearing robes.~
== BAERIE25 ~I don't care. That's how the stories will be told.~
== BT1DAR25 ~I'm doomed, aren't I?~
== BAERIE25 ~Yes you are, silethoron.~
== BT1DAR25 ~I told you not to call me that. In public, at least.~
EXIT