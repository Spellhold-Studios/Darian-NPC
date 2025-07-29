BEGIN T1DAR25

EXTEND_TOP FATESP 6 #3
  + ~!Dead("T1Dar") !InMyArea("T1Dar") Global("T1DarSummoned","GLOBAL",0)~ + @0
  DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
      Wait(2)
      CreateCreature("t1dar25",[1999.1228],1)
      SetGlobal("T1DarSummoned","GLOBAL",1)~ GOTO 8
  + ~!Dead("T1Dar") !InMyArea("T1Dar")
      Global("T1DarSummoned","GLOBAL",0)
      OR(3)
        Race(Player1,ELF)
        Race(Player1,HALF_ELF)
        Race(Player1,HUMAN)
      Gender(Player1,FEMALE)
      !Global("AerieRomanceActive","GLOBAL",2)
      !Global("AnomenRomanceActive","GLOBAL",2)
      !Global("JaheiraRomanceActive","GLOBAL",2)
      !Global("ViconiaRomanceActive","GLOBAL",2)~ + @1
  DO ~SetGlobal("T1DarRomanceActive","GLOBAL",2)
      CreateVisualEffect("SPPORTAL",[1999.1228])
      Wait(2)
      CreateCreature("t1dar25",[1999.1228],1)
      SetGlobal("T1DarSummoned","GLOBAL",1)~ GOTO 8
END

APPEND T1DAR25

IF ~NumTimesTalkedTo(0) !Global("T1DarRomanceActive","GLOBAL",2)~ join1
  SAY @2
  ++ @3 + T1DarHelp
  ++ @4 + T1DarJoin
  ++ @5 + T1DarWait
END

IF ~~ T1DarHelp
  SAY @6
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarJoin
  SAY @7
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarWait
  SAY @8
  IF ~~ DO ~MoveToPoint([2449.1514])~ EXIT
END


IF ~NumTimesTalkedTo(0) Global("T1DarRomanceActive","GLOBAL",2)~ join2
  SAY @9
  ++ @10 + T1DarReturn
  ++ @11 + T1DarPause
END

IF ~~ T1DarReturn
  SAY @12
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarPause
  SAY @13
  IF ~~ DO ~MoveToPoint([2449.1514])~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ join3
  SAY @14
  ++ @15 + T1DarRejoin
  ++ @16 + T1DarHope
END

IF ~~ T1DarRejoin
  SAY @17
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarHope
  SAY @18
  IF ~~ EXIT
END


END