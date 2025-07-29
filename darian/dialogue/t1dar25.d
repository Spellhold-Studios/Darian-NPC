BEGIN T1DAR25

EXTEND_TOP FATESP 6 #3
  + ~!Dead("T1Dar") !InMyArea("T1Dar") Global("T1DarSummoned","GLOBAL",0)~ + ~Bring me Darian, the avariel ranger.~
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
      !Global("AerieRomanceActive","GLOBAL",2)
      !Global("AnomenRomanceActive","GLOBAL",2)
      !Global("JaheiraRomanceActive","GLOBAL",2)
      !Global("ViconiaRomanceActive","GLOBAL",2)~ + ~Bring me my lover, Darian Antharrna.~
  DO ~SetGlobal("T1DarRomanceActive","GLOBAL",2)
      CreateVisualEffect("SPPORTAL",[1999.1228])
      Wait(2)
      CreateCreature("t1dar25",[1999.1228],1)
      SetGlobal("T1DarSummoned","GLOBAL",1)~ GOTO 8
END

APPEND T1DAR25

IF ~NumTimesTalkedTo(0) !Global("T1DarRomanceActive","GLOBAL",2)~ join1
  SAY ~I should have known. Why did you bring me to this... place?~
  ++ ~Sending you away was a mistake. I need your help again.~ + T1DarHelp
  ++ ~I'm not sure how we got split up. Will you join me once again?~ + T1DarJoin
  ++ ~To wait here until I need you.~ + T1DarWait
END

IF ~~ T1DarHelp
  SAY ~Very well. It is not as though I see a way to escape this place if I refused.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarJoin
  SAY ~I will. Let us proceed.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarWait
  SAY ~*sigh* I see no way out of this place, no source of food, water, accommodations for humanoid beings, or indeed anything that would make this anything but cruelty on your part. I suppose it is mine to stand and wait until you have need of me, I die of thirst, or judgment day comes.~
  IF ~~ DO ~MoveToPoint([2449.1514])~ EXIT
END


IF ~NumTimesTalkedTo(0) Global("T1DarRomanceActive","GLOBAL",2)~ join2
  SAY ~This was unforeseen. Then again, that is how things so often seem to be with you, melamin. You, and the events surrounding you, are nothing if not tumultuous and unpredictable. Nevertheless, I return to serve at your side once more.~
  ++ ~Welcome back, my love.~ + T1DarReturn
  ++ ~Uh, could you wait here a moment first?~ + T1DarPause
END

IF ~~ T1DarReturn
  SAY ~As you wish, so shall it be.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarPause
  SAY ~If you're certain, melamin, I will do as you ask.~
  IF ~~ DO ~MoveToPoint([2449.1514])~ EXIT
END


IF ~NumTimesTalkedToGT(0)~ join3
  SAY ~I feel proud of myself. I've managed to avoid death of deprivation or simple boredom. Oh, the who dragged me to this hellish place then left me to rot desires to speak with me?~
  ++ ~Drop the attitude and fall in, Darian.~ + T1DarRejoin
  ++ ~No, sorry to give you false hope.~ + T1DarHope
END

IF ~~ T1DarRejoin
  SAY ~Finally, an escape from this place. I'd call it a good thing if you weren't responsible for my being here to begin with.~
  IF ~~ DO ~SetGlobal("T1DarJoined","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ T1DarHope
  SAY ~Ninety-nine bottles of ale on the wall, ninety-nine bottles of ale, take one down, pass it around, ninety-eight bottles of ale on the wall...~
  IF ~~ EXIT
END


END