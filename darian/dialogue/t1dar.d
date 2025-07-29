BEGIN T1Dar
APPEND T1Dar

IF ~NumTimesTalkedTo(0) Alignment(Player1,MASK_EVIL)~  T1EvilIntro
  SAY ~I can sense your evil from here, <PRO_RACE>. Go away.~
  IF ~~ EXIT
END

IF ~NumTimesTalkedTo(0) OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1, MASK_GENEUTRAL)~  T1GoodIntro
  SAY ~Hmmm… you do not seem to be an evil person. I am Darian, Talon of Myrrhavin. What do you want?~
  + ~CheckStatLT(Player1,15,INT)~ + ~Talon of Myrrhavin? What does that mean?~ + T1TalonInq
  + ~CheckStatGT(Player1,14,INT)~ + ~What is an Avariel warrior doing in Athkatla?~ + T1IntroInq
  ++ ~Nothing, nevermind.~ + T1IntroBye
END

IF ~~ T1TalonInq
  SAY ~I am a warrior of the winged elves, the Avariel.~
  ++ ~What’s an Avariel warrior doing in Athkatla?~ + T1IntroInq
  ++ ~That’s rather unusual. What in the hells are you doing here?~ + T1IntroInq
END

IF ~~ T1IntroInq
  SAY ~I was sent here when rumors reached Myrrhavin of an Avariel imprisoned somewhere in the city. From what I’ve heard in this barely habitable section of the city, there was an Avariel involved in some sort of public spectacle in the great promenade. Barbaric humans...~
  ++ ~Rescuing your kindred is a noble goal. Can I be of any assistance?~ + T1IntroJoin
  ++ ~I don’t know about barbaric, but is there anything I can do to help?~ + T1IntroJoin
  + ~Race(Player1,HUMAN)~ + ~There’s no reason to be so hostile to humans. In fact, is there anything I can do to help?~ + T1HumJoin
  + ~Race(Player1,HUMAN)~ + ~I would watch your tongue, pompous little elf, lest I show you just how barbaric humans can be.~ + T1HumBye
  + ~Race(Player1,ELF)~ + ~Barbaric, humans may be, but there is much to admire about them. May I be of assistance?~ + T1ElfJoin
  + ~Race(Player1,ELF)~ + ~I’m inclined to agree. Can I help you rescue your kindred?~ + T1ElfJoin
  + ~!Dead("Aerie") !InParty("Aerie") Global("AerieTransform","GLOBAL",1)~ + ~Actually, we already found and freed her. She’s in the circus, over by Waukeen’s Promenade.~ + T1AerFree
  + ~Dead("Aerie")~ + ~Actually, we already found her, but I’m afraid to tell you she’s dead.~ + T1AerDead
END

IF ~~ T1IntroJoin
  SAY ~I normally work alone, but this city is unlike anything I’ve encountered before. I would be grateful for your assistance.~
  ++ ~And my assistance you shall have. Let’s get moving.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~Your goal is a worthy one. I will be pleased to help you.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I’m actually rather busy at the moment. Good luck.~ + T1IntroBye
END

IF ~~ T1HumJoin
  SAY ~I must admit I’m rather surprised a human would offer to help rescue an Avariel. I don’t know why you wish to help, but I would be grateful nevertheless.~
  ++ ~Humans aren’t as bad as you seem to think. Let’s go, and I’ll prove it to you.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I don’t like you, elf, but I will help you. Let’s get moving.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~  EXIT
  ++ ~On second thought, I see no reason to help some twittering elf with a superiority complex.~ + T1HumBye
END

IF ~~ T1ElfJoin
  SAY ~I suppose you would understand-to a degree anyway. I would be grateful for your help.~
  ++ ~Then let us make haste to rescue your kindred.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I don’t think we’re seeing quite eye-to-eye, but your kindred is possibly in danger. Let’s go.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~   EXIT
  ++ ~Actually, I’m not about to cross the human guards. Good luck.~ + T1ElfBye
END

IF ~~ T1AerDead
  SAY ~She's dead? How?~
  ++ ~A mad illusionist turned the circus into a carnival of horrors. We didn't realize what was going on until it was too late.~ + T1AerCarn
  ++ ~An insane illusionist tricked us into fighting what seemed to be an ogre, but it was only after we killed the ogre that the illusion fell away, to our horror.~ + T1AerCarn
END

IF ~~ T1AerCarn
  SAY ~(Mutters something in elven). There are too few of us left... every life is precious. I cannot blame you-you are not the first to have been decieved by evil illusions, and you will not be the last. I pray she finds comfort in the arms of Aerdrie Faeyna, for death is preferable to life as a slave. I am deeply sorry for what happened, and am grateful you at least freed her from her imprisonment. Now, is there anything I can help you with before I leave?~
  ++ ~Actually, there might be. I’m trying to rescue a childhood friend who was kidnapped by the Cowled Wizards. Do you know any way you might be able to help?~ + T1DarDeadAerJoin
  ++ ~No, I don’t think so. Farewell.~ + T1DarAerBye
END

IF ~~ T1AerFree
  SAY ~You have done a noble thing indeed, <PRO_RACE>, and I will go to the promenade to see what's happened. Now, is there anything I can help you with before I leave?~
  ++ ~Actually, there might be. I’m trying to rescue a childhood friend who was kidnapped by the Cowled Wizards. Do you know any way you might be able to help?~ + T1DarAerJoin
  ++ ~No, I don’t think so. Farewell.~ + T1DarAerBye
END

IF ~~ T1DarDeadAerJoin
  SAY ~I know nothing of the Cowled Wizards, but you are seeking to free an imprisoned companion? You did the best you could to rescue Aerie, even if you ultimately failed. It was a noble attempt regardless. If you wish, I can lend my skills as a Talon to your group until we rescue your friend.~
  ++ ~You will be an asset. Come, let’s go.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I am grateful for your help. Time is of the essence-let’s get moving.~DO~SetGlobal("T1Joined","LOCALS",1)JoinParty()~ EXIT
  ++ ~Your offer is appreciated, but it is not needed. Good luck.~ + T1DarAerBye
END

IF ~~ T1IntroBye
  SAY ~I should have expected as much. I will remain here for a time, so if you wish to reconsider, I will not hold it against you.~ 
  IF ~~ EXIT
END

IF ~~ T1HumBye
  SAY ~I could not have expected anything different from a human. I must remain here for a time, so perhaps you will have a change of heart.~
  IF ~~ EXIT
END

IF ~~ T1ElfBye
  SAY ~Understandable, if disheartening. I must remain here for a time, so perhaps you will have a change of heart.~ 
  IF ~~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0) InParty("Aerie") !Dead("Aerie")~ THEN ~T1Dar~ T1AeriePartyIntro
~Excuse me, but what is another Avariel doing in Athkatla? You don’t appear to be a warrior.~
== ~AERIEJ~ ~Avariel… another Avariel? You know of my people? And there is another in the city? Please, tell me!~
== ~T1Dar~ ~I am Darian, Talon of Myrrhavin. I was sent here to investigate rumors of an Avariel imprisoned here in Athkatla, and effect a rescue if possible. Now, who are you, and what are you doing here?~
== ~AERIEJ~ ~Oh, how wonderful! I’m Aerie of Faeyna-Dail, and I was imprisoned in a circus until this kind adventurer rescued me!~
== ~T1Dar~ ~It is good to see that there are kind-hearted people to be found below the clouds. Seeing as how you are already free, I can escort you back to Myrrhavin, if you wish.~
== ~AERIEJ~ ~You… would? That’s a wonderful offer, but I don’t think I’m ready for that just yet. <CHARNAME> has shown me that there is much good that can be done on the ground, and I think I really need some time to think and rest before I would want to return to an Avariel city.~
== ~T1Dar~ ~I’m not going to pretend I understand, but it is your choice. (Turns to address you) You have done a noble thing indeed, <PRO_RACE>, and you have my respect. Now, is there anything I can help you with before I return to Myrrhavin?~
END
  ++ ~Actually, there might be. I’m trying to rescue a childhood friend who was kidnapped by the Cowled Wizards. Do you know any way you might be able to help?~ + T1DarAerJoin
  ++ ~No, I don’t think so. Farewell.~ + T1DarAerBye

APPEND T1Dar
IF WEIGHT #-2 ~NumTimesTalkedTo(0) InParty("Aerie") Dead("Aerie") Global("AerieTransform","Global",1)~  T1DarOddIntro
  SAY ~Hmmm… you were the one they say was involved in the commotion over in the Promenade. Tell me, did you encounter an Avariel while you were there?~
  ++ ~An elf girl? Yes, we did. We freed her, and she decided to travel with us, but she was killed. We’re on our way to a temple to resurrect her.~ + T1DarAerRes
  ++ ~Oh, you mean Aerie? Yes, she’s traveling with us now. Unfortunately, she got in the way of something painful, and we’re taking her body to a temple for resurrection.~ + T1DarAerRes
END

IF ~~ T1DarAerRes
  SAY ~It’s good to know you were kind enough to free her, and you have my respect. Don’t worry about her dying-it happens to the best of us. Now, is there anything I can help you with before I return to Myrrhavin?~
  ++ ~Actually, there might be. I’m trying to rescue a childhood friend who was kidnapped by the Cowled Wizards. Do you know any way you might be able to help?~ + T1DarAerJoin
  ++ ~No, I don’t think so. Farewell.~ + T1DarAerBye
END

IF ~~ T1DarAerJoin
  SAY ~I know nothing of the Cowled Wizards, but you are seeking to free an imprisoned companion? You rescued Aerie of your own volition, which speaks well of your character. If you wish, I can lend my skills as a Talon to your group until we rescue your friend.~
  ++ ~You will be an asset. Come, let’s go.~ DO ~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I am grateful for your help. Time is of the essence-let’s get moving.~ DO ~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~Your offer is appreciated, but it is not needed. Good luck.~ + T1DarAerBye
END

IF ~~ T1DarAerBye
  SAY ~Then farewell, and good luck. I will remain here until I complete my scouting report, so if you decide there is something I can help with, feel free to come back.~
IF ~~ THEN DO ~SetGlobal("T1DarJoinHelp","LOCALS",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("T1DarJoinHelp","LOCALS",0)~  T1DarReturn
  SAY ~You've returned, <PRO_RACE>. Have you had a change of heart?~
  ++ ~Yes. Come, let's rescue your kindred.~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~I have. Come with me, and let's go.~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~Not at this time, no.~ + T1DarRetBye
END

IF ~~ T1DarRetBye
  SAY ~I hope your companions are not as indecisive as you are, <PRO_RACE>.~
  IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("T1DarJoinHelp","LOCALS",1)~  T1DarHelpReturn
  SAY ~Greetings, <CHARNAME>. Do you require my assistance with anything before I depart?~
  ++ ~Actually, there might be. I’m trying to rescue a childhood friend who was kidnapped by the Cowled Wizards. Do you know any way you might be able to help?~ + T1DarRetJoin
  ++ ~Nothing comes to mind.~ + T1DarRetBye
END

IF ~~ T1DarRetJoin
  SAY ~I know nothing of the Cowled Wizards, but you are seeking to free an imprisoned companion? You have earned my respect, so if you wish, I can lend you my skills as a Talon until we rescue your friend.~
  ++ ~You will be an asset. Come, let’s go.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~I am grateful for your help. Time is of the essence-let’s get moving.~DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ ~Your offer is appreciated, but it is not needed. Good luck.~ + T1DarAerBye
END


END