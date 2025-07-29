BEGIN T1DarP

IF ~Global("T1DarJoined","LOCALS",1)~ Kick
  SAY ~Are you certain you wish to part ways? I will return to Myrrhavin if so.~
  ++ ~No, I think we should remain together.~ DO ~JoinParty()~ EXIT
  ++ ~I believe this is where we part ways. Farewell, and good journeys.~ GOTO Farewell
END

IF ~~ Farewell
  SAY ~Good journeys to you as well.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeArea()~ EXIT
END

IF ~Global("T1DarJoined","LOCALS",0)~ Return
  SAY ~You have returned. Do you wish my assistance once again?~
  ++ ~Wipe that attitude off your face, and the answer will be 'yes'.~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~I would appreciate it.~DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~No, we should part ways.~ DO ~EscapeArea()~ EXIT
END