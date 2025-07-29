
                                                                     
                                                                     
                                             
// --------------------------------------------
// Darian Banters
// --------------------------------------------
BEGIN ~BT1DAR~

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
THEN BMINSC T1DarMinscBooTalk
~Darian, Boo has a question for you.~ DO ~SetGlobal("T1DarMinscBooTalk","GLOBAL",1)~
== BT1Dar ~Boo? That little animal scurrying around in your pack?~
== BMINSC ~Boo is no animal! He is a miniature giant space hamster, and a very smart one at that!~
== BT1Dar ~Er...~
== BMINSC ~But anyway, Boo wants to know why you like kicking evil butts, as he hasn't known many elves to like doing that.~
== BT1Dar ~Er, sorry, but I'm actually rather busy at the moment. Can this wait?~
== BMINSC ~Of course. Boo is very patient (I agree Boo: he is a strange one. But evil's buttocks are clearly familiar with his boots).~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscLookTalk","GLOBAL",0)~
THEN BMINSC T1DarMinscLookTalk
~Darian, Boo has noted you often look strangely at us.~ DO ~SetGlobal("T1DarMinscLookTalk","GLOBAL",1)~
== BT1Dar ~Well... yes. The, ah, two of you are like nothing I've ever encountered before.~
== BMINSC ~Maybe you should get a hamster for yourself. Your butt-kicking skills are mighty, and what finer companion than a hamster?~
== BT1Dar ~Ah, no thank you.~
== BMINSC ~What is wrong with hamsters?~
== BT1Dar ~I cannot believe I am having this conversation with a man and his pet nyano.~
== BMINSC ~Minsc understands if you need some time to think about what breed of hamster you want. I prefer the miniature giant space, but perhaps you would prefer a flying hamster, so you don't have to worry about him spilling out of your pack in the air.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID) 
Global("T1DarMinscFuryTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarMinscFuryTalk
~Minsc, why do you give in to such rage and fury during battle? It is like nothing I've ever seen from a civilized being.~ DO ~SetGlobal("T1DarMinscFuryTalk","GLOBAL",1)~
== BMINSC ~I fight to kick evil's tender backside! And when I go berserk, my boot comes faster and leaves even deeper marks!~
== BT1Dar ~Were you, ah, injured at some point in your travels?~
== BMINSC ~Boo tells me I have taken many beatings. But he and I both know we have delivered even more!~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahGazeTalk","GLOBAL",0)~
THEN BJAHEIR T1DarJahGazeTalk
~Darian, I have felt your puzzled gaze on my back for the last time. What do you want?~ DO ~SetGlobal("T1DarJahGazeTalk","GLOBAL",1)~
== BT1Dar ~You are the first half-elf I have ever encountered, and am not sure what to make of you.~
== BJAHEIR ~Why would you *make* anything of me, just because I am neither human nor elven? There is a balance in all things, a balance you seem to ignore.~
== BT1Dar ~I see, peredhil.~
== BJAHEIR ~Do not think I can't understand what you just said. I am as fluent in elven as you are.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("jaheira") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahLoseTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarJahLoseTalk
~Jaheira, if you don't mind me asking, whom did you lose?~ DO ~SetGlobal("T1DarJahLoseTalk","GLOBAL",1)~
== BJAHEIR ~Wha-what do you mean?~
== BT1Dar ~Judging by the way you speak and act, there was someone very close to you who died recently.~
== BJAHEIR ~You have surprising insight... yes, my husband, Khalid, died at the hands of the mage we now seek. He was a good man, and never backed down from a just cause.~
== BT1Dar ~Much like yourself. I understand, and apologize for bringing up a painful subject.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahApoTalk","GLOBAL",0)~
THEN BT1Dar T1DarJahApoTalk
~Jaheira, I wish to apologize.~ DO ~SetGlobal("T1DarJahApoTalk","GLOBAL",1)~
== BJAHEIR ~Apologize? For what?~
== BT1Dar ~For my attitude towards you. You are not what I expected of a human/elf crossbreed - you show none of the attitudes of your parents. I'm actually coming to respect you.~
== BJAHEIR ~An apology well deserved. You are coming to understand the balance of things, I think. Slowly, but you are already beginning to admit your attitudes and suspicions were wrong.~
== BT1Dar ~I don't know about the "balance" you keep referring to, but I'm not going to argue with your assessment.~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalAskTalk","GLOBAL",0)~
THEN BNALIA T1DarNalAskTalk
~Hey, Darian, can I ask you something?~ DO ~SetGlobal("T1DarNalAskTalk","GLOBAL",1)~
== BT1Dar ~Nothing I can say will stop you from asking, so go ahead.~
== BNALIA ~What do you think about the plight of the lower classes?~
== BT1Dar ~I don't.~
== BNALIA ~What?! You mean you honestly don't care about how the nobles go about in lives of luxury, build on the backs of the downtrodden poor?~
== BT1Dar ~Correct. While I do think it is unfortunate in the extreme, changing things in such a way as you imagine would require a catastrophic level of upheaval in your society - something I doubt even you would attempt.~
== BNALIA ~But... how can you say something like that?~
== BT1Dar ~Easily. I don't care about you or your self-appointed quest. I am here to repay my debt of honor to <CHARNAME>.~
== BNALIA ~That's horrible!~
== BT1Dar ~That's also human nature, and it will be what it will be. There's nothing you can do to change it, either.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalWorkTalk","GLOBAL",0)~
THEN BNALIA T1DarNalWorkTalk
~You really are a piece of work, Darian.~ DO ~SetGlobal("T1DarNalWorkTalk","GLOBAL",1)~
== BT1Dar ~I beg your pardon?~
== BNALIA ~You're as bad as most of the nobles we've encountered-you think you're always right, and you don't even deign to chat and relax around us.~
== BT1Dar ~Though the end result is admittedly much the same, Nalia, my reasons for my actions are very different. I am here because <CHARNAME> aided me, and I am aiding <PRO_HIMHER> in return. That does not mean I have to let my guard down.~
== BNALIA ~But why do you even have your 'guard' up in the first place? Surely even you admit that we're doing good things here!~
== BT1Dar ~Agreed. But just because I'm working with humans doesn't mean I have to be friendly with them.~
== BNALIA ~For your sake, I hope you change.~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalNobleTalk","GLOBAL",0)~
THEN BNALIA T1DarNalNobleTalk
~So, Darian, do the Avariel have a concept of a nobility and a lower class?~ DO ~SetGlobal("T1DarNalNobleTalk","GLOBAL",1)~
== BT1Dar ~Yes, and it's not too dissimilar from your human aristocracy in concept, aside from the nobles actually not being very distinguishable from everyone else - it is a rather blurred line, and there is little difference aside from honorifics and various formal events the nobility enjoys.~
== BNALIA ~It sounds too idyllic to be true.~
== BT1Dar ~It is far from idyllic - it is the result of a race nearly being destroyed.~
== BNALIA ~Would I be mistaken to assume you are a member of the Avariel nobility?~
== BT1Dar ~You would indeed be mistaken. I hail from a long line of warriors.~
== BNALIA ~But you're a Talon. I was getting the impression all Talons were nobles, much like human paladins.~
== BT1Dar ~Far from it. Talons come from all walks of life - the priesthood, warrior-scholars, ordinary soldiers. I myself was but a scout in training when I was offered the chance to become a Talon. I accepted in a heartbeat.~
== BNALIA ~Then maybe I was wrong about you. You're certainly not what I thought you were.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Korgan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorSightTalk","GLOBAL",0)~
THEN BKORGAN T1DarKorSightTalk
~Elf, yer quite a sight in battle.~ DO ~SetGlobal("T1DarKorSightTalk","GLOBAL",1)~
== BT1Dar ~Considering you're normally too drunk to tell the difference between an orc and an elf, I'll take that as a compliment.~
== BKORGAN ~Ha! Ye get fire in yer belly, that's fer sure, and mebbe I'll be spilling it out by day's end.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Korgan") 
See("Korgan") 
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorWhyTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarKorWhyTalk
~Why exactly are you present, Korgan? You do not seem to be the type to care about <CHARNAME>'s goals, nor the type to honor an agreement you made.~ DO ~SetGlobal("T1DarKorWhyTalk","GLOBAL",1)~
== BKORGAN ~I joined cause this <CHARNAME> of ours attracts more trouble than an elf army in the Underdark, an' where there be trouble, there be treasure!~
== BT1Dar ~Why on Toril does <CHARNAME> put up with you at all, delothine...~
== BKORGAN ~<CHARNAME> puts up with me cause I be good at killing, and the list of things I kill will be extended by one overly pompous bird soon enough.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Anomen") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoProcTalk","GLOBAL",0)~ THEN BT1Dar T1DarAnoProcTalk
~Anomen, why do you feel the need to proclaim your righteousness at every turn? You may well end up attracting more trouble than you intend.~ DO ~SetGlobal("T1DarAnoProcTalk","GLOBAL",1)~
== BANOMEN ~Let them come, I say! I've dispatched evils a hundred times worse than any we may face here.~
== BT1Dar ~Oh? When your fighting skills are barely equal to a Talon initiate?~
== BANOMEN ~Righteousness can overcome any obstacle. Including you, Darian.~
== BT1Dar ~I am a warrior of good, but I fight on my own terms, as do all Talons. Some foes are best dealt with via a crossbow bolt from afar, or an underhanded blade close up. We do not have the luxury of glorious charges that get people killed, Anomen.~
== BANOMEN ~Bah! You can think of things that way if you must, but when all is said and done, glory will go to the one who boldly struck against evil on it's own terms and destroyed it.~
== BT1Dar ~But for a Talon, it is the quiet victories that are sweetest - the destruction of evil before it is allowed to get out of hand and require heroic measures to destroy.~
EXIT 

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoDutyTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoDutyTalk
~Darian, you are a most perplexing individual. You profess to be a warrior of righteousness, and the powers your goddess grant you prove it true, yet your code of honor is strange, and you seem to have a distaste for chivalry.~ DO ~SetGlobal("T1DarAnoDutyTalk","GLOBAL",1)~
== BT1Dar ~The duty of a Talon is to defend the Menel'Quessir, no matter the cost. Your concepts of honor and chivalry strike me, and would strike most other Talons, as rather foolish. It is why we prefer to destroy our enemies from above, and why we have some skill at stealth.~
== BANOMEN ~But such tactics reek of cowardice! Better to charge boldly into the fray, and destroy evil in its lair.~
== BT1Dar ~Such tactics are wasteful in lives, of which we have too few to throw away recklessly. We strive to make all battles as one-sided as we can, and we do not give our enemy any chance we can prevent. Anomen, we do not fight for honor or glory - we fight to defend our people.~
== BANOMEN ~I see. That is an interesting standpoint, and I think there to be some merit in the way you fight. You clearly have much yet to learn about righteousness, but it is an honor to teach you.~
== BT1Dar ~An... honor.~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoTrainTalk","GLOBAL",0)~
THEN BT1Dar T1DarAnoTrainTalk
~Anomen, I see you're devoted to training yourself in combat and in the religion you follow. May I ask why?~ DO ~SetGlobal("T1DarAnoTrainTalk","GLOBAL",1)~
== BANOMEN ~Yes. I am a squire in the Order of the Radiant Heart, and seek to become a knight.~
== BT1Dar ~The nim'ohtari... if I can assist you in your training, I will do so.~
== BANOMEN ~Why would you offer your assistance? I am quite confident in my abilities.~
== BT1Dar ~I, too, went through a lengthy period of training to join the Talon Order. You seem more honorable than most dagoramadea, and I wish to help.~
== BANOMEN ~Dagoramadea? I do not like the tone of your voice, elf.~ 
== BT1Dar ~The Menel'Quessiri word for 'human'. And also 'enemy'.~
== BANOMEN ~I have no need of your so-called assistance, then. I will not be talked down to by anyone, least of all you.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoTrainTalk","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoApoTalk","GLOBAL",0)~
THEN BT1Dar T1DarAnoApoTalk
~Anomen, I wish to apologize for my attitude when last we spoke. You are an honorable man, and my attitude towards you was inappropriate.~ DO ~SetGlobal("T1DarAnoApoTalk","GLOBAL",1)~
== BANOMEN ~I accept your apology. The stress of training... wore thin on me.~
== BT1Dar ~I know that feeling all too well. A Talon initiate undergoes no fewer than twenty years of strict training before they are accepted into the Order.~
== BANOMEN ~Twenty years? How does anyone spend so much of their life... oh. Even for an elf, that cannot be easy.~
== BT1Dar ~It isn't. But it's no worse than your own training, and we both succeeded in our goals.~
== BANOMEN ~I suppose we did indeed, even if our roles are a bit different.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",4)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoLookTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoLookTalk
~Darian, I've seen the way you look at <CHARNAME>.~ DO ~SetGlobal("T1DarAnoLookTalk","GLOBAL",1)~
== BT1Dar ~Oh? Just how exactly do I look at her?~
== BANOMEN ~You no longer consider her a threat. And you think she might be more than just a friend.~
== BT1Dar ~I have no hidden intentions towards her.~
== BANOMEN ~You have none consciously, perhaps, but you really need to look in a mirror.~
== BT1Dar ~You don't do veiled comments very well, Anomen. Your words are transparent.~
== BANOMEN ~Then abide by them.~
== BT1Dar ~I take orders from no one but <CHARNAME> and my superior officers in Myrrhavin.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoRomTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoRomTalk
~I must say... you and <CHARNAME> are rather unexpected. You do have a poor sense of timing, however.~ DO ~SetGlobal("T1DarAnoRomTalk","GLOBAL",1)~
== BT1Dar ~Heh. It's as unexpected to me as it is to you.~
== BANOMEN ~Well, if she has chosen you, I will respect her choice. But if you hurt her in any fashion, you will answer to me.~
== BT1Dar ~I would expect no less of you.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
!InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("AnomenRomanceActive","GLOBAL",2)
Global("T1DarAnoResTalk","GLOBAL",0)
Global("T1DarMazzyRomance","GLOBAL",0)~
THEN BT1Dar T1DarAnoResTalk
~Anomen, may I speak with you?~ DO ~SetGlobal("T1DarAnoResTalk","GLOBAL",1)~
== BANOMEN ~Certainly. What do you wish?~
== BT1Dar ~You love <CHARNAME> very much, don't you?~
== BANOMEN ~Indeed I do. What of it?~
== BT1Dar ~Anomen, I wanted to let you know that I... respect her, and the choice she made. Whatever the future holds, whatever happens... I will honor that choice.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicIllythTalk","GLOBAL",0)~ THEN BT1Dar T1DarVicIllythTalk
~So... you are what became of the Illythiri.~ DO ~SetGlobal("T1DarVicIllythTalk","GLOBAL",1)~
== BVICON ~Ah, so the winged one is a scholar. Do you truly not know what I am?~
== BT1Dar ~I recognize you as one of the Illythiri, the dark-skinned elves who fled to the Morinuin, the Underdark in ages past.~
== BVICON ~You don't, do you? You genuinely do not know a drow when you see one?~
== BT1Dar ~I do not know what a drow is, no. But I do know what you are, and do not trust you.~
== BVICON ~How amusing. Just what do you *know* I am?~
== BT1Dar ~A manipulative, deceitful woman with malice in her black heart.~
== BVICON ~Ah, but you are wrong. I am an outsider amongst these rivvil, just as you are, and feel about them much as you do.~
== BT1Dar ~I don't like what you're up to, and will have no part in it. Keep your distance from me, and I won't kill you as my instincts are screaming at me to.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Viconia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicIllythTalk","GLOBAL",1)
Global("T1DarVicIntTalk","GLOBAL",0)~
THEN BVICON T1DarVicIntTalk
~Darian, you are most intriguing, for a male.~ DO ~SetGlobal("T1DarVicIntTalk","GLOBAL",1)~
== BT1Dar ~I warned you, keep your distance.~
== BVICON ~But don't you see? That is so much a part of you - your refusal to let anyone close. And we have so much in common, you and I. We both fear and hate these rivvil we travel with and around. They would gladly destroy us both - burning me at the stake and locking you up in a cage like that poor little Aerie you came here to find.~
== BT1Dar ~I want no part in whatever twisted scheme you're trying to launch, Illythir.~
== BVICON ~Ah, won't you even call me what I truly am? A drow? Like your people, mine have changed a great deal. Both our peoples suffered much. Both withdrew to hidden fortresses where they have absolute domain. And you are such an exotic, handsome man...~
== BT1Dar ~(Wings flaring) Touch me, and I will make sure that not even your dark goddess can save you.~
== BVICON ~Ah, your vigor and spirit are so very appealing-breaking you would be a worthy challenge, and an enjoyable one, I think. But alas, it appears such things will have to wait for a more... opportune moment.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Jan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJanMalTalk","GLOBAL",0)~
THEN BJAN T1DarJanMalTalk
~You know, Darian, you remind me a great deal of my older cousin, Malidas.~ DO ~SetGlobal("T1DarJanMalTalk","GLOBAL",1)~
== BT1Dar ~Excuse me? How could I remind you of a relative, when you're the first gnome I've ever encountered?~
== BJAN ~Exactly! Now, Mal, as we always called him, was always a bit of an odd duck. He really didn't think he was one of us, you see - utter nonsense, really, but maybe he just had a penchant for a few too many cups of turnip tea in the evening, you get the picture. He was also almost as smart as my great uncle Spankey, and one day, he got it in his head that gnomes should fly.~
== BT1Dar ~I didn't understand a word of what you just said.~
== BJAN ~We didn't understand much of what Mal said, either. But he did say that gnomes should fly, and there was nothing that was going to stop him from achieving that goal. So he started gathering up all the feathers he could - from ducks, from pigeons, from my great auntie Calarie's pillows -mwhich caused quite a fuss, you understand - and got some sort of super-sticky potion that soon set and became hard as rock.~
== BT1Dar ~Is there a point to all this, or should I put myself out of my misery here and now?~
== BJAN ~Not to worry, I'm almost there! Now, we thought Mal was going to try to give himself wings. But old Mal was too crafty for that - he slathered that potion all over his own body, and rolled around in the feathers. It was really quite a mess, but in the end, he came out of that storage cupboard and was covered everywhere with feathers. And he told us all that since feathers were the keys to flight, that he could now soar with the eagles, and climbed up to the top of the tallest building in town and jumped. We gave him a nice funeral, of course, and praised his ingenuity.~
== BT1Dar ~So... what's all this have to do with me?~
== BJAN ~With you? All I remember is you asking about Mal!~
== BT1Dar ~I think I will be praying for my sanity tonight.~
== BJAN ~Say, that reminds me of my old second aunt Mirelsa...~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Jan") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarJanTurnipTalk","GLOBAL",0)~ THEN BT1Dar T1DarJanTurnipTalk
~Jan, what is that contraption you're working on?~ DO ~SetGlobal("T1DarJanTurnipTalk","GLOBAL",1)~
== BJAN ~This little thing? Why, it's a turnip potion juicer-taster!~
== BT1Dar ~I'm almost afraid to ask what you think you're trying to accomplish.~
== BJAN ~Oh no, it's nothing like that. You see, all these potions we carry around and drink have rather unexceptional flavors. Oh, they're not bad, save for those dragon's breath potions, which are just far too spicy, but they don't really taste all that good, either. So I'm trying to come up with a device that will automatically juice turnips and mix the juice into our potions for flavor. If it works, why, we'll have turnip tea all day!~
== BT1Dar ~Please inform me if you ever do get it working properly.~
== BJAN ~It's nice to hear some interest in this for once. You see, the idea of the juicer-taster is simple enough in theory, but-~
== BT1Dar ~You misunderstood me. I wish to know if and when it works, so I can know to hide my potions well out of your reach.~
== BJAN ~You truly have no appreciation for science, do you, mister elf?~
== BT1Dar ~No. My trust is in my goddess, not contraptions that could fall apart or explode at the slightest touch.~
== BJAN ~Well, there's an idea! The same principle for the primary extractor in this device, suitably modified, could make production of my Flasher Master Bruiser Mates far more efficient... hmmm...~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelApartTalk","GLOBAL",0)~
THEN BKELDOR T1DarKelApartTalk
~Darian, you are a man of worth, but why do you insist on remaining apart from those you help?~ DO ~SetGlobal("T1DarKelApartTalk","GLOBAL",1)~
== BT1Dar ~Because they are liable to turn on me at any time.~
== BKELDOR ~Darian, as many battles as you've fought in your life, which is doubtless quite a bit longer than mine, have you ever learned to trust another?~
== BT1Dar ~I trust my fellow Menel'Quessir.~
== BKELDOR ~But they are not here, Darian. We are your comrades, whether you like it or not, and we're here to help.~
== BT1Dar ~I know you're being honest, but I'm doubtful of many of the others.~
== BKELDOR ~If you put forth as much effort in destroying evil as you do watching for signs of betrayal, you would be a mighty force in the Realms.~
== BT1Dar ~I... know.~
== BKELDOR ~Then I leave you to your warding, young Talon.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelApartTalk","GLOBAL",1)
Global("T1DarKelAskTalk","GLOBAL",0)~
THEN BKELDOR T1DarKelAskTalk
~Darian, have you been doing as I advised you?~ DO ~SetGlobal("T1DarKelAskTalk","GLOBAL",1)~
== BT1Dar ~I do not take orders from humans, even those such as you, Keldorn.~
== BKELDOR ~I did not expect you to come to trust others readily, Darian, but it is a lesson you should learn. Amongst your own people, perhaps you did not need to trust non-Avariel. But now that you're here, it is a lesson of utmost importance.~
== BT1Dar ~N'Tel'Quess or no, you are one of the few here whose wisdom does merit the term, nim'ohtar. Perhaps you are right.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Keldorn") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelAgeTalk","GLOBAL",0)~ THEN BT1Dar T1DarKelAgeTalk
~Why is it you continue to fight evil in your old age, Keldorn? A Talon old enough to have two grown children has almost always retired from frontline battle, weary of the battle and bloodshed.~ DO ~SetGlobal("T1DarKelAgeTalk","GLOBAL",1)~
== BKELDOR ~The field is where I feel I can do the most good, even now. I have my duties, as you of all people should understand, and I seek to do the most good for my people, regardless of the price to me.~
== BT1Dar ~Then I salute you, Keldorn. I may not trust humans, but you are an exception. It is an honor to fight alongside you.~
== BKELDOR ~Hah! Perhaps there's hope for you yet, lad.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerPlaneTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerPlaneTalk
~Darian, my eagle, have you ever gone planeswalking, I wonder?~ DO ~SetGlobal("T1DarHaerPlaneTalk","GLOBAL",1)~
== BT1Dar ~I am not an eagle. And no, I have never gone walking the planes.~
== BHAERDA ~Most curious, for one of obviously celestial blood. Do you know what entity gave you such extraordinary gifts?~
== BT1Dar ~I am not of extraplanar heritage. The Avariel have not left this plane, to my knowledge, for thousands of years.~
== BHAERDA ~Ah, then you are an eagle unlike any I have ever encountered. Your ivory countenance, your great wings, and your piercing gaze are all hallmarks of those born with the blood of the Upper Planes. But it seems the Prime has some surprises yet for me!~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("HaerDalis") 
See("HaerDalis") 
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarHaerDoomTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarHaerDoomTalk
~Haer'Dalis, what exactly is this "Doomguard" you profess to be a part of? It does not sound like a benevolent organization.~ DO ~SetGlobal("T1DarHaerDoomTalk","GLOBAL",1)~
== BHAERDA ~Ah, but my eagle, it is the church of those who worship entropy, a force surely even you are familiar with!~
== BT1Dar ~You worship *entropy*?~
== BHAERDA ~Oh, yes. I am surprised you do not, considering you are such a tragic soul.~
== BT1Dar ~I am neither an eagle nor a tragic soul.~
== BHAERDA ~But you are, and a marvelous one at that! The bold warrior who charged into the fray to rescue one of the other survivors of his dying race, only to fall to his own pride. Oh, you have given me a wonderful idea for a play!~
== BT1Dar ~The Menel'Quessir are not dying! Shattered, in dire conditions, yes. But not dying, not while we yet live!~
== BHAERDA ~Then I simply must have you collaborate with me on this play! It would be one that could garner acclaim throughout the planes, my eagle.~
== BT1Dar ~No.~
== BHAERDA ~A pity. I will have to write this on my own, then.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerDoomTalk","GLOBAL",1)
Global("T1DarHaerChaosTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerChaosTalk
~Darian, might I have a moment of your time?~ DO ~SetGlobal("T1DarHaerChaosTalk","GLOBAL",1)~
== BT1Dar ~I suppose so.~
== BHAERDA ~Well, I'm stuck on a particular part of this play, you see, and I must ask the source: why are the Avariel so prone towards order when the goddess you all follow is the most chaotic in the entire elven pantheon?~
== BT1Dar ~We adapted to survive. Aerdrie Faeyna is the only one of the Seldarine who took any interest in the Avariel, and we are absolutely devoted to her. Her more chaotic aspects are deeply appreciated and cherished by us in times of leisure, but for the last period of our history, we have effectively been on a war footing.~
== BHAERDA ~Such a fascinating history your people have! Ah, what a wonderful aspect to the play: caught between a desire to be carefree and impulsive like their elven kindred, but forced into duty and order to survive! Truly, thank you for providing me with such inspiration!~
== BT1Dar ~Ah... you're welcome.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerComTalk","GLOBAL",1)
Global("T1DarHaerAerieTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerAerieTalk
~My eagle, might I have a moment of your time?~
== BT1Dar ~As you wish.~ DO ~SetGlobal("T1DarHaerAerieTalk","GLOBAL",1)~
== BHAERDA ~Your proud form casts a shadow over our mourning dove. This sparrow wonders if you look upon her with a predator's eye.~
== BT1Dar ~Then know that this eagle looks upon her as a wayward hatchling, fallen from the nest and quite stubborn about it, not a would-be companion in the skies.~
== BHAERDA ~My thanks. This sparrow wondered if perhaps he would have to fight an eagle for the dove's eyes, for she is quite taken with you.~
== BT1Dar ~Alas, if only the dove were taken with the eagle and not the eagle's distant shadow...~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwHenchTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwHenchTalk
~Oh, this is a most peculiar new henchman. He's even more uptight than those self-righteous goons in the temple district, and there is something odd about him. (Yes, something very odd indeed - I must keep my eye on this one)~ DO ~SetGlobal("T1DarEdwHenchTalk","GLOBAL",1)~
== BT1Dar ~Muttering under your breath is a wasted gesture on me, Shadow Thief. I'm quite aware of what you just said.~
== BEDWIN ~If your atrophied excuse for a brain worked as well as your pointy little ears, you would know I have no formal association with the Shadow Thieves. I am a Red Wizard of Thay, you irritating little monkey.~
== BT1Dar ~'Red Wizards of Thay'... how creative of your kindred.~
== BEDWIN ~This coming from a goon of the 'Talon Order'. We can call ourselves whatever we wish - a Red Wizard has enough power in his left pinky to destroy your entire Order.~
== BT1Dar ~Oh, you'd be surprised. A wizard is childs' play to kill when caught by surprise, and you are barred from the study of divination magics, which merely complicates your situation.~
== BEDWIN ~When one can raze cities with a gesture of your hand, such things are meaningless. You and your pitiful Order are beneath my concern.~
== BT1Dar ~Then we have a rather interesting situation on our hands - I would not hesitate to kill you except that <CHARNAME> seems to consider you useful, and you respect no one.~
== BEDWIN ~Interesting, but irrelevant to one such as me. Do your worst, you winged simian. (And in the meantime, I think I will keep a stoneskin scroll close at hand, just in case)~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwChatTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwChatTalk
~So, Darian, how about we... chat for a moment? (Yes, chat - I must not lose the upper hand here. He's almost as haughty as I am)~ DO ~SetGlobal("T1DarEdwChatTalk","GLOBAL",1)~
== BT1Dar ~What do you want, wizard?~
== BEDWIN ~It has come to my attention that you are indeed one of the winged elves, and this obviously has a great impact on our relationship.~
== BT1Dar ~We have no relationship. You are plotting something, and I am waiting for you to strike so I can kill you without causing an incident.~
== BEDWIN ~Your wings have powerful magical properties, as we both know. It would work to our mutual benefit if I could have a few feathers for experimentation.~
== BT1Dar ~Over my dead body, wizard. And I guarantee you: if you attack me, you'll be dead before you can complete a single spell.~
== BEDWIN ~Dammit... was worth a try... (Honestly, I must find out who saw fit to dump this irritating flying monkey on us, since he won't even answer to me... grumble...)~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("T1DarEdwinaTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwinaTalk
~Oh, you are downright insufferable, elf! I've seen that smirk on your face for the last time!~ DO ~SetGlobal("T1DarEdwinaTalk","GLOBAL",1)~
== BT1Dar ~Have I offended you in some way, Lady Edwina? I have been naught but courteous as due a lady of your station.~
== BEDWIN ~Finally, you acknowledge my power! Yes! Bow to me, elf!~
== BT1Dar ~The protocols of my Order prevent me from doing so, Lady Edwina. Though my people accord the highest honors to such as you, only to those of a certain distinction do the Talons bow.~
== BEDWIN ~And what might that distinction be? (Yes, I can taste my victory now!)~
== BT1Dar ~Having children, of course. They are the greatest blessing Aerdrie Faeyna can bestow upon a mortal, and it is to those blessed by the goddess that we bow. If you would ascend to that blessing, my duties would demand I provide you with assistance as directly as possible.~
== BEDWIN ~WHAT did you just say?!~
== BT1Dar ~Nothing due a woman of your station, Lady Edwina.~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazLookTalk","GLOBAL",0)~
THEN BMAZZY T1DarMazLookTalk
~Darian, why are you looking at me so strangely? You're hardly a person to call me unusual.~ DO ~SetGlobal("T1DarMazLookTalk","GLOBAL",1)~
== BT1Dar ~I know. There is a halfling village near Myrrhavin that we sometimes trade with, but I've never seen a halfling with a devotion to Arvoreen and the arts of battle like you possess.~
== BMAZZY ~I see. There are no Trueswords in that village?~
== BT1Dar ~No, it is entirely peaceful. Myrrhavin's nearby presence ensures that there are no bands of orcs pillaging the area or evil beasts in the mountains.~
== BMAZZY ~Your people take their security seriously. But the traditions of war are as important to us as they are to you.~
== BT1Dar ~We do what we feel we must. Halflings are about the only race we've had any consistently peaceful relations with.~
== BMAZZY ~Then I suppose I understand, even if I do not agree.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Mazzy")
InParty("T1Dar") 
See("Mazzy") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazSusTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarMazSusTalk
~Mazzy, I think I was wrong to be suspicious of you initially.~ DO ~SetGlobal("T1DarMazSusTalk","GLOBAL",1)~
== BMAZZY ~That's good to hear, though I wish you'd learn to relax. As duty-bound as you are, and as much as you distrust humans, you really don't need to act like you're in the presence of your order's leader all the time, either.~
== BT1Dar ~I've never been terribly relaxed. Nothing against you or anyone else in the group, but I simply have a hard time lowering my guard around other people.~
== BMAZZY ~Not a pressing problem for a warrior, certainly, but even the bravest of us need friends, Darian.~
== BT1Dar ~Yes, I know. (Sighs)~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
InParty("T1Dar")
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarValMagTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarValMagTalk
~Valygar, I keep hearing that your family destroyed itself in the throes of magical corruption. Is this true?~ DO ~SetGlobal("T1DarValMagTalk","GLOBAL",1)~
== BVALYGA ~It is. Magic has always been the curse of the Corthala line, and fortunately, that curse is finally at an end with me.~
== BT1Dar ~You have no desire to retire from this life and raise a family, then?~
== BVALYGA ~When any child of mine would doubtless be afflicted by magic? The Corthala line ends with me, and Faerun will be a better place for it.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Valygar")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarValMagTalk","GLOBAL",1)
Global("T1DarValSayTalk","GLOBAL",0)~
THEN BVALYGA T1DarValSayTalk
~Darian, you look like you have something you want to say to me.~ DO ~SetGlobal("T1DarValSayTalk","GLOBAL",1)~
== BT1Dar ~I think your attitude towards your bloodline, and the magic endemic to it, is wrong.~
== BVALYGA ~You are entitled to your opinion.~
== BT1Dar ~That you defeated the evil that corrupted your family is testament to the strength of your heritage, Valygar. I have no particular fondness for magic, but are you really going to let your line fade into the night?~
== BVALYGA ~Yes. Some evils must be stopped, no matter the cost to myself.~
== BT1Dar ~(Darian's expression turns thoughtful, and he turns away from Valygar)~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
See("Valygar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarValGodTalk","GLOBAL",0)~ THEN BT1Dar T1DarValGodTalk
~Valygar, I've noticed you don't seem to worship any deity. May I ask why?~ DO ~SetGlobal("T1DarValGodTalk","GLOBAL",1)~
== BVALYGA ~Why should I? The gods are powerful beings, yes, and they created Faerun and everything in it, but are they worthy of worship? I do not believe so.~
== BT1Dar ~Where do your magical abilities come from, then? Mine are granted to me by Aerdrie Faeyna, and since your abilities are clearly not arcane in nature, they are granted to you by one of the gods.~
== BVALYGA ~I do not know. If one of the gods has seen fit to grant me spells, then so be it. It does not mean I have to worship that deity, especially when I do not know which god is responsible~
== BT1Dar ~But don't you feel the need to find out? To find out if perhaps you're meant for something more than just fulfilling your family's vow?~
== BVALYGA ~No, I do not. I face life on my own terms, Darian, not those of the gods.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Valygar")
InParty("Mazzy")
See("T1Dar")
See("Valygar")
See("Mazzy")
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarValMazTalk","GLOBAL",0)~
THEN BVALYGA T1DarValMazTalk
~Hmph. Mazzy, I take it you no longer wish me to be your squire, now that you have a fellow knight?~ DO ~SetGlobal("T1DarValMazTalk","GLOBAL",1)~
== BMAZZY ~Of course not. Now there is even more for you to learn - at both my side and Darian's.~
== BT1Dar ~Leave me out of this one, please. Talons do not have "squires" as you imagine them, and Valygar hardly needs someone coddling him.~
== BMAZZY ~Now, Darian. It is our duty as knights to train squires.~
== BT1Dar ~You yourself said you had gotten past defining yourself by human traditions. Trueswords do not practice having squires either, as I recall.~
== BMAZZY ~Why you insufferable... oh why do you have to make so much sense?~
== BVALYGA ~Good. Now if you two lovebirds don't mind, I'll be foraging for some food.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Cernd")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndLycTalk","GLOBAL",0)~
THEN BCERND T1DarCerndLycTalk
~Darian, something about me concerns you. Please, do not hide behind your wall of fear, talk openly.~ DO ~SetGlobal("T1DarCerndLycTalk","GLOBAL",1)~
== BT1Dar ~You are a lycanthrope, Cernd. You seem to have a degree of control over your affliction, and do not seem to have given in to your other side's bloodthirsty nature, but I am keeping my eye on you. You are a potential danger to us all.~
== BCERND ~It is not an affliction, Darian. I willingly submitted to the bite of the werewolf in my service to nature. I am a simple man, limited in my ability to comprehend nature. But I seek to truly understand and become one with nature, and nature is not so simple. I must come to know and understand the hunger, the thirst for blood of the werewolf, and both submit to it and take control of it.~
== BT1Dar ~But to willingly let yourself be infected with lycanthropy is madness.~
== BCERND ~Madness to you, perhaps. But there is more to nature than meditation and prayer. The aspects of nature I have the most difficulty with are those inherent in the werewolf - the ferocity and aggression. But I do not let any single aspect rule me, for I serve the greater balance, and balance I maintain within myself, between the wolf and the man.~
== BT1Dar ~That is a most unusual way of thinking. And a most dangerous one. I will be praying for your soul, Cernd.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Cernd")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndMotTalk","GLOBAL",0)~ THEN BT1Dar T1DarCerndMotTalk
~So, Cernd, it seems I'm not the only one reporting to a higher authority while present in this band. Why are you present here, when you could be serving in the position of power you have amongst the druidic circles?~ DO ~SetGlobal("T1DarCerndMotTalk","GLOBAL",1)~
== BCERND ~The balance must be served, Darian. <CHARNAME> is like the eye of a great storm, calm and innocent in and of itself, but always surrounded by chaos and turmoil, which it spreads wherever it goes.~
== BT1Dar ~I should have known better than to get a straight answer out of you. If I understood your little parable correctly, you see great opportunity to serve the balance in the trouble that seems to follow wherever <CHARNAME> walks.~
== BCERND ~Yes. But I speak in parables so that you might better understand me, Darian. You are a complicated individual, and the balance for you is awkward at best.~
== BT1Dar ~I do not require your "balance" in my life, Cernd. You are a wise individual, even I admit this, but my life is in service to my people.~
== BCERND ~Yes, and that speaks well of you. But to serve the balance is to serve nature itself, not mere races and institutions.~
== BT1Dar ~Then believe what you must, Cernd, and I will do the same.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Cernd")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
AreaType(FOREST)
Global("T1DarCerndWildTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarCerndWildTalk
~Ah, it feels good to be in the wild again. I seldom get a chance to stretch my wings in the confines of the city.~ DO ~SetGlobal("T1DarCerndWildTalk","GLOBAL",1)~
== BCERND ~You are like a great eagle, Darian - proud and free of any confines.~
== BT1Dar IF ~InParty("HaerDalis")~ THEN ~Heh. Keep talking like that, and I'll be mistaking you for the tiefling bard before long.~
== BT1Dar IF ~!InParty("HaerDalis")~ THEN ~Certainly haven't heard myself described as a bird before.~
== BCERND ~But you are not truly free, are you? The chains of duty bind you, and though you may still fly, you take the chains wherever you go.~
== BT1Dar ~My duty follows wherever I go, yes. But the chains of duty are chains I bear gladly.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoResTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarImoResTalk
~So you're the one we've come all this way to rescue. I am Darian, Talon of Myrrhavin.~ DO ~SetGlobal("T1DarImoResTalk","GLOBAL",1)~
== BIMOEN2 ~A winged elf, here? <CHARNAME>'s taste in company seems to have only grown stranger in my absence.~
== BT1Dar ~So you do know what I am. I'm rather surprised.~
== BIMOEN2 ~Yup. As much time as I spent around stuffy old Gorion and all those books and monks, I did manage to learn a thing or two.~
== BT1Dar ~Strange. The only time <CHARNAME> ever mentioned you, monks, and learning all in the same sentence was in regards to you learning how to avoid them or pull pranks on them, filit~
== BIMOEN2 ~Hehe. There's a fair amount of truth to that. And what's "filit", mean anyhow?~
== BT1Dar ~It is the elven word for a small bird: impulsive, cheerful, and impossible to change.~
== BIMOEN2 ~Aw, no need to be so flattering.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoSisTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoSisTalk
~Hmmm... my sister's taste in men has certainly taken a turn for the unusual. Not that I object in this case.~ DO ~SetGlobal("T1DarImoSisTalk","GLOBAL",1)~
== BT1Dar ~I don't suppose it would do me any good to deny your implications.~
== BIMOEN2 ~Nope. What kinda sis would I be if I wasn't constantly snooping on her boyfriend?~
== BT1Dar ~That's hardly the word I would use to describe my relationship with <CHARNAME>.~
== BIMOEN2 ~But it's the word I'd use. (Grins)~
== BT1Dar ~Oh, by the light of Aerdrie Faeyna, you're almost as bad as your sister...~
== BIMOEN2 ~Why, thank you! Some things run in the family.~
== BT1Dar ~Indeed. Such as a propensity for driving people mad...~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoSneakTalk","GLOBAL",0)~
THEN BT1Dar T1DarImoSneakTalk
~Hold it right there, Imoen.~ DO ~SetGlobal("T1DarImoSneakTalk","GLOBAL",1)~
== BIMOEN2 ~What? I wasn't doing anything!~
== BT1Dar ~I saw you trying to sneak up behind me.~
== BIMOEN2 ~More than just trying, actually - what's this book you keep carrying around? Hmmm... looks like your journal. I wonder what it says about <CHARNAME>...~
== BT1Dar ~Hand it over or I will take it from your corpse.~
== BIMOEN2 ~Like you'd really kill your girlfriend's little sister.~
== BT1Dar ~Once we get to a temple, she'll forgive me... eventually.~
== BIMOEN2 ~Aw, you're no fun - you can have your journal back. I can't read elven anyhow.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCharMarr","GLOBAL",1)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoAffairTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoAffairTalk
~So, what's up with you and <CHARNAME>?~ DO ~SetGlobal("T1DarImoAffairTalk","GLOBAL",1)~
== BT1Dar ~None of your business, Imoen.~
== BIMOEN2 ~Of course it's my business. If <CHARNAME>'s having a little affair, it's my right to know.~
== BT1Dar ~I beg your pardon? An affair?~
== BIMOEN2 ~Of course. You did know <CHARNAME> was taken already, I hope?~
== BT1Dar ~She did say something to that effect, yes. But she did not give any sign of wishing to discontinue our relationship.~
== BIMOEN2 ~Hehe. She's free to do what she wants, but you treat her nice now, y'hear?~
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoenCharLove","GLOBAL",1)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoPeaceTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoPeaceTalk
~So, you and <CHARNAME>, eh? Seems odd, seeing her with a man instead of a woman.~ DO ~SetGlobal("T1DarImoPeaceTalk","GLOBAL",1)~
== BT1Dar ~I know you and <CHARNAME> were lovers for a time, Imoen. I hope you do not object to our relationship.~
== BIMOEN2 ~Nah. What goes on in Candlekeep, stays in Candlekeep. But if you hurt her, you are going to answer directly to me.~
== BT1Dar ~I understand. I would never hurt her.~
== BIMOEN2 ~I'll hold you to that. I may be her little sister now, but I will snoop on her boyfriend, whether she likes it or not.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Yoshimo")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshKnowTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarYoshWorkTalk
~Yoshimo, why are you still here? You know what I'm talking about.~ DO ~SetGlobal("T1DarYoshKnowTalk","GLOBAL",1)~
== BYOSHIM ~We all do what we must, Darian. Some choices, made in haste, haunt our footsteps forever. We cannot change the choice we made, and cannot change what is to come. Some things simply must be, no matter how we may feel about it.~
== BT1Dar ~As cryptic as that answer, or lack thereof, is, it is also one I can understand. We all do what we feel we must at the time...~
== BYOSHIM ~And we pray that we are correct in what we feel is the best course of action. Sometimes we are right, and we celebrate those triumphs...~
== BT1Dar ~Sometimes we are wrong, and pay from our very soul for our misjudgement.~
== BYOSHIM ~And so we are prisoners to our choices, even those long since past. I must say, I wasn't expecting you to be familiar with that Kara-Turan proverb.~
== BT1Dar ~We all have our surprises, Yoshimo. I will pray that you eventually find your peace. And whatever happens, I am sorry for your misjudgements.~
== BYOSHIM ~As am I, Darian. As am I...~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Yoshimo")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshWorkTalk","GLOBAL",0)~
THEN BYOSHIM T1DarYoshWorkTalk
~Ah, Darian! We are working together it seems, and yet you hold yourself apart from everyone. Why don't you join us, and lighten up?~ DO ~SetGlobal("T1DarYoshWorkTalk","GLOBAL",1)~
== BT1Dar ~I am not working with you, thief. We are merely aiding the same person.~
== BYOSHIM ~Such hostility in your words? What did I do to deserve such an attitude?~
== BT1Dar ~You make your living in the shadows. You openly admit you are a thief, and, oh, what is that saying you humans use... there is no honor among thieves.~
== BYOSHIM ~To the contrary! There is as much honor amongst us as there is amongst your own Talons!~
== BT1Dar ~Making one's living off the work of others is not remotely what I would call "honorable". I do not trust you or your smile, thief.~
== BYOSHIM ~But you do not trust anyone, so why am I so different in your eyes? Do you honestly think the profits of our adventures are the only reason I'm here?~
== BT1Dar ~No, and I do not know what your other reasons are. Whatever your intentions, Yoshimo, I'm keeping an eye on you.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Yoshimo")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshKnightTalk","GLOBAL",0)~
THEN BYOSHIM T1DarYoshKnightTalk
~Darian, a knight of the air, why do you aid us?~ DO ~SetGlobal("T1DarYoshKnightTalk","GLOBAL",1)~
== BT1Dar ~I could very easily ask the same of you.~
== BYOSHIM ~You came here to rescue that Aerie girl, yes?~
== BT1Dar ~Yes, I did.~
== BYOSHIM ~Then why are you still here, I wonder.~
== BT1Dar ~I am here to repay my debt of honor to <CHARNAME>.~
== BYOSHIM ~Ah, you are a samurai - you hold yourself to honor, above and beyond your feelings.~
== BT1Dar ~I suppose that I am, under that description.~
== BYOSHIM ~Then you understand that we all must honor the choices we make, no matter how distasteful they may seem in hindsight.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Mazzy")
InParty("Aerie")
See("Aerie")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarMazAerLoveTalk","GLOBAL",0)~
THEN BMAZZY T1DarMazAerLoveTalk
~Aerie, my dear, you seem very troubled. May I ask why?~ DO ~SetGlobal("T1DarMazAerLoveTalk","GLOBAL",1)~
== BAERIE ~N-nothing...~
== BMAZZY ~Come, now. Something weighs heavily on your soul.~
== BAERIE ~Y-you... and-and Darian...~
== BMAZZY ~Darian and I love each other. I hope you know this.~
== BAERIE ~I, I do... th-that's what m-makes it so terrible.~
== BMAZZY ~Aerie, why does it upset you so? I am still your friend, and I have no doubt that Darian still looks out for you, in his fashion.~
== BAERIE ~But, but that's j-just it... he - he loves you.~
== BMAZZY ~Aerie, you didn't even know what love was. Darian and I are bound in ways you cannot begin to imagine, but we are still your friends. Have I ever let you down before?~
== BAERIE ~N-no...~
== BMAZZY ~And I will not start now. And I never will.~
== BAERIE ~Th-thank you, Mazzy.~
== BMAZZY ~Think nothing of it, my dear. I am your friend.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerComTalk","GLOBAL",0)~
THEN BAERIE T1DarAerComTalk
~I can't believe a Talon would come all the way to Amn, just to rescue me! How did you learn I was even imprisoned? Did Aerdrie Faeyna grant you a vision in your sleep, or did my family in Faeyna-Dail tell you, and sent you all over Faerun to find me?~ DO ~SetGlobal("T1DarAerComTalk","GLOBAL",1)~
== BT1Dar ~Don't be silly. This isn't a child's bed-time story. You were probably never told, but Myrrhavin, like most major Avariel settlements, keeps a close eye on all nearby non-Avariel settlements. The circus passed through one such town, and a scout entered town a few days later, and learned from the townsfolk that one of the exhibits was a "winged freak-girl", and that the circus was heading in the direction of Amn. He immediately returned to Myrrhavin to present his report.~
== BAERIE ~So did you immediately volunteer to come and rescue me?~
== BT1Dar ~Hardly. We weren't even sure that it *was* an Avariel in the circus - there are a great many creatures humans would call "winged freaks". However, the possibility that it was an imprisoned Avariel wasn't ignored. The council decided to send a small group to Amn to investigate and, if it did turn out to be an Avariel captive, to effect a rescue. I was the one assigned to travel to Athkatla, and I had only just learned from the inhabitants of that run-down tavern in the slums that it was indeed an Avariel and that the circus was presently in the city when <CHARNAME> approached me.~
== BAERIE ~Well, whatever your reasons, I'm really glad you're here!~ DO ~SetGlobal("T1DarAerDia","GLOBAL",1)~
== BT1Dar ~(Shakes his head and sighs)~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Aerie")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarAerDia","GLOBAL",1)
Global("T1DarAerCapTalk","GLOBAL",0)~ THEN BT1Dar T1DarAerCapTalk
~Aerie, I've heard the story of how you were captured and enslaved. Why did you do such a thing?~ DO ~SetGlobal("T1DarAerCapTalk","GLOBAL",1)~
== BAERIE ~Wha-what do you mean?~
== BT1Dar ~The human child you attempted to help. Why?~
== BAERIE ~I... I don't understand. Are you saying I was wrong to help that little boy?~
== BT1Dar ~Not wrong, exactly. I would have done the same thing-not even a human child deserves slavery.~
== BAERIE ~Then... why are you taking an issue with it?~
== BT1Dar ~Because you were little more than a child yourself, and but an initiate in the priesthood. I'm a trained warrior. You should have known that the fate of a human was not worth the risk.~
== BAERIE ~B-But I couldn't have just let the slavers take the little boy away! That-that would have been wrong, surely you agree!~
== BT1Dar ~I do. But Aerie, there are times when one must choose between a wrong and another wrong.~
== BAERIE ~I - I did nothing wrong! That little boy needed help, and I gave it!~ DO ~SetGlobal("T1DarAerDia","GLOBAL",2)~
== BT1Dar ~I see you will not be moved. You are stronger than you think you are, Aerie.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",2)
Global("T1DarAerProtTalk","GLOBAL",0)~
THEN BAERIE T1DarAerProtTalk
~I'm so happy you're here to protect me, Darian!~ DO ~SetGlobal("T1DarAerProtTalk","GLOBAL",1)~
== BT1Dar ~Give it a rest, Aerie. I'm not your protector.~
== BAERIE ~But y-you're a Talon! You're sworn to defend all Avariel!~
== BT1Dar ~I'm a soldier, Aerie, and I'm repaying my debt of honor to <CHARNAME>. I'm no more your bodyguard than you are one of the Menel'Quessir.~
== BAERIE ~But... w-why? I thought you were supposed to defend innocent maidens to the death! Th-that's what being a Talon is all about, isn't it?~
== BT1Dar ~That is the stuff of bed-time stories for little children, Aerie. I'm dedicated to the defense of Myrrhavin and the Menel'Quessir, yes, but I'm not the storybook hero you keep mistaking me for. I'm an ordinary man.~
== BAERIE ~But, but you're s-supposed to be more than that!~ DO ~SetGlobal("T1DarAerDia","GLOBAL",3)~
== BT1Dar ~I'm sorry if you had some image in your mind of a great warrior descending to rescue you, Aerie, but I'm not that person.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",3)
Global("T1DarAerGodTalk","GLOBAL",0)~
THEN BAERIE T1DarAerGodTalk
~Darian, may I... may I ask you something?~
== BT1Dar ~I can't stop you from doing so. What do you want?~ DO ~SetGlobal("T1DarAerGodTalk","GLOBAL",1)~
== BAERIE ~I've heard the name of Aerdrie Faeyna pass from your lips many times. As you probably know, I was an initiate in the priesthood when I was captured.~
== BT1Dar ~Yes, you've told me this before.~
== BAERIE ~But... when my wings were lost, I couldn't bear to worship her anymore. I... I turned to Baervan Wildwanderer in my prayers.~
== BT1Dar ~I'm not familiar with that god. Is he a human deity?~
== BAERIE ~Gnomish, actually. My uncle Quayle taught me much about him, him and his companion Chiktikka Fastpaws. Do - do you think I was right to worship Baervan, when I couldn't bear to pray to Aerdrie Faeyna?~
== BT1Dar ~You did what you had to in order to survive, and that's all there is to it. Your faith in the gods is your own business, Aerie - do whatever you feel you must to survive.~ DO ~SetGlobal("T1DarAerDia","GLOBAL",4)~
== BAERIE ~Thank you so much for understanding!~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",4)
Global("T1DarSevereTalk","GLOBAL",0)~
THEN BAERIE T1DarAerSevereTalk
~Darian, you're so unhappy and severe. You keep holding yourself apart from everyone. May I.. ask why?~
== BT1Dar ~They are not of the Menel'Quessir. They cannot be trusted.~ DO ~SetGlobal("T1DarSevereTalk","GLOBAL",1)~
== BAERIE ~But why - why would you think th-that way? Aren't Talons sup-supposed to be open-minded, kind to everyone?~
== BT1Dar ~No. Aerie, although you're a winged elf, you never really knew much about Avariel culture-you were too young to be taught about a great many things.~
== BAERIE ~I... I don't understand what you're saying. I'm an Av-Avariel, as much as you are, and you c-came all this way to rescue me.~ DO ~SetGlobal("T1DarAerDia","GLOBAL",5)~
== BT1Dar ~You may have been born a winged elf, and learned a fair amount about the Avariel, but you never really learned what it meant to be one of the Menel'Quessir. Aerie, I'm not your knight in shining armor. I am a Talon of Myrrhavin.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",5)
Global("T1DarAerWingTalk","GLOBAL",0)~
THEN BT1Dar T1DarAerWingTalk
~Aerie, stop giving me such envious looks.~ DO ~SetGlobal("T1DarAerWingTalk","GLOBAL",1)~
== BAERIE ~But, but... your wings. You can still fly with perfect freedom, soar high above everything. Mine were... removed, horribly. I - I'm a prisoner of the earth, he-helpless and weak.~
== BT1Dar ~Aerie, what do you want me to say? Hollow promises that we'll find a way to restore your wings? Sympathy? Pity? Disgust? You lost your wings, yes. Now face the world on your terms.~
== BAERIE ~B-but how can I do that, when e-every day, I wake up, ex-expecting to see my tawny feathers, but never finding them, just these horrible stumps! Y-you don't understand!~
== BT1Dar ~Aerie, they were just wings! Yes, it was a tragic event, but you are not a non-entity for their loss - you are a person yet, with or without your wings.~ DO ~SetGlobal("T1DarAerDia","GLOBAL",6)~
== BAERIE ~You - you're horrible! My w-wings were everything!~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Aerie")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",6) 
Global("T1DarAerPityTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarAerPityTalk
~Aerie, enough of your idiocy. Stop wallowing in self-pity and face yourself!.~ DO ~SetGlobal("T1DarAerPityTalk","GLOBAL",1)~
== BAERIE ~Wha-what do you mean?~
== BT1Dar ~I've seen you crying yourself into the reverie every other night, and how you refuse to stand up straight. Yes, you were enslaved. Yes, you went through some horrible things. But you survived. You're stronger than you think you are.~
== BAERIE ~B-But I'm not! I can barely hold on - it's only the th-thought of my uncle Quayle that keeps me going!~
== BT1Dar ~That's a lie, and in your heart, you know it. I've heard the stories of what you've endured-even the loss of your wings. That was a horrific event, as you well know. Even though you were little more than a child, with no training for the rigors of pain and suffering, you survived. I'd wager that nine out of ten Menel'Quessir, in the position and experience you went through, would have broken completely.~
== BAERIE ~But ev-everyone's so cruel to me - even you!~
== BT1Dar ~Harsh, yes, but not cruel. You claim you're fragile and weak, but the simple fact is that you're only fooling yourself.~
== BAERIE ~But I am fragile and weak! I'm not w-worthy of being treated with respect!~
== BT1Dar ~Aerie, you're destroying yourself in your self-pity and delusions of helplessness. I am a Talon, and I know a strong person when I see one. You could not have survived this long without being such a person.~
== BAERIE ~Lea-leave me alone!~
== BT1Dar ~So be it. But you cannot run away from yourself forever. Sooner or later you *will* face yourself, and I may not be present to pick up the pieces when you do.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR (2) Global("T1DarRomanceActive","GLOBAL",4) Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarAerFriendTalk","GLOBAL",0)~
THEN BAERIE T1DarAerFriendTalk
~Darian, w-why do you care so much a-about <CHARNAME>? She's a <PRO_RACE>, not-not even an Avariel!~
== BT1Dar ~I care about her as a friend, Aerie - she has earned my trust and respect.~ DO ~SetGlobal("T1DarAerFriendTalk","GLOBAL",1)~
== BAERIE ~But she's a... a <PRO_RACE>!~
== BT1Dar ~There was a time when you would have had a point, Aerie. But <CHARNAME> has taught me otherwise - the fact that she is a <PRO_RACE> means little to me anymore - she is a person first and foremost.~
EXIT



CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarAerTorTalk","GLOBAL",0)~
THEN BAERIE T1DarAerTorTalk
~D-Darian, why do you to-torture me so?~
== BT1Dar ~Torture you? I have done nothing to you.~ DO ~SetGlobal("T1DarAerTorTalk","GLOBAL",1)~
== BAERIE ~But I s-see the way you l-look at her! Y-you have feelings for her, a-and I know it!~
== BT1Dar ~Perhaps if you'd take your childish eyes off me, you might see something or someone who cares about you the way you want me to! What I... feel... about <CHARNAME> is none of your business.~
== BAERIE ~F-Fine! You're not the man I thought you were!~
== BT1Dar ~Correct, Aerie. I never was.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarAerMazTalk","GLOBAL",0)~
THEN BAERIE T1DarAerMazTalk
~Darian, I - I am sorry f-for how I acted t-towards you.~
== BT1DAR ~What brought this on?~ DO ~SetGlobal("T1DarAerMazTalk","GLOBAL",1)~
== BAERIE ~Y-you... and M-Mazzy.~
== BT1DAR ~Sigh... Aerie, you have to understand that Mazzy and I love each other.~
== BAERIE ~B-but...~
== BT1DAR ~Aerie, you're friends with Mazzy-you should understand how we feel about each other.~
== BAERIE ~I - I do... th-that's why I'm s-sorry.~
== BT1DAR ~Then I thank you for having the courage to apologize. Aerie, you are a strong person. You simply have to convince yourself of it.~
== BAERIE ~Th-thank you. I... I'll try.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("AerieRomanceActive","GLOBAL",2)
Global("T1DarAerTeachTalk","GLOBAL",0)~
THEN BAERIE T1DarAerTeachTalk
~Darian, I... I wish to apologize for how I acted towards you in the past.~
== BT1DAR ~You have nothing to apologize for. I understand why you did what you did, and your reasons are nothing to be ashamed of.~ DO ~SetGlobal("T1DarAerTeachTalk","GLOBAL",1)~
== BAERIE ~But I do -I was being a child. I thought I loved you, but <CHARNAME> taught me I didn't even really know what love was.~
== BT1DAR ~It's part of growing up, Aerie, and I'm glad to see you've learned this lesson.~
== BAERIE ~I - I understand now, why you kept pushing me away. I was acting like a little girl. Thank you for tolerating me, and not taking advantage of me.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("T1DarAerJahTalk","GLOBAL",0)~
THEN BAERIE T1DarAerJahTalk
~Darian, I - I wish to tell you something.~
== BT1DAR ~(Sighs) What is it now?~ DO ~SetGlobal("T1DarAerJahTalk","GLOBAL",1)~
== BAERIE ~I th-think you're the only one left now, w-who cares about me.~
== BT1DAR ~You're referring to <CHARNAME>, aren't you? Aerie, did you ever notice that Jaheira and I kept trying to teach you the same things?~
== BAERIE ~Y-you taught me nothing! And n-neither did that old h-harpy!~
== BT1DAR ~Jaheira and I both know you're stronger than you think you are, and we both strove to make you realize that. But we cannot make you accept what is.~
== BAERIE ~Oh, Baervan, why doesn't anyone care about me?!...~
== BT1DAR ~We do care about you, Aerie. That's why we never gave up on you - oftentimes, the hardest lessons are also the most necessary.~
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("T1DarAerVicTalk","GLOBAL",0)~
THEN BAERIE T1DarAerVicTalk
~Darian, w-why did <CHARNAME> ch-choose that evil drow?~
== BT1DAR ~Quite frankly, I don't know. But his heart is his to give to whomever he chooses, be it drow or something else entirely.~ DO ~SetGlobal("T1DarAerVicTalk","GLOBAL",1)~
== BAERIE ~B-but... she's evil!~
== BT1DAR ~I'm not going to disagree with you on that point, but Aerie, face it - <CHARNAME> chose her, and there's nothing you can do. Muster the strength I know lies within you, and pull yourself together!~
== BAERIE ~(Dissolves into tears)~
EXIT
