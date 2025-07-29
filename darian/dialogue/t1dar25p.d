BEGIN t1dar25p

IF ~Global("T1DarJoined","LOCALS",1) OR(2) Global("T1DarRomanceActive","GLOBAL",3) Global("T1DarRomanceActive","GLOBAL",0)~ Kick
  SAY ~Are you sure, <CHARNAME>? Not that I see many places I can go at the moment.~
  ++ ~No, I think we should remain together.~ DO ~JoinParty()~ EXIT
  ++ ~Wait for me in the Pocket Plane.~ GOTO PocketPlane
  ++ ~I believe this is where we part ways. Farewell, and good journeys.~ GOTO Farewell
END

IF ~Global("T1DarJoined","LOCALS",1) Global("T1DarRomanceActive","GLOBAL",2)~ KickLove
  SAY ~Are you certain, <CHARNAME>? It is your decision, but I think this is... premature.~
  ++ ~What was I thinking? Don't leave.~ DO ~JoinParty()~ EXIT
  ++ ~Wait for me in the Pocket Plane.~ GOTO PocketPlaneLove
  ++ ~I'm sorry, but I believe it is necessary.~ GOTO FarewellLove
END

IF ~~ Farewell
  SAY ~Good journeys to you as well.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0)~ EXIT
END

IF ~~ PocketPlane
  SAY ~Very well.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeAreaMove("AR4500",2449,1514,5)~ EXIT
END

IF ~~ PocketPlaneLove
  SAY ~If I must. Do not keep me waiting... too long.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0) EscapeAreaMove("AR4500",2449,1514,5)~ EXIT
END

IF ~~ FarewellLove
  SAY ~Necessary. Such a complicated word.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",0)~ EXIT
END

IF ~Global("T1DarJoined","LOCALS",0) !AreaCheck("AR4500")~ Return
  SAY ~I am still having trouble getting my bearings straight. Getting back to Myrrhavin will be a very long journey.~
  ++ ~Don't worry about that yet. You are needed again.~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
  ++ ~Good luck.~ DO ~EscapeArea()~ EXIT
END