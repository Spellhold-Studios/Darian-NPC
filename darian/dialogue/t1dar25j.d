// --------------------------------------------
// Darian TOB J file
// --------------------------------------------
BEGIN T1DAR25J
BEGIN T1DDAD

EXTEND_BOTTOM SARVOLO 9 #7
+ ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2)~ + ~Tell me about Darian.~ EXTERN SARVOLO darianlove
+ ~InParty("T1Dar") !Global("T1DarRomanceActive","GLOBAL",2)~ + ~Tell me about Darian.~ EXTERN SARVOLO darian
END

CHAIN SARVOLO darianlove
  ~Few would have dreamed a winged elf would walk among the flightless races. Fewer still would have imagined he might find love among them as well.~
EXTERN T1DAR25J darianvolo

CHAIN SARVOLO darian
  ~Who can say what drives an Avariel knight forward? His road is a mystery to the people of Faerun, marked only by the corpses of those who have stood in his way.~
EXTERN T1DAR25J darianvolo

CHAIN T1DAR25J darianvolo
 ~Leave me and my people out of your tales. I have drawn too much attention to us as it is.~
EXTERN SARVOLO 9

INTERJECT_COPY_TRANS3 FINSOL01 27 T1DarSolFinal
== T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarRomanceActive","GLOBAL",2)~ THEN ~~
== T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) !Global("T1DarRomanceActive","GLOBAL",2)~ THEN ~~
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("T1Dar") OR(3) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",0) Global("T1DarRomanceActive","GLOBAL",3) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol1
IF ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarPregnant","GLOBAL",0) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol2
IF ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarPregnant","GLOBAL",1) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol3
END

CHAIN T1DAR25J T1DarFinSol1
  ~<CHARNAME>, you have become the person you are in spite of your taint, not because of it. If you accept it... it will destroy you. You might answer to the same name, even have the same face, but it will not be you. Be the <PRO_MANWOMAN> I have come to respect, not another unknown god.~
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2
  ~<CHARNAME>, I thought I loved you. I still respect you. And I know that the woman I see became who she is in spite of her taint, not because of it. No matter what power it might hold, accepting it will destroy you. The new goddess may look like you, and share your name, but she will not be you. If you accept it... I will mourn for the woman I knew.~
END
  ++ ~Don't be so melodramatic. I'll be fine.~ EXTERN T1DAR25J T1DarFinSol2.1
  ++ ~What's the matter? Afraid of loving a goddess?~ EXTERN T1DAR25J T1DarFinSol2.2
  ++ ~I don't know... is there still hope for us?~ EXTERN T1DAR25J T1DarFinSol2.3

CHAIN T1DAR25J T1DarFinSol2.1
  ~You will be, because you will no longer exist. Do what you think is best. You always have.~ 
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2.2
  ~I'm still afraid of losing you. And if you accept this power, I will lose you forever, no matter what the entity wearing your face might think. Do what you think is best. You always have.~
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2.3
  ~There is always hope, <CHARNAME>, though I cannot promise that this is some miraculous fantasy. Do what you think is best. You always have.~
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3
  ~...In all my dreams and nightmares of how this might end, I never saw this coming. Then again... I never saw you with child, either. <CHARNAME>... all I can say is that you have become the woman you are in spite of your taint, not because of it. If you accept it, it will destroy the woman I knew and thought I loved. Whatever you become will not be you.~
END
++ ~Darian... if the worst should happen, will you look after our child?~ EXTERN T1DAR25J T1DarFinSol3.1
++ ~Life always comes down to a few big choices. This one is mine to make, not yours.~ EXTERN T1DAR25J T1DarFinSol3.1
++ ~I don't know if I can do this...~ EXTERN T1DAR25J T1DarFinSol3.1

CHAIN T1DAR25J T1DarFinSol3.1
  ~I will. I never foresaw this, but every life is precious in this world. <CHARNAME>, do what you think is best. You always have.~
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3.2
  ~Is it really? Is it not your - our - unborn child's? But then, your will has always been a formidable thing. Do what you think is best. You always have.~
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3.3
  ~People of our stature don't get entrusted with easy decisions, I'm afraid. Just do what you think is best. You always have.~
COPY_TRANS FINSOL01 27

EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("T1Dar") Global("T1DarPCNotGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCNotGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCNotGod
END

CHAIN T1DAR25J T1DarPCGod
  ~Goodbye, <CHARNAME>. I will mourn for the <PRO_MANWOMAN> who is about to die.~
COPY_TRANS FINSOL01 29

CHAIN T1DAR25J T1DarPCNotGod
~It ends as it should. <CHARNAME>, whatever you decide to do now... I wish you the best.~
COPY_TRANS FINSOL01 32


I_C_T SAREV25A 38 T1DarToBSarev
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~I liked you better when you were dead. You should have stayed in your grave.~
END

I_C_T SAREV25A 61 T1DarToBSarev2
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Give the word and I will send him screaming back to hell, <CHARNAME>. Although perhaps it is wise to keep your enemies close at hand.~
  == SAREV25A ~I have seen hell firsthand, elf. I am not afraid to see it again.~
END

I_C_T BAZDRA01 5 T1DarToBBaz
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Qameh! He's reverting to his main form! Incoming!~
END

I_C_T YAGCON 2 T1DarToBYag
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Concubine? But he's a giant isn't he? How does that... nevermind. I do not want to pursue that line of thought.~
END

I_C_T ABAZIGAL 0 T1DarToBAbaz
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~A Bhaalspawn dragon. And here I thought this day couldn't get any worse.~
END

I_C_T BAZDRA03 12 T1DarToBBaz2
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~A dragon honoring its word? Will wonders never cease?~
  == BAZDRA03 ~Farewell, tiny mortals. Make his death a painful one.~
END


// ---------------------------------------
// Darian TOB Lovetalks
// ---------------------------------------
// TOB Lovetalk 1.
APPEND T1DAR25J

IF ~Global("T1DarToBLovetalk","GLOBAL",2)~ T1DarToBLovetalk1
  SAY ~<CHARNAME>, I will not be joining you this evening. I need some time alone to think.~
  ++ ~Uh oh. I know that look on your face.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ ~Here we go again. Start talking, mister.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ ~This is my cue to once again listen to what's bothering you and offer words of encouragement, I take it?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ ~Drop the act, Darian. Talk.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
END

IF ~~ T1DarTOBLT1prophecy
  SAY ~The time of the prophecy has come, <CHARNAME>. I do not doubt who you are anymore, my love, but it *what* you are is another matter altogether. One about to eclipse everything else, I fear.~
  ++ ~Calm down. Yes, this will probably get ugly, but we've faced ugly before.~ + T1DarTOBLT1ugly
  ++ ~I thought you were happy with what I am. Or do I need to demonstrate that again?~ + T1DarTOBLT1happy
  ++ ~We'll get through this. We survived our courtship, didn't we?~ + T1DarTOBLT1surv
  ++ ~I know what I am, and I know who I am. I also know that the first question matters much less than the second.~ + T1DarTOBLT1know
END

IF ~~ T1DarTOBLT1ugly
  SAY ~We have, yes. Demons, dragons, and worse. I suspect that none of it compares to what lies ahead of you, though. Ahead of us, even.~
  ++ ~It isn't like you to be so worried. Well, maybe it is, but you sound a lot less sure of yourself than usual.~ + T1DarTOBLT1sure
  ++ ~Stop dancing and tell me what's really bothering you aleady!~ + T1DarTOBLT1short
  ++ ~What's the matter? Worried about your own place in what's ahead?~ + T1DarTOBLT1place
  ++ ~I'm not used to hearing fear in your voice.~ + T1DarTOBLT1fear
END

IF ~~ T1DarTOBLT1happy
  SAY ~No. I am, I mean. Damn it. Your race doesn't matter to me anymore. Your father does. The Slayer and what I heard of Sarevok were bad enough, but I fear they'll pale compared to what the near future holds.~
  ++ ~Are you afraid, Darian?~ + T1DarTOBLT1fear
  ++ ~I see your inability to tell me what's really on your mind is still alive and well.~ + T1DarTOBLT1short
  ++ ~I haven't heard this much uncertainty in your voice since the first time we made love.~ + T1DarTOBLT1sure
  ++ ~You'll be at my side, Darian. You always have been.~ + T1DarTOBLT1place
END

IF ~~ T1DarTOBLT1surv
  SAY ~Heh. True. Joking aside, I look to the future and I see nothing but death and destruction on a magnitude I've long prayed I would never see. I do not think we can stop it.~
  ++ ~Then it's you, me, and the others against the local arch-villain. Again.~ + T1DarTOBLT1place
  ++ ~Look, you don't have to put up the brave act around me if you're afraid.~ + T1DarTOBLT1fear
  ++ ~Get to the point, my love. You're still terrible at doing that.~ + T1DarTOBLT1short
  ++ ~Where's the always-certain man I've come to know and love gone? Who is this impostor?~ + T1DarTOBLT1sure
END

IF ~~ T1DarTOBLT1know
  SAY ~You've never lacked for confidence. I wish I could say the same of myself. Things are going to get messy, <CHARNAME>. Very messy, and very bloody. A lot of that blood will probably be ours.~
  ++ ~You aren't afraid of getting hurt. Say what you really need to say.~ + T1DarTOBLT1short
  ++ ~I'm not sure I like this new, indecisive Darian.~ + T1DarTOBLT1sure
  ++ ~We may shed blood, but we'll be together as always. You can count on that.~ + T1DarTOBLT1place
  ++ ~I know you, Darian. You're not afraid of putting your life on the line. What are you really afraid of?~ + T1DarTOBLT1fear
END

IF ~~ T1DarTOBLT1sure
  SAY ~There aren't many things I'm certain of anymore. One of the things that I am certain of is that you will be important in the days ahead. You and your siblings. <CHARNAME>... I understand if you'd rather not be distracted in the dark days to come.~
  ++ ~Did you take a knock to the head when I wasn't looking? Don't be ridiculous - of course I want you distracting me!~ + T1DarTOBLT1stay
  ++ ~I appreciate that you're concerned about me, but I'm happy as we are. Don't worry so much about it, or about us.~ + T1DarTOBLT1stay
  ++ ~I don't know how to say this, but I think it would be for the best if we didn't... distract each other.~ + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1place
  SAY ~Is my place really with you? You are a child of Bhaal, and the prophecy has come. I... you deserve the chance to face this without me dragging you down, if that's what you want.~
  ++ ~Don't be silly, Darian. We're in this together, no matter what.~ + T1DarTOBLT1stay
  ++ ~I appreciate the thought, but I still want you by my side.~ + T1DarTOBLT1stay
  ++ ~Maybe... maybe that would be for the best.~ + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1fear
  SAY ~I'm afraid of you, and for you. My instinct is to protect you, even though I know you don't need my protection. <CHARNAME>... I'm not sure if I belong here, with you, anymore. You have your challenges to face, and I should not distract you from them.~
  ++ ~Don't be a martyr for me, Darian. I like you just fine as a friend and a lover.~ + T1DarTOBLT1stay
  ++ ~You worry too much, my love. We'll face the prophecy together.~ + T1DarTOBLT1stay
  ++ ~You... have a point.~ + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1short
  SAY ~The time of the prophecy has come. To it, you matter. My question is, do I matter? <CHARNAME>, do I still matter even now?~
  ++ ~Of course you do! Don't be silly.~ + T1DarTOBLT1stay
  ++ ~(sigh) Darian, you stay right where you are until and unless I say otherwise.~ + T1DarTOBLT1stay
  ++ ~You do, but... I have to make my own priorities now.~ + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1stay
  SAY ~Thank you, animalqua amin. That means... a great deal to me.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT1cert
  SAY ~Melamin... are you certain?~
  ++ ~I was just messing with you. Of course I want us to stay together!~ + T1DarTOBLT1stay
  ++ ~I am.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",6)~ + T1DarTOBLT1term
END

IF ~~ T1DarTOBLT1term
  SAY ~I... understand.~
  IF ~~ EXIT
END


// TOB Lovetalk 2.

IF ~Global("T1DarToBLovetalk","GLOBAL",4)~ T1DarToBLovetalk2
  SAY ~<CHARNAME>, I'm sorry for what I said the last time we talked in private. I... haven't been myself, lately.~
  ++ ~Is there anything I can do?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2do
  ++ ~I was worried about you. What's wrong?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2wrong
  ++ ~Something still bothering you?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2wrong
  ++ ~Apology accepted. Don't worry about it.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2again
END

IF ~~ T1DarTOBLT2do
  SAY ~You have enough to worry about. I must learn to deal with stress like this on my own terms.~
  ++ ~Stop playing the martyr. You have nothing to apologize for.~ + T1DarTOBLT2martyr
  ++ ~Not the first time you've planted your foot in your mouth, as I recall. I'm used to it by now.~ + T1DarTOBLT2foot
  ++ ~You don't need to do this alone. I can help.~ + T1DarTOBLT2help
  ++ ~You're digging yourself a deeper hole, my love. Stop while you're ahead.~ + T1DarTOBLT2stop
END

IF ~~ T1DarTOBLT2martyr
  SAY ~Perhaps I am my own harshest critic... something to think about. Thank you, <CHARNAME>.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2foot
  SAY ~(sigh) True. Forget I said anything.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2help
  SAY ~I cannot lean on you all the time, <CHARNAME>. Forgive me, but there are some things I must learn to do myself.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2stop
  SAY ~I bow to your wisdom.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2wrong
  SAY ~Aside from the, or a, apocalypse in progress? I'm... it's like how I felt before Suldanesselar. Helpless to protect you. A frightening, and unnerving, feeling.~
  ++ ~Is this a prelude to romantic starlit sex again?~ + T1DarTOBLT2sex
  ++ ~Never change, Darian.~ + T1DarTOBLT2change
  ++ ~I've said it before and I'll say it again: don't worry so much about me. Or in general.~ + T1DarTOBLT2again
  ++ ~I'm not sure whether to be flattered or insulted.~ + T1DarTOBLT2flatter
END

IF ~~ T1DarTOBLT2sex
  SAY ~Uh. Only if you want it to be. Nevermind.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2change
  SAY ~Where you're concerned, that admittedly seems unlikely.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2again
  SAY ~You know me, I'm afraid. Caution is in my blood.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2flatter
  SAY ~...Shutting up now.~
  IF ~~ EXIT
END

END

// WRAITH SCENE

EXTEND_BOTTOM HGWRA01 18
  IF ~Global("T1DarRomanceActive","GLOBAL",2) InParty("T1DAR")~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",1)~ EXTERN HGWRA01 wraith
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("T1DarRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t1darwra")~ EXIT
END

CHAIN HGWRA01 wraith
  ~What of the inevitable pain you must give to the one you love? The winged one, Darian.~
  == T1DAR25J ~I have already faced my demons, ghost. I do not fear you.~
  == HGWRA01 ~Have you, now? Your pride has been the death of many, but it is not my place to say whom...~
EXTERN HGWRA01 24

//summons Darian's father - male elf ranger, similar colors to Darian*

CHAIN IF ~Global("T1Dar_Wraith","GLOBAL",1)~ THEN T1DDAD wraith.1
  ~Darian... Darian, is that you?~
  == T1DAR25J ~Father?!~
  == T1DDAD ~Yes, thorelle. My little hawk. My murderer.~
  == T1DAR25J ~Murderer?! Father, you were alive and well when I left! You knew I would be away for a long time! I tried to send a report-~
  == T1DDAD ~You have nothing to report beyond your treason! You are a disgrace your people, your city, your goddess, and your family! You are no longer my son and are no longer welcome amongst the Menel'Quessir!~
  == T1DAR25J ~I have done nothing but uphold the honor of our people!~
  == T1DDAD ~It was an avalanche from an unexpected quarter. A thunderbolt from a cloudless sky. A quarrel to the heart to know how far you've fallen, beyond redemption. The best and brightest of my children, fallen forever...~
  == T1DAR25J ~Stop this, father! There is no purity in pride, you taught me that! You taught me that doing the right thing far outweighs doing the correct thing!~
  == T1DDAD ~I also taught you responsbility and duty! Look at that deformed whore you call 'animalkqua amin'! You betrayed everything our family, our entire race stands for! And for what?! Honeyed words and warm flesh! Is THAT your justice now?!~
  == T1DAR25J ~Do you have any idea how long and hard I prayed for guidance and wisdom in this?! This... Aerdrie Faeyna can't want us to live like that... she can't...~
END
  ++ ~You said it yourself, Darian! You did the right thing!~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ ~Enough! I won't let you of all people do this!~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ ~Gorion, stop it! Don't do this!~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ ~Darian, this isn't real! See through it!~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25

//THEN: All leads to HGWRA01 Phrase 25


// ToB Lovetalk 3
APPEND T1DAR25J

IF ~Global("T1DarToBLovetalk","GLOBAL",6)~ T1DarToBLovetalk3
SAY ~<CHARNAME>, I flew over Saradush after Yaga-Shura fell. I do not think there were survivors. There were craters deep enough to open even the sewers to daylight. How could this have happened?~
++ ~Well, let me think. My fire giant half-brother and his army just might have had something to do with it.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3sarc
++ ~We tried to save them. We failed. No one wins every time.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3sarc
++ ~It is a time of war, Darian. No matter how hard we try, there have been casualties. There will be more.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3war
++ ~I didn't expect this to bother you so much. Aren't you the one always talking about wars of survival and extermination?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3war
END

IF ~~ T1DarTOBLT3sarc
SAY ~I am not in the mood, <CHARNAME>. People called us heroes in Amn, even in Suldanessellar for a time. We killed a would-have-been god, then dispatched his shade in hell. But for all our power, all our might and skill and courage, Saradush died. And I don't think we could have done anything to save it.~
= ~I've talked about war for a very long tme. Always it has been spoken in terms of us and them, kill or be killed... total war. How proud I was, to speak of those same things. And how foolish.~
++ ~You didn't do this, Darian! Yaga-Shura did!~ + T1DarTOBLT3Yaga
++ ~I never held it against you. You believed what you were taught, and learned better. This wasn't an easy way to learn, but now you know what war actually means.~ + T1DarTOBLT3learn
++ ~Reality checks can be a bitch, can't they?~ + T1DarTOBLT3bitch
++ ~Live, learn, move on. Welcome to the real world.~ + T1DarTOBLT3live
END

IF ~~ T1DarTOBLT3Yaga
SAY ~You think I don't know that? Had we stayed, we wouldn't have been able to kill Yaga-Shura and the city would have fallen. We left, and the city fell. This isn't how it's supposed to be, damn it! We're heroes worthy of epics - we should be able to protect innocents like Saradush!~
++ ~Calm down. It was terrible, but there's nothing we could have done. Don't beat yourself up over it.~ + T1DarTOBLT3calm
++ ~Even the mightiest heroes have limits, my love.~ + T1DarTOBLT3limits
++ ~We could always try and round up some stragglers of Yaga-Shura's army, if that would make you feel any better.~ + T1DarTOBLT3avenge
++ ~I don't know what to say, Darian. We did our best.~ + T1DarTOBLT3best
END

IF ~~ T1DarTOBLT3learn
SAY ~Yes. Another hollow conceit exposed for all the world to see. Come, look at the vainglorious Avariel, Talon of Myrrhavin whose wings are stained with the blood of innocents he could not save.~
++ ~You can't do everything, my love. Neither can I. We all have our limits, great as some may be.~ + T1DarTOBLT3limits
++ ~We did our best. How can you expect us to do more than that?~ + T1DarTOBLT3best
++ ~Look, if you want to go kill some more fire giants, they're not hard to find.~ + T1DarTOBLT3avenge
++ ~Don't do this to yourself. Think. Calm yourself.~ + T1DarTOBLT3calm
END

IF ~~ T1DarTOBLT3bitch
SAY ~Don't. You. Dare. Go away, <CHARNAME>. I have no desire to speak with you anymore.~
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",7)~ EXIT
END

IF ~~ T1DarTOBLT3live
SAY ~A world I'm not certain I wish to live in. A world where innocents are slaughtered and heroes are powerless to defend them! Is that your real world, <CHARNAME>?~
++ ~We can avenge them. There should still be plenty of stragglers from Yaga-Shura's army around.~ + T1DarTOBLT3avenge
++ ~Calm down. Your rage isn't helping defend anyone right now.~ + T1DarTOBLT3calm
++ ~We did our best. Sometimes that just isn't enough. No one will fault us for failing.~ + T1DarTOBLT3best
++ ~Even the greatest heroes have limits, Darian.~ + T1DarTOBLT3limits
END

IF ~~ T1DarTOBLT3war
SAY ~Oh, I know. The mighty Avariel warrior, who preaches of war for survival but his stomache turns at the sight and smell of real war. Hollow and hypocritical. I held up hell as a virtue and necessity.~
= ~Save Amn, save Suldanessellar, fail to save one miserable city. All our muscle and skill and wit were for nothing. I've replayed the situation in my mind time and again, and I still don't see a way we could have saved Saradush.~
++ ~The real world isn't like a heroic fantasy tale, Darian. This is the world we've got.~ + T1DarTOBLT3live
++ ~Don't blame yourself for this. Blame Yaga-Shura if anyone, or Bhaal for setting all this in motion.~ + T1DarTOBLT3Yaga
++ ~So you were wrong about what you believed. You learned better. No one will fault you for that.~ + T1DarTOBLT3learn
++ ~Reality checks can be a bitch, can't they?~ + T1DarTOBLT3bitch
END

IF ~~ T1DarTOBLT3avenge
SAY ~Repaying slaughter with slaughter will do no one good. Damn it, <CHARNAME>! How many more innocents have to die?! How many must we be powerless to save?!~
++ ~I don't know, Darian. I just don't know.~ + T1DarTOBLT3know
++ ~Standing around moping and ranting will save no one. We have work to do.~ + T1DarTOBLT3work
++ ~The dead will be avenged, that I promise.~ + T1DarTOBLT3promise
END

IF ~~ T1DarTOBLT3know
SAY ~Neither do I. I'd like to be able to reverie without seeing the dead. Smelling them. I... just want this to be over.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3work
SAY ~Yes, we do. Thank you for bringing me to my senses.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3promise
SAY ~Vengeance... no. Repaying blood with blood has lost its appeal. I've seen altogether too much blood, recently.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3calm
SAY ~Calm down? When the rivers run red with the blood of all, guilty and innocent alike? How can you look on such slaughter and be calm?~
++ ~With great difficulty.~ + T1DarTOBLT3diff
++ ~Aimless rage helps no one. Calm down and *think.*~ + T1DarTOBLT3think
++ ~You'll destroy yourself like this. You have to learn how to deal with your anger and frustration.~ + T1DarTOBLT3deal
END

IF ~~ T1DarTOBLT3diff
SAY ~Heh. If even the mighty <CHARNAME> has trouble, I suppose there is no shame in attempting the same path with some difficulty.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3think
SAY ~Perhaps... perhaps you are right. Think before you act, plan before you attack... I am not human. I am Menel'Quessir, and I must not act in mindless haste. Thank you, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3deal
SAY ~I... I suppose I must. For everyone's sake, including my own.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3best
SAY ~Saying you did your best is another word for complacency and stagnation. No. I will persevere, and press onwards.~
++ ~You'll destroy yourself like this. I don't want you to do that.~ + T1DarTOBLT3destroy
++ ~So your best isn't perfection. Welcome to the club.~ + T1DarTOBLT3perfect
++ ~Even the strongest and swiftest have limits. Don't blame yourself.~ + T1DarTOBLT3blame
END

IF ~~ T1DarTOBLT3destroy
SAY ~You have your demons to face. I have mine.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3perfect
SAY ~I know perfection is impossible, but that's no excuse not to try. Accepting failings is the first step in succumbing to them.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3blame
SAY ~If I don't then who will? I must live with the burden of my failure.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3limits
SAY ~Don't give me that. Limits are just another word for excuses.~
++ ~I'm getting worried about you, Darian. You could be walking a very dangerous road.~ + T1DarTOBLT3danger
++ ~How hard are you going to push yourself? You'll destroy yourself before you reach your imaginary goal.~ + T1DarTOBLT3destroy
++ ~Darian, there was nothing we could have done. Deal. With. It.~ + T1DarTOBLT3done
END

IF ~~ T1DarTOBLT3danger
SAY ~So are you. Would that this was the time for peace and soundness of mind.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3done
SAY ~I will. In my own way.~
IF ~~ EXIT
END

// ToB Lovetalk 4

IF ~Global("T1DarToBLovetalk","GLOBAL",8)~ T1DarToBLovetalk4
SAY ~<CHARNAME>, we need to talk. In private.~
++ ~Uh oh.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
++ ~What's going on?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
++ ~Well, let's hear it.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
END

IF ~~ T1DarTOBLT4think
SAY ~I've been thinking about us... what we have. The problem is, I am no longer certain of what we have.~
++ ~I am.~ + T1DarTOBLT4certain
++ ~What's brought this on? You seemed pretty certain of us once you admitted we were something.~ + T1DarTOBLT4brought
++ ~Why do you doubt me now? I thought we'd literally been through hell together.~ + T1DarTOBLT4hell
++ ~What do you think is wrong?~ + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4certain
SAY ~Yes. You are not one for doubts. I thought I'd laid mine aside. My father challenged that thought.~
++ ~That *thing* was not your father.~ + T1DarTOBLT4notvader
++ ~Darian, that was an illusion meant to hurt you, nothing more.~ + T1DarTOBLT4illusion
++ ~You overcame your doubts before. Is it so different now?~ + T1DarTOBLT4overcome
++ ~So what are your doubts now?~ + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4notvader
SAY ~I know that shade was not my father, and I know it was intended to hurt my feelings and my beliefs. That does not invalidate all of its points.~
++ ~Oh, come on. You take a wraith's words over mine?~ + T1DarTOBLT4word
++ ~Darian, it was lying. Plain and simple.~ + T1DarTOBLT4word
++ ~So what exactly troubles you?~ + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4illusion
SAY ~Pain is a good teacher. It gets your attention. I know what that wraith was, but I can't dismiss everything it said simply because of what it was.~
++ ~So what do you think is wrong?~ + T1DarTOBLT4wrong
++ ~It was lying, Darian. You know that.~ + T1DarTOBLT4word
++ ~Are you really going to take a wraith at its word?~ + T1DarTOBLT4word
END

IF ~~ T1DarTOBLT4overcome
SAY ~No, but... Before, when I asked you to give me time to think, you gave it to me. <CHARNAME>... I need that time again. I need time, away from you, to think and consider things. I don't know how long it will take me.~
++ ~I still need you, Darian. Here, with me. You can think on the road.~ + T1DarTOBLT4active
++ ~Take your time, but we'll need to work things out when all this is over.~ + T1DarTOBLT4persistence
++ ~Take however long you need. I trust you.~ + T1DarTOBLT4patience
++ ~If you really have such doubts... perhaps it would be for the best if we separated. Permanently.~ + T1DarTOBLT4separation
END

IF ~~ T1DarTOBLT4word
SAY ~Truth tends to hurt more than any lie, <CHARNAME>. The wraith was right to make me question myself. Stubborness is something I have been accused of more than once.~
++ ~And what questions are you asking yourself?~ + T1DarTOBLT4wrong
++ ~You've dealt with your doubts before. Is this time really different?~ + T1DarTOBLT4overcome
END

IF ~~ T1DarTOBLT4brought
SAY ~I was certain. In the past tense. My father challenged that ill-founded certainty.~
++ ~Darian. Wraith. Psychological attack. Wake up already.~ + T1DarTOBLT4psych
++ ~You *do* know that that phantom was not your father, right?~ + T1DarTOBLT4notvader
++ ~You're really going to take a wraith's words over mine?~ + T1DarTOBLT4word
++ ~So why was your certainty ill-founded?~ + T1DarTOBLT4wrong
++ ~Do you need some time to think, like you have before when you've been troubled?~ + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4psych
SAY ~I have woken up, thank you very much. Woken up and realized that truth often hurts more than any lie could. Making me question myself was a good thing.~
++ ~So, what questions are you asking yourself?~ + T1DarTOBLT4wrong
++ ~You're going to listen to an evil wraith over your lover?~ + T1DarTOBLT4word
++ ~So what, you need time to think?~ + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4hell
SAY ~It's not you, <CHARNAME>, it's me. Me, and what my father said.~
++ ~Toril to Darian. It was a wraith. It meant to hurt you, period.~ + T1DarTOBLT4illusion
++ ~Whatever that thing may have been, it was not your father.~ + T1DarTOBLT4notvader
++ ~You're taking a wraith's words over mine?~ + T1DarTOBLT4word
++ ~What do you think your father said?~ + T1DarTOBLT4wrong
++ ~You went through doubts in Amn. Is this really so different?~ + T1DarTOBLT4overcome
END

IF ~~ T1DarTOBLT4wrong
SAY ~<CHARNAME>... I don't know how to say this. Not in this tongue, maybe not even in elven. It wasn't just what my father said... in Amn, my feelings won out over my better judgment. Not that my feelings were necessarily wrong, but...~
= ~Everything happened quickly. Too quickly. I... I need time to think, <CHARNAME>. Time... away from you, to clear my head. I need to think, consider things, and you. <CHARNAME>... will you give me that time?~
++ ~I still need you, Darian. Here, with me. You can think on the road.~ + T1DarTOBLT4active
++ ~Take your time, but we'll need to work things out when all this is over.~ + T1DarTOBLT4persistence
++ ~Take however long you need. I trust you.~ + T1DarTOBLT4patience
++ ~If you really have such doubts... perhaps it would be for the best if we separated. Permanently.~ + T1DarTOBLT4separation
END

IF ~~ T1DarTOBLT4active
SAY ~I'll try, but... I don't think this will lead to any resolution.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT4persistence
SAY ~I'm... willing to try, <CHARNAME>. For both our sakes.~
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT4patience
SAY ~...Thank you, <CHARNAME>. Thank you from the peaks of my heart.~
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT4separation
SAY ~If... perhaps it is for the best, <CHARNAME>. I... wish you the best, however things play out.~
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

// Flirts should cease after this lovetalk. //

// ToB Lovetalk 5

IF ~Global("T1DarToBLovetalk","GLOBAL",10)~ T1DarToBLovetalk5
SAY ~This will not last, <CHARNAME>. I don't think it *can* last. Our relationship is built on unsolid ground.~
++ ~Oh, what now?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBTL5explain
++ ~I give you time to think, and this is what you come up with?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT5time
++ ~Why do you think it can't last?~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBTL5explain
END

IF ~~ T1DarTOBTL5explain
SAY ~How long have we known each other, <CHARNAME>? A few months?~
+ ~!Race(Player1,ELF)~ + ~Yes, that sounds about right.~ + T1DarTOBLT5months
+ ~Race(Player1,ELF)~ + ~Yes, that sounds about right.~ + T1DarTOBLT5monthse
+ ~!Race(Player1,ELF)~ + ~Weeks, really. It's been a very short time indeed.~ + T1DarTOBLT5weeks
+ ~Race(Player1,ELF)~ + ~Weeks, really. It's been a very short time indeed.~ + T1DarTOBTL5weekse
+ ~!Race(Player1,ELF)~ + ~Must be getting close to a year now, to be honest.~ + T1DarTOBLT5year
+ ~Race(Player1,ELF)~ + ~Must be getting close to a year now, to be honest.~ + T1DarTOBLT5yeare
END

IF ~~ T1DarTOBLT5time
SAY ~Funny you should bring up time, when you've given me so little of it. Speaking of time, how long have we known each other? Months? Probably not many at that.~
+ ~!Race(Player1,ELF)~ + ~Yes, that sounds right. Why?~ + T1DarTOBLT5months
+ ~Race(Player1,ELF)~ + ~Yes, that sounds right. Why?~ + T1DarTOBLT5monthse
+ ~!Race(Player1,ELF)~ + ~Has it seemed so short to you? We've known each other for nearly a year.~ + T1DarTOBLT5year
+ ~Race(Player1,ELF)~ + ~Has it seemed so short to you? We've known each other for nearly a year.~ + T1DarTOBLT5yeare
+ ~!Race(Player1,ELF)~ + ~Did you hit your head at some point? It's only been a matter of weeks.~ + T1DarTOBLT5weeks
+ ~Race(Player1,ELF)~ + ~Did you hit your head at some point? It's only been a matter of weeks.~ + T1DarTOBTL5weekse
END

IF ~~ T1DarTOBLT5months
SAY ~Months. From what I have observed, that is an unusually abbreviated period of courtship even for humans.~
++ ~It depends on the people in question, really.~ + T1DarTOBLT5depends
++ ~Love is love, Darian. Time has nothing to do with it.~ + T1DarTOBLT5love
++ ~What's that got to do with us?~ + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5monthse
SAY ~Months. From what I have observed, that is a shockingly short period of courtship even for earth-bound elves.~
++ ~It depends on the people in question, really.~ + T1DarTOBLT5depends
++ ~I was raised among humans. I embrace the moment.~ + T1DarTOBLT5moment
++ ~Love is love, Darian. Time has nothing to do with it.~ + T1DarTOBLT5love
++ ~What's that got to do with us?~ + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5year
SAY ~A year, if that. Humans court so quickly and furiously...~
++ ~Elves don't?~ + T1DarTOBLT5elf
++ ~Love doesn't keep an hourglass, Darian.~ + T1DarTOBLT5love
++ ~What does time have to do with this?~ + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5yeare
SAY ~A year. Maybe. Very fast even for earth-bound elves.~
++ ~Time is irrelevant to love.~ + T1DarTOBLT5love
++ ~Call it my human upbringing. I embrace good things when I see them.~ + T1DarTOBLT5moment
++ ~Okay, what's bugging you?~ + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5weeks
SAY ~Weeks. Gods. Humans are a passionate people. More so than many elves appreciate, I think.~
++ ~Something's on your mind. Spit it out.~ + T1DarTOBLT5query
++ ~I do believe in love at first sight.~ + T1DarTOBLT5love
++ ~Are elves so different when they fall in love?~ + T1DarTOBLT5elf
END

IF ~~ T1DarTOBTL5weekse
SAY ~Is this common among the earth-bound elves? So quick to love?~
++ ~I was raised among humans. Their zeal for the moment is something I appreciate.~ + T1DarTOBLT5moment
++ ~Love doesn't keep an hourglass.~ + T1DarTOBLT5love
++ ~Something's wrong with you. Talk.~ + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5moment
SAY ~There is so much more than the moment. Among elves, courtships last years. Often more than a decade. We can afford to take things slowly and carefully. Passion is a common vice, but we aren't so foolish as to confuse it with love.~
= ~I need time, <CHARNAME>. Time to think, come to my own conclusions. Passion may have lead me astray, and I need to clear my head.~
++ ~We're almost done, Darian. We can keep it together.~ + T1DarTOBLT5active
++ ~Okay, I'll let you off the hook. But we will talk again when this is over.~ + T1DarTOBLT5persistence
++ ~You've made your point. Take as much time as you need. I can wait for you.~ + T1DarTOBLT5patience
++ ~Perhaps we should just go separate ways. I've enjoyed our time together, but we've grown in different directions.~ + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5elf
SAY ~Yes. Courtship normally lasts years, often a decade or more, amongst us. Passion is not a bad thing, but it is not the same thing as love. One can endure, the other cannot. One is firm foundation. The other is loose earth.~
= ~I need time, <CHARNAME>. Time to think, come to my own conclusions. Passion may have lead me astray, and I need to clear my head.~
++ ~You're wrong. We can still figure things out together.~ + T1DarTOBLT5active
++ ~I'll give you some time, but we will speak again soon.~ + T1DarTOBLT5persistence
++ ~Your kind might be right, for once. We both need to take some time apart.~ + T1DarTOBLT5patience
++ ~I am not an elf, Darian. If we're really so different... maybe we should go our separate ways now, before it hurts too much.~ + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5depends
SAY ~Then it falls upon us. Among my people, we can afford to take matters as serious as love carefully and patiently. It takes years, often more than a decade. Passion is sweet nectar, but it is far from a sustainable diet.~
= ~I need time, <CHARNAME>. Time to think, come to my own conclusions. Passion may have lead me astray, and I need to clear my head.~
++ ~You're overreacting. We can still patch things up.~ + T1DarTOBLT5active
++ ~Take your time, but we'll face this together again when we sort the current apocalypse out.~ + T1DarTOBLT5persistence
++ ~Maybe you're right. Take as much time as you need.~ + T1DarTOBLT5patience
++ ~Then maybe it's time to part ways. I wish you the best.~ + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5love
SAY ~Love. Easily confused with passion. Elves are a passionate people, given to chaos and disorder. But even we know to take prospective love with patience and care. Years, usually ten or more. Indulging in passion is not love.~
= ~I need time, <CHARNAME>. Time to think, come to my own conclusions. Passion may have lead me astray, and I need to clear my head.~
++ ~We can still make things right, here and together.~ + T1DarTOBLT5active
++ ~Fine. But when this crisis is finished, we need to talk.~ + T1DarTOBLT5persistence
++ ~You have a point, Darian. We both need to clear our heads for a while.~ + T1DarTOBLT5patience
++ ~If we've grown so apart already... perhaps it's past time we both acknowledged it.~ + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5query
SAY ~Passion. Emotional, physical, sexual. A very, very different thing from love. Love can sustain, bind people together and stand the test of time. Passion is fleeting, chaotic, and unpredictable. Confusing them is a bad idea.~
= ~I need time, <CHARNAME>. Time to think, come to my own conclusions. Passion may have lead me astray, and I need to clear my head.~
++ ~You're overreacting. We can still patch things up.~ + T1DarTOBLT5active
++ ~I'll give you some time, but we will speak again soon.~ + T1DarTOBLT5persistence
++ ~You have a point, Darian. We both need to clear our heads for a while.~ + T1DarTOBLT5patience
++ ~Perhaps we should just go separate ways. I've enjoyed our time together, but we've grown in different directions.~ + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5active
SAY ~This will solve nothing, <CHARNAME>. But perhaps it is you who needs time, not I.~
IF ~~ EXIT
END

IF ~~ T1DarTOBLT5persistence
SAY ~I do not think our difficulties can be solved so easily, but I am willing to try.~
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT5patience
SAY ~...Thank you, <CHARNAME>. I believe this will be for the best.~
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT5separation
SAY ~If... perhaps it is for the best, <CHARNAME>. I... wish you the best, however things play out.~
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

// ToB Lovetalk 6

IF ~Global("T1DarToBLovetalk","GLOBAL",12)~ T1DarToBLovetalk6
SAY ~<CHARNAME>, I have prayed it wouldn't come to this, but now I have no choice.~
++ ~Well, let's hear it.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
++ ~Okay.~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
++ ~I have a bad feeling about this...~ DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
END

IF ~~ T1DarTOBLT6explain
SAY ~Love is a word used carelessly by many people. Infatuation, lust, passion, admiration, caring, respect... none of these things are truly love, though some of them are certainly aspects of how love manifests.~
= ~You opened my eyes, <CHARNAME>. You taught me to look past species and upbringing to see people by their own merits and faults. You opened my heart as well, and I genuinely believed I was in love.~
= ~It's an addictive feeling, and one difficult to question. But <CHARNAME>... I admire you. I respect you. I care for you. I lust after you. But... forgive me... I do not love you.~
++ ~Darian, do you really mean that?~ + T1DarTOBLT6mean
++ ~I admit I've suspected as such, but you deserved to decide for yourself.~ + T1DarTOBLT6suspect
++ ~I... I see.~ + T1DarTOBLT6see
++ ~How can you say that, after all we've been through?~ + T1DarTOBLT6say
++ ~I don't know what to say, Darian.~ + T1DarTOBLT6know
++ ~There are a great many things I'm of a mind to say to you, none of them polite.~ + T1DarTOBLT6polite
END

IF ~~ T1DarTOBLT6mean
SAY ~I do. I've felt this way for a while now, but didn't want to actually say it. I asked you for time, <CHARNAME>, and you refused. I will not run from myself, or from you, forever.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6suspect
SAY ~And I have. I wanted time to think, to clear my head and heart. The foundations for love exist. Perhaps, in time... but you persisted. And I will not run from my feelings, or lack thereof, any longer.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6see
SAY ~I doubt that you do. I repeatedly asked you for time because I didn't want things to end like this. I didn't want to come to these conclusions. And yet not even I will run forever from my feelings.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6say
SAY ~With great reluctance. I had hoped I would never have to. I had hoped you would give me time to think and clear my head. I had hoped... that we might still work this out in the end. I think this is the end.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6know
SAY ~'Goodbye' might be the most appropriate thing to say. I had prayed it would never come to this, that you would give me time to think. I have never made claim to superior judgment, but you brought us to this point.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6polite
SAY ~You brought us here, <CHARNAME>, not me. I asked you for time, to think and reflect and clear head and heart. You persisted, and I will run from myself no longer.~
= ~I didn't want it to end this way. I had hoped that if I could clear my head, I would be able to move past these emotions. Yet here we are.~
++ ~Then farewell, Darian. Once we put this crisis to bed, I wish you the best wherever you go.~ + T1DarTOBLT6separation
++ ~We can still do this. We can take things slower, sure, but we can still work this out.~ + T1DarTOBLT6persistence
++ ~Take your time. Perhaps we can still work this out in the future.~ + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6persistence
SAY ~Perhaps.~
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBLT6patience
SAY ~That... is a kindness I do not deserve, after what I have said. Perhaps... there is still a foundation.~
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBLT6separation
SAY ~Goodbye, <CHARNAME>, and good luck. Even after we conclude matters here, I suspect you'll still need it.~
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1)~ EXIT
END

// ToB flirts
IF ~Global("T1DarTimeForFlirt","GLOBAL",1)~ T1DarToBFlirtStart
  SAY ~(You pause in your travels momentarily)~
  IF ~RandomNum(7,1)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBConcern
  IF ~RandomNum(7,2)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBCarve
  IF ~RandomNum(7,3)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBWrite
  IF ~RandomNum(7,4)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBSorry
  IF ~RandomNum(7,5)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBPale
  IF ~RandomNum(7,6)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBTea
  IF ~RandomNum(7,7)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBBreeze
END

IF ~~ T1DarToBConcern
  SAY ~(Once again, you notice Darian's concerned gaze resting upon you. He doesn't need to say anything to let you know he's worried about you)~
  IF ~~ EXIT
END

IF ~~ T1DarToBCarve
  SAY ~(Pausing for a moment, you notice Darian working at another woodcarving, this one seeming to depict the two of you in battle. He's gotten noticeably better at it recently.)~
  IF ~~ EXIT
END

IF ~~ T1DarToBWrite
  SAY ~(During a brief lull in the journey, Darian sits down and begins writing in his journal. He keeps looking up from his writing at you, his expression uncertain.)~
  IF ~~ EXIT
END

IF ~~ T1DarToBSorry
  SAY ~<CHARNAME>, I'm sorry for some of the things I've said, here and in Amn. (He sighs) I still don't understand why you chose me of all people.~
  IF ~~ EXIT
END

IF ~~ T1DarToBPale
  SAY ~<CHARNAME>, you've been looking pale recently. If there's anything I can do to help you with these damnable tests and trials, I will.~
  IF ~~ EXIT
END

IF ~~ T1DarToBTea
  SAY ~Hmmm. Pity we aren't in the mountains. I know a few herbs that could make the perfect tea for dealing with this country's climate, but I don't know desert plants.~
  IF ~~ EXIT
END

IF ~~ T1DarToBBreeze
  SAY ~(No sooner do beads of sweat start to collect on your brow from the heat than Darian softly utters a spell to conjure a much-welcomed cool breeze.)~
  IF ~~ EXIT
END


// Area AR5200 (Marching Mountains)
IF ~Global("T1DarToBMountains","GLOBAL",1)~ mountains
  SAY ~We aren't about to head into an active volcano, are we? My wings are flammable... but the only structure I can see seems to be built into the side of the volcano. <CHARNAME>, there are times I regret my decision to join you in Amn.~
  IF ~~ DO ~IncrementGlobal("T1DarToBMountains","GLOBAL",1)~ EXIT
END

// Area AR6101 (Entering Sendai's underground lair)
IF ~Global("T1DarToBSendai","GLOBAL",1)~ sendai
  SAY ~First an active volcano, now this... my travels with you just keep going downhill.~
  IF ~~ DO ~IncrementGlobal("T1DarToBSendai","GLOBAL",1)~ EXIT
END

// Area AR3000 (Arriving at Watcher's Keep)
IF ~Global("T1DarToBWatchers","GLOBAL",1)~ watchers
  SAY ~Humans can be impressive builders, I'll give them that.~
  IF ~~ DO ~IncrementGlobal("T1DarToBWatchers","GLOBAL",1)~ EXIT
END

END

// Aerie/Darian on-rest lovetalk
CHAIN IF ~Global("T1DarAerRom3","GLOBAL",1)~ THEN T1DAR25J T1DarAerRom3
~Aerie, you're going to hurt yourself if you keep stretching like that. Here, try this...~ DO ~SetGlobal("T1DarAerRom3","GLOBAL",2)~
== AERIE25J ~Oh, wow. That feels wonderful! What did that do?~
== T1DAR25J ~You haven't lost your wing muscles. I learned how to do this in the army - even without your wings, your previous routine was going to put a lot of stress on your back.~
== AERIE25J ~Thank you. I've only started trying to stretch and practice more for battle recently.~
== T1DAR25J ~I've noticed. You're doing well, but I've always found it best to practice with a partner.~
== AERIE25J ~Are you really trying to help me prepare for battle, or do you just want to get hot and sweaty with me?~
== T1DAR25J ~Perhaps both. Can I help it if I find athletic young women attractive?~
== AERIE25J ~*giggles* You're welcome to help me stretch any time.~
DO ~RestParty()~
EXIT


// ---------------------------------------
// Darian Player initiated dialogue
// ---------------------------------------
APPEND T1DAR25J

IF ~IsGabber(Player1)~ THEN BEGIN T1DarDarianApproach
  SAY ~(You look at Darian, the Avariel warrior. He doesn't seem to be aware of your gaze)~
  ++ ~Can I ask you something?~ + T1DarToBTalkAsk
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarToBLovetalk","GLOBAL",8)~ + ~Darian, can we talk?~ + T1DarTOBTalkSerious
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarToBLovetalk","GLOBAL",8)~ + ~(Draw closer to Darian)~ + T1DarToBTalkFlirt
  ++ ~(Silently back off)~ + T1DarToBTalkBack
END

IF ~~ T1DarToBTalkBack
  SAY ~(You back away from Darian, and he never looks up at you)~
  IF ~~ EXIT
END

IF ~~ T1DarToBTalkAsk
  SAY ~What do you wish to know?~
  ++ ~Why are you still hanging around with me? I thought you were going back to Myrrhavin.~ + T1DarTOBTalkReturn
  ++ ~How are you liking Tethyr so far?~ + T1DarTOBTalkTethyr
  + ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",3) Global("T1DarRomanceActive","GLOBAL",3)~ + ~Is it just my imagination, or are you and Aerie more than just friends now?~ + T1DarTOBTalkAerie
  ++ ~What do you think of events so far?~ + T1DarTOBTalkEvents
  ++ ~Any plans for what you'll do when this is all over?~ + T1DarTOBTalkPlans
END

IF ~~ T1DarTOBTalkReturn
  SAY ~I arranged to have word sent to Myrrhavin of my survival and status when we were in Suldanessellar. No offense, <CHARNAME>, but I expected something like the Five to happen, and wanted to lend you my help.~
  ++ ~What made you expect the Five?~ + T1DarTOBTalkFive
  ++ ~I'm glad you're here. I'll need all the help I can get.~ + T1DarTOBTalkHelp
END

IF ~~ T1DarTOBTalkFive
  SAY ~Children of Bhaal. No offense, but you're not an exception to their penchant for causing untold upheaval. It was only a matter of time until the avalanche started. I'm surprised it took as long as it did, to be honest.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkHelp
  SAY ~I'm increasingly dubious of how much my help is worth against the kind of foes you're set against these days, but in for a copper, in for an apocalypse.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkTethyr
  SAY ~Hot. Very hot. And dry. My first impressions of the desert are not good ones. The war raging across it does little to make it more appealing. All in all, I'm looking forward to going home after this.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkAerie
  SAY ~It will not detract from our duties, <CHARNAME>.~
  ++ ~I'll take that as a 'yes.'~ + T1DarTOBTalkYes
  ++ ~Just don't do something stupid like getting her pregnant.~ + T1DarTOBTalkBaby
  ++ ~I'm not sure it's a good idea, but see to it that it doesn't become an issue for the group.~ + T1DarTOBTalkIssue
END

IF ~~ T1DarTOBTalkYes
  SAY ~I do not inquire into your personal life, and would appreciate the same courtesy in return.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkBaby
  SAY ~I *am* a ranger, you know. Should it, ah, become necessary, I know enough herbalism to prepare a contraceptive.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkIssue
  SAY ~Understood.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkEvents
  SAY ~To be honest... I'm far out of my depth, <CHARNAME>. I never dreamed of fighting the kinds of foes we now challenge, and my skills are scant comfort against such odds. I will not back down from my duty, but this is very much your story and your fight now.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkPlans
  SAY ~Go home, probably. Take some time to think. This... I think I have seen more violence than I can stomache in recent days. I do not know if the Talon's path is one I wish to continue down. I will need time to think.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkSerious
  SAY ~What do you wish, <CHARNAME>?~
  ++ ~We need to talk. About us.~ + talkaboutus
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + ~I've been thinking about what you said. Darian, take your time away from me, but we can still work this out once we sort the current mess out.~ + T1DarTOBTalkpersistence
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + ~You were right, Darian. About us, about needing time. Take as much time as you need. I'll wait for you.~ + T1DarTOBTalkpatience
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + ~We've both been so uncertain lately... perhaps our paths have diverged. I think it's for the best if we parted ways.~ + T1DarTOBTalkseparation
  ++ ~How are you feeling?~ + T1DarTOBTalkFeel
  ++ ~Darian... I think I'm pregnant.~ + T1DarTOBTalkPregnant
END

IF ~~ talkaboutus
  SAY ~Not right now, <CHARNAME>. But soon.~
  IF ~~ DO ~RealSetGlobalTimer("T1DarToBLovetalkTimer","GLOBAL",300)~ EXIT
END

IF ~~ T1DarTOBTalkpersistence
  SAY ~I am not certain this is the best idea, but I am willing to try, for both our sakes.~
  IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBTalkpatience
  SAY ~...Thank you, <CHARNAME>, for your patience and your trust. I... I think this will be for the best.~
  IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBTalkseparation
  SAY ~If... If you're certain, then I wish you only the best, <CHARNAME>, no matter how this plays out.~
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBTalkFeel
  SAY ~Overwhelmed. Confused. Out of my depth. Horrified at the bloodshed... this is nothing my training, and life, ever prepared me for. It... has given me a certain perspective.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkPregnant
  SAY ~That... uh... that shouldn't be possible. I, uh, have been taking contraceptive herbs since we escaped Amn. Uh. I *really* hope you almost made me faint for your own sick entertainment, <CHARNAME>...~
  ++ ~Hehehe. Yes, I did.~ + T1DarTOBTalkEvil
  ++ ~Uh, no. I'm not joking.~ + T1DarTOBTalkOhcrap
END

IF ~~ T1DarTOBTalkEvil
  SAY ~<CHARNAME>. For the love of the Seldarine, *please* do not scare me like that again.~
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkOhcrap
  SAY ~Oh, sweet Goddess... Uh... (Darian faints in a heap)~
  IF ~~ DO ~SetGlobal("T1DarPregnant","GLOBAL",1)~ EXIT
END

IF ~~ T1DarToBTalkFlirt
 SAY ~(Darian doesn't say a word, but from his posture, he is clearly aware that you're up to something)~
  + ~RandomNum(4,1)~ + ~(Run your fingers through his hair)~ + T1DarHair1
  + ~RandomNum(4,2)~ + ~(Run your fingers through his hair)~ + T1DarHair2
  + ~RandomNum(4,3)~ + ~(Run your fingers through his hair)~ + T1DarHair3
  + ~RandomNum(4,4)~ + ~(Run your fingers through his hair)~ + T1DarHair4
  + ~RandomNum(3,1)~ + ~(Try to tickle his wings)~ + T1DarTickle1
  + ~RandomNum(3,2)~ + ~(Try to tickle his wings)~ + T1DarTickle2
  + ~RandomNum(3,3)~ + ~(Try to tickle his wings)~ + T1DarTickle3
  + ~RandomNum(2,1)~ + ~(Run the tips of your fingers down his back)~ + T1DarBack1
  + ~RandomNum(2,2)~ + ~(Run the tips of your fingers down his back)~ + T1DarBack2
END

IF ~~ T1DarHair1
  SAY ~<CHARNAME>, this really isn't the time for that.~
  IF ~~ EXIT 
END

IF ~~ T1DarHair2
  SAY ~(Darian grows even more uneasy, but he does not interfere as you continue to run your fingers through his windblown hair)~
  IF ~~ EXIT 
END

IF ~~ T1DarHair3
  SAY ~(sigh) You do that enough in bed, <CHARNAME>.~
  IF ~~ EXIT 
END

IF ~~ T1DarHair4
  SAY ~Could you please stop doing that? It's annoying.~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle1
  SAY ~Oh, for the love of Aerdrie Faeyna... not this again...~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle2
  SAY ~Please don't. This is neither the time nor the place.~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle3
  SAY ~Tickle me once, shame on you. Tickle me twice, shame on me.~
  IF ~~ EXIT 
END

IF ~~ T1DarBack1
  SAY ~(Darian doesn't react as you run you fingers down his back, but your fingers find a number of scars he's picked up since Amn)~
  IF ~~ EXIT 
END

IF ~~ T1DarBack2
  SAY ~Please stop doing that, <CHARNAME>. If I was injured, I would let you know.~
  IF ~~ EXIT 
END

END