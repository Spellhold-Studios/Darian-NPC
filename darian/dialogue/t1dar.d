BEGIN T1Dar
APPEND T1Dar

IF ~NumTimesTalkedTo(0) Alignment(Player1,MASK_EVIL)~  T1EvilIntro
  SAY @0
  IF ~~ EXIT
END

IF ~NumTimesTalkedTo(0) OR(2) Alignment(Player1,MASK_GOOD) Alignment(Player1, MASK_GENEUTRAL)~  T1GoodIntro
  SAY @1
  + ~CheckStatLT(Player1,15,INT)~ + @2 + T1TalonInq
  + ~CheckStatGT(Player1,14,INT)~ + @3 + T1IntroInq
  ++ @4 + T1IntroBye
END

IF ~~ T1TalonInq
  SAY @5
  ++ @6 + T1IntroInq
  ++ @7 + T1IntroInq
END

IF ~~ T1IntroInq
  SAY @8
  ++ @9 + T1IntroJoin
  ++ @10 + T1IntroJoin
  + ~Race(Player1,HUMAN)~ + @11 + T1HumJoin
  + ~Race(Player1,HUMAN)~ + @12 + T1HumBye
  + ~Race(Player1,ELF)~ + @13 + T1ElfJoin
  + ~Race(Player1,ELF)~ + @14 + T1ElfJoin
  + ~!Dead("Aerie") !InParty("Aerie") Global("AerieTransform","GLOBAL",1)~ + @15 + T1AerFree
  + ~Dead("Aerie")~ + @16 + T1AerDead
END

IF ~~ T1IntroJoin
  SAY @17
  ++ @18DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @19DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @20 + T1IntroBye
END

IF ~~ T1HumJoin
  SAY @21
  ++ @22DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @23DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~  EXIT
  ++ @24 + T1HumBye
END

IF ~~ T1ElfJoin
  SAY @25
  ++ @26DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @27DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~   EXIT
  ++ @28 + T1ElfBye
END

IF ~~ T1AerDead
  SAY @29
  ++ @30 + T1AerCarn
  ++ @31 + T1AerCarn
END

IF ~~ T1AerCarn
  SAY @32
  ++ @33 + T1DarDeadAerJoin
  ++ @34 + T1DarAerBye
END

IF ~~ T1AerFree
  SAY @35
  ++ @33 + T1DarAerJoin
  ++ @34 + T1DarAerBye
END

IF ~~ T1DarDeadAerJoin
  SAY @36
  ++ @37DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @38DO~SetGlobal("T1Joined","LOCALS",1)JoinParty()~ EXIT
  ++ @39 + T1DarAerBye
END

IF ~~ T1IntroBye
  SAY @40 
  IF ~~ EXIT
END

IF ~~ T1HumBye
  SAY @41
  IF ~~ EXIT
END

IF ~~ T1ElfBye
  SAY @42 
  IF ~~ EXIT
END
END

CHAIN
IF WEIGHT #-1 ~NumTimesTalkedTo(0) InParty("Aerie") !Dead("Aerie")~ THEN ~T1Dar~ T1AeriePartyIntro
@43
== ~AERIEJ~ @44
== ~T1Dar~ @45
== ~AERIEJ~ @46
== ~T1Dar~ @47
== ~AERIEJ~ @48
== ~T1Dar~ @49
END
  ++ @33 + T1DarAerJoin
  ++ @34 + T1DarAerBye

APPEND T1Dar
IF WEIGHT #-2 ~NumTimesTalkedTo(0) InParty("Aerie") Dead("Aerie") Global("AerieTransform","Global",1)~  T1DarOddIntro
  SAY @50
  ++ @51 + T1DarAerRes
  ++ @52 + T1DarAerRes
END

IF ~~ T1DarAerRes
  SAY @53
  ++ @33 + T1DarAerJoin
  ++ @34 + T1DarAerBye
END

IF ~~ T1DarAerJoin
  SAY @54
  ++ @37 DO ~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @38 DO ~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @39 + T1DarAerBye
END

IF ~~ T1DarAerBye
  SAY @55
IF ~~ THEN DO ~SetGlobal("T1DarJoinHelp","LOCALS",1)~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("T1DarJoinHelp","LOCALS",0)~  T1DarReturn
  SAY @56
  ++ @57 DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @58 DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @59 + T1DarRetBye
END

IF ~~ T1DarRetBye
  SAY @60
  IF ~~ EXIT
END

IF ~NumTimesTalkedToGT(0) Global("T1DarJoinHelp","LOCALS",1)~  T1DarHelpReturn
  SAY @61
  ++ @33 + T1DarRetJoin
  ++ @62 + T1DarRetBye
END

IF ~~ T1DarRetJoin
  SAY @63
  ++ @37DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @38DO~SetGlobal("T1DarJoined","LOCALS",1)JoinParty()~ EXIT
  ++ @39 + T1DarAerBye
END


END