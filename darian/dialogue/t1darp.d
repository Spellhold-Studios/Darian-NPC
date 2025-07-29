BEGIN T1DarP

IF ~Global("T1DarJoined","LOCALS",1)~ Kick
  SAY @0
  ++ @1 DO ~JoinParty()~ EXIT
  ++ @2 GOTO Farewell
END

IF ~~ Farewell
  SAY @3
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeArea()~ EXIT
END

IF ~Global("T1DarJoined","LOCALS",0)~ Return
  SAY @4
  ++ @5 DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @6DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ @7 DO ~EscapeArea()~ EXIT
END