BEGIN BT1DAR25

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscBooTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarMinscHopeTalk
@0 DO ~SetGlobal("T1DarMinscHopeTalk","GLOBAL",1)~
== BMINSC25 @1
== BT1DAR25 @2
== BMINSC25 @3
== BT1DAR25 @4
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscFightTalk","GLOBAL",0)~
THEN BMINSC25 T1DarMinscFightTalk
@5 DO ~SetGlobal("T1DarMinscFightTalk","GLOBAL",1)~
== BT1DAR25 @6
== BMINSC25 @7
== BT1DAR25 @8
== BMINSC25 @9
== BT1DAR25 @10
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahSorryTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarJahSorryTalk
@11 DO ~SetGlobal("T1DarJahSorryTalk","GLOBAL",1)~
== BJAHEI25 @12
== BT1DAR25 @13
== BJAHEI25 @14
== BT1DAR25 @15
== BJAHEI25 @16
== BT1DAR25 @17
== BJAHEI25 @18
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahMatTalk","GLOBAL",0)~
THEN BJAHEI25 T1DarJahMatTalk
@19 DO ~SetGlobal("T1DarJahMatTalk","GLOBAL",1)~
== BT1DAR25 @20
== BJAHEI25 @21
== BT1DAR25 @22
== BJAHEI25 @23
== BT1DAR25 @24
== BJAHEI25 @25
== BT1DAR25 @26
EXIT


CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("sarevok")
See("T1Dar")
!See ([ENEMY])
!StateCheck("sarevok",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarGhostTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarSarGhostTalk
@27 DO ~SetGlobal("T1DarSarGhostTalk","GLOBAL",1)~
== BSAREV25 @28
== BT1DAR25 @29
== BSAREV25 @30
== BT1DAR25 @31
== BSAREV25 @32
== BT1DAR25 @33
== BSAREV25 @34
== BT1DAR25 @35
== BSAREV25 @36
== BT1DAR25 @37
EXIT

CHAIN
IF 
~CombatCounter(0)
InParty("T1Dar")
InParty("sarevok")
See("T1Dar")
!See ([ENEMY])
!StateCheck("sarevok",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarSarGodTalk","GLOBAL",0)~
THEN BSAREV25 T1DarSarGodTalk
@38 DO ~SetGlobal("T1DarSarGodTalk","GLOBAL",1)~
== BT1DAR25 @39
== BSAREV25 @40
== BT1DAR25 @41
== BSAREV25 @42
== BT1DAR25 @43
== BSAREV25 @44
== BT1DAR25 @45
== BSAREV25 @46
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarNalSorTalk
@47 DO ~SetGlobal("T1DarNalSorTalk","GLOBAL",1)~
== BNALIA25 @48
== BT1DAR25 @49
== BNALIA25 @50
== BT1DAR25 @51
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Korgan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorGloryTalk","GLOBAL",0)~
THEN BKORGA25 T1DarKorGloryTalk
@52 DO ~SetGlobal("T1DarKorGloryTalk","GLOBAL",1)~
== BT1DAR25 @53
== BKORGA25 @54
== BT1DAR25 @55
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoGodTalk","GLOBAL",0)~
THEN T1DAR T1DarAnoGodTalk
@56 DO ~SetGlobal("T1DarAnoGodTalk","GLOBAL",1)~
== BANOME25 @57
== BT1DAR25 @58
== BANOME25 @59
== BT1DAR25 @60
== BANOME25 @61
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicWarTalk","GLOBAL",0)~ 
THEN BVICON25 T1DarVicWarTalk
@62 DO ~SetGlobal("T1DarVicWarTalk","GLOBAL",1)~
== BT1DAR25 @63
== BVICON25 @64
== BT1DAR25 @65
== BVICON25 @66
== BT1DAR25 @67
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarVicRomTalk","GLOBAL",0)~ 
THEN BVICON25 T1DarVicRomTalk
@68 DO ~SetGlobal("T1DarVicRomTalk","GLOBAL",1)~
== BT1DAR25 @69
== BVICON25 @70
== BT1DAR25 @71
== BVICON25 @72
== BT1DAR25 @73
== BVICON25 @74
EXIT 

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Jan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJanNoTalk","GLOBAL",0)~
THEN BJAN25 T1DarJanNoTalk
@75 DO ~SetGlobal("T1DarJanNoTalk","GLOBAL",1)~
== BT1DAR25 @76
== BJAN25 @77
== BT1DAR25 @76
== BJAN25 @78
== BT1DAR25 @76
== BJAN25 @79
== BT1DAR25 @76
== BJAN25 @80
== BT1DAR25 @81
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarKelSorTalk
@82 DO ~SetGlobal("T1DarKelSorTalk","GLOBAL",1)~
== BKELDO25 @83
== BT1DAR25 @84
== BKELDO25 @85
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelRetireTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarKelRetireTalk
@86 DO ~SetGlobal("T1DarKelRetireTalk","GLOBAL",1)~
== BKELDO25 @87
== BT1DAR25 @88
== BKELDO25 @89
== BT1DAR25 @90
== BKELDO25 @91
== BT1DAR25 @92
== BKELDO25 @93
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerEndTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarHaerEndTalk
@94 DO ~SetGlobal("T1DarHaerEndTalk","GLOBAL",1)~
== BHAERD25 @95
== BT1DAR25 @96
== BHAERD25 @97
== BT1DAR25 @98
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwRetTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarEdwRetTalk
@99 DO ~SetGlobal("T1DarEdwRetTalk","GLOBAL",1)~
== BEDWIN25 @100
== BT1DAR25 @101
== BEDWIN25 @102
== BT1DAR25 @103
== BEDWIN25 @104
== BT1DAR25 @105
== BEDWIN25 @106
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazTireTalk","GLOBAL",0)~
THEN BMAZZY25 T1DarMazTireTalk
@107 DO ~SetGlobal("T1DarMazTireTalk","GLOBAL",1)~
== BT1DAR25 @108
== BMAZZY25 @109
== BT1DAR25 @110
== BMAZZY25 @111
== BT1DAR25 @112
== BMAZZY25 @113
== BT1DAR25 @114
== BMAZZY25 @115
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
See("Valygar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarValWarTalk","GLOBAL",0)~ 
THEN BT1DAR25 T1DarValWarTalk
@116 DO ~SetGlobal("T1DarValWarTalk","GLOBAL",1)~
== BVALYG25 @117
== BT1DAR25 @118
== BVALYG25 @119
== BT1DAR25 @120
== BVALYG25 @121
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Cernd")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndBalTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarCerndBalTalk
@122 DO ~SetGlobal("T1DarCerndBalTalk","GLOBAL",1)~
== BCERND25 @123
== BT1DAR25 @124
== BCERND25 @125
== BT1DAR25 @126
== BCERND25 @127
== BT1DAR25 @128
== BCERND25 @129
== BT1DAR25 @130
== BCERND25 @131
== BT1DAR25 @132
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoJournalTalk","GLOBAL",0)~
THEN T1DAR T1DarImoJournalTalk
@133 DO ~SetGlobal("T1DarImoJournalTalk","GLOBAL",1)~
== BIMOEN25 @134
== BT1DAR25 @135
== BIMOEN25 @136
== BT1DAR25 @137
== BIMOEN25 @138
== BT1DAR25 @139
== BIMOEN25 @140
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoRomTalk","GLOBAL",0)~
THEN BIMOEN25 T1DarImoRomTalk
@141
== BT1DAR25 @142
== BIMOEN25 @143
== BT1DAR25 @76
== BIMOEN25 @144
== BT1DAR25 @145
== BIMOEN25 @146
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR(2)
  Global("T1DarRomanceActive","GLOBAL",2)
  Global("AerieRomanceActive","GLOBAL",2)
Global("T1DarAerNonSorTalk","GLOBAL",0)~
THEN BT1DAR25 T1DarAerNonSorTalk
@147 DO ~SetGlobal("T1DarAerNonSorTalk","GLOBAL",1)~
== BAERIE25 @148
== BT1DAR25 @149
== BAERIE25 @150
== BT1DAR25 @151
== BAERIE25 @152
== BT1DAR25 @153
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR(2)
  Global("T1DarRomanceActive","GLOBAL",3)
  Global("T1DarRomanceActive","GLOBAL",0)
OR(2)
  Global("AerieRomanceActive","GLOBAL",3)
  Global("AerieRomanceActive","GLOBAL",0)
Global("T1DarAerRom1","GLOBAL",0)~
THEN BT1DAR25 T1DarAerRom1
@147 
DO ~SetGlobal("T1DarAerRom1","GLOBAL",1)~
== BAERIE25 @148
== BT1DAR25 @149
== BAERIE25 @154
== BT1DAR25 @155
== BAERIE25 @156
== BT1DAR25 @157
== BAERIE25 @158
== BT1DAR25 @159
== BAERIE25 @160
== BT1DAR25 @161
EXIT

CHAIN
IF WEIGHT #2 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
InParty("HaerDalis")
See("T1Dar")
See("Aerie")
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
!StateCheck("Haerdalis",CD_STATE_NOTVALID)
Global("HaerDalisRomanceActive","GLOBAL",2)
Global("T1DarAerRom1","GLOBAL",1)
Global("T1DarAerRom2","GLOBAL",0)
Global("T1DarAerRomHD","GLOBAL",0)~
THEN BHAERD25 T1DarAerRomHD
@162 
DO ~SetGlobal("T1DarAerRomHD","GLOBAL",1) ActionOverride("Haerdalis",SetGlobal("ExpBHaer1","LOCALS",2))~
== BT1DAR25 @163
== BAERIE25 @164
== BHAERD25 @165
== BT1DAR25 @166
== BHAERD25 @167
== BAERIE25 @168
EXIT

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom1","GLOBAL",1)
Global("T1DarAerRom2","GLOBAL",0)~
THEN BAERIE25 T1DarAerRom2
@169 DO ~SetGlobal("T1DarAerRom2","GLOBAL",1) SetGlobal("T1DarAerRom2HD","GLOBAL",1) SetGlobalTimer("T1DarAerieTimer","GLOBAL",ONE_DAY)~
== BT1DAR25 @170
=  @171
== BAERIE25 @172
== BT1DAR25 @173
== BAERIE25 @174
== BT1DAR25 @175
== BAERIE25 @176
== BT1DAR25 @177
EXIT

// on rest lovetalk - in t1dar25j

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom3","GLOBAL",1)
Global("T1DarAerRom4","GLOBAL",0)~
THEN BAERIE25 T1DarAerRom4
@178 DO ~SetGlobal("T1DarAerRom4","GLOBAL",1)~
== BT1DAR25 @179
== BAERIE25 @180
== BT1DAR25 @181
== BAERIE25 @182
== BT1DAR25 @183
== BAERIE25 @184
== BT1DAR25 @185
== BAERIE25 @186
== BT1DAR25 @187
EXIT

CHAIN
IF WEIGHT #-1 ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerRom4","GLOBAL",1)
Global("T1DarAerRom5","GLOBAL",0)~
THEN BT1DAR25 T1DarAerRom5
@188 DO ~SetGlobal("T1DarAerRom5","GLOBAL",1)~
== BAERIE25 @189
== BT1DAR25 @190
== BAERIE25 @191
== BT1DAR25 @192
== BAERIE25 @193
== BT1DAR25 @194
== BAERIE25 @195
== BT1DAR25 @196
EXIT