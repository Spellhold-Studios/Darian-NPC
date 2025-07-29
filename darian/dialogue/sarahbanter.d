CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("K#Sarah")
See("T1Dar")
!See ([ENEMY])
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarahTalk","GLOBAL",0)~
THEN BT1Dar T1DarSarahTalk
@0
== K#SarahB @1
== BT1DAR @2
== K#SarahB @3
== BT1DAR @4
== K#SarahB @5
== BT1DAR @6
== K#SarahB @7
== BT1DAR @8
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("K#Sarah")
See("T1Dar")
!See ([ENEMY])
!StateCheck("K#Sarah",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarahToBTalk","GLOBAL",0)~
THEN BT1Dar T1DarSarahToBTalk
@9
== K#SarahB @10
== BT1DAR25 @11
END