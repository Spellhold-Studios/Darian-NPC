BEGIN t1dar25p

IF ~Global("T1DarJoined","LOCALS",1) OR(2) Global("T1DarRomanceActive","GLOBAL",3) Global("T1DarRomanceActive","GLOBAL",0)~ Kick
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 GOTO PocketPlane
  ++ @3 GOTO Farewell
END

IF ~Global("T1DarJoined","LOCALS",1) Global("T1DarRomanceActive","GLOBAL",2)~ KickLove
  SAY @4
  ++ @5 DO ~JoinParty()~ EXIT
  ++ @2 GOTO PocketPlaneLove
  ++ @6 GOTO FarewellLove
END

IF ~~ Farewell
  SAY @7
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0)~ EXIT
END

IF ~~ PocketPlane
  SAY @8
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeAreaMove("AR4500",2449,1514,5)~ EXIT
END

IF ~~ PocketPlaneLove
  SAY @9
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeAreaMove("AR4500",2449,1514,5)~ EXIT
END

IF ~~ FarewellLove
  SAY @10
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0)~ EXIT
END

IF ~Global("T1DarJoined","LOCALS",0) !AreaCheck("AR4500")~ Return
  SAY @11
  ++ @12 DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @13 DO ~EscapeArea()~ EXIT
END