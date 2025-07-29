
                                                                     
                                                                     
                                             
// --------------------------------------------
// Darian Banters
// --------------------------------------------
BEGIN ~BT1DAR~

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
THEN BMINSC T1DarMinscBooTalk
@0 DO ~SetGlobal("T1DarMinscBooTalk","GLOBAL",1)~
== BT1Dar @1
== BMINSC @2
== BT1Dar @3
== BMINSC @4
== BT1Dar @5
== BMINSC @6
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMinscLookTalk","GLOBAL",0)~
THEN BMINSC T1DarMinscLookTalk
@7 DO ~SetGlobal("T1DarMinscLookTalk","GLOBAL",1)~
== BT1Dar @8
== BMINSC @9
== BT1Dar @10
== BMINSC @11
== BT1Dar @12
== BMINSC @13
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Minsc") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID) 
Global("T1DarMinscFuryTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarMinscFuryTalk
@14 DO ~SetGlobal("T1DarMinscFuryTalk","GLOBAL",1)~
== BMINSC @15
== BT1Dar @16
== BMINSC @17
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahGazeTalk","GLOBAL",0)~
THEN BJAHEIR T1DarJahGazeTalk
@18 DO ~SetGlobal("T1DarJahGazeTalk","GLOBAL",1)~
== BT1Dar @19
== BJAHEIR @20
== BT1Dar @21
== BJAHEIR @22
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("jaheira") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahLoseTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarJahLoseTalk
@23 DO ~SetGlobal("T1DarJahLoseTalk","GLOBAL",1)~
== BJAHEIR @24
== BT1Dar @25
== BJAHEIR @26
== BT1Dar @27
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("jaheira")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJahApoTalk","GLOBAL",0)~
THEN BT1Dar T1DarJahApoTalk
@28 DO ~SetGlobal("T1DarJahApoTalk","GLOBAL",1)~
== BJAHEIR @29
== BT1Dar @30
== BJAHEIR @31
== BT1Dar @32
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalAskTalk","GLOBAL",0)~
THEN BNALIA T1DarNalAskTalk
@33 DO ~SetGlobal("T1DarNalAskTalk","GLOBAL",1)~
== BT1Dar @34
== BNALIA @35
== BT1Dar @36
== BNALIA @37
== BT1Dar @38
== BNALIA @39
== BT1Dar @40
== BNALIA @41
== BT1Dar @42
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalWorkTalk","GLOBAL",0)~
THEN BNALIA T1DarNalWorkTalk
@43 DO ~SetGlobal("T1DarNalWorkTalk","GLOBAL",1)~
== BT1Dar @44
== BNALIA @45
== BT1Dar @46
== BNALIA @47
== BT1Dar @48
== BNALIA @49
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Nalia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarNalNobleTalk","GLOBAL",0)~
THEN BNALIA T1DarNalNobleTalk
@50 DO ~SetGlobal("T1DarNalNobleTalk","GLOBAL",1)~
== BT1Dar @51
== BNALIA @52
== BT1Dar @53
== BNALIA @54
== BT1Dar @55
== BNALIA @56
== BT1Dar @57
== BNALIA @58
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Korgan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorSightTalk","GLOBAL",0)~
THEN BKORGAN T1DarKorSightTalk
@59 DO ~SetGlobal("T1DarKorSightTalk","GLOBAL",1)~
== BT1Dar @60
== BKORGAN @61
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Korgan") 
See("Korgan") 
!See ([ENEMY])
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKorWhyTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarKorWhyTalk
@62 DO ~SetGlobal("T1DarKorWhyTalk","GLOBAL",1)~
== BKORGAN @63
== BT1Dar @64
== BKORGAN @65
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Anomen") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoProcTalk","GLOBAL",0)~ THEN BT1Dar T1DarAnoProcTalk
@66 DO ~SetGlobal("T1DarAnoProcTalk","GLOBAL",1)~
== BANOMEN @67
== BT1Dar @68
== BANOMEN @69
== BT1Dar @70
== BANOMEN @71
== BT1Dar @72
EXIT 

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoDutyTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoDutyTalk
@73 DO ~SetGlobal("T1DarAnoDutyTalk","GLOBAL",1)~
== BT1Dar @74
== BANOMEN @75
== BT1Dar @76
== BANOMEN @77
== BT1Dar @78
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoTrainTalk","GLOBAL",0)~
THEN BT1Dar T1DarAnoTrainTalk
@79 DO ~SetGlobal("T1DarAnoTrainTalk","GLOBAL",1)~
== BANOMEN @80
== BT1Dar @81
== BANOMEN @82
== BT1Dar @83
== BANOMEN @84 
== BT1Dar @85
== BANOMEN @86
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAnoTrainTalk","GLOBAL",1)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoApoTalk","GLOBAL",0)~
THEN BT1Dar T1DarAnoApoTalk
@87 DO ~SetGlobal("T1DarAnoApoTalk","GLOBAL",1)~
== BANOMEN @88
== BT1Dar @89
== BANOMEN @90
== BT1Dar @91
== BANOMEN @92
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",4)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoLookTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoLookTalk
@93 DO ~SetGlobal("T1DarAnoLookTalk","GLOBAL",1)~
== BT1Dar @94
== BANOMEN @95
== BT1Dar @96
== BANOMEN @97
== BT1Dar @98
== BANOMEN @99
== BT1Dar @100
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("AnomenIsKnight","GLOBAL",1)
Global("T1DarAnoRomTalk","GLOBAL",0)~
THEN BANOMEN T1DarAnoRomTalk
@101 DO ~SetGlobal("T1DarAnoRomTalk","GLOBAL",1)~
== BT1Dar @102
== BANOMEN @103
== BT1Dar @104
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Anomen")
!InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("AnomenRomanceActive","GLOBAL",2)
Global("T1DarAnoResTalk","GLOBAL",0)
Global("T1DarMazzyRomance","GLOBAL",0)~
THEN BT1Dar T1DarAnoResTalk
@105 DO ~SetGlobal("T1DarAnoResTalk","GLOBAL",1)~
== BANOMEN @106
== BT1Dar @107
== BANOMEN @108
== BT1Dar @109
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Viconia") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicIllythTalk","GLOBAL",0)~ THEN BT1Dar T1DarVicIllythTalk
@110 DO ~SetGlobal("T1DarVicIllythTalk","GLOBAL",1)~
== BVICONI @111
== BT1Dar @112
== BVICONI @113
== BT1Dar @114
== BVICONI @115
== BT1Dar @116
== BVICONI @117
== BT1Dar @118
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Viconia")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarVicIllythTalk","GLOBAL",1)
Global("T1DarVicIntTalk","GLOBAL",0)~
THEN BVICONI T1DarVicIntTalk
@119 DO ~SetGlobal("T1DarVicIntTalk","GLOBAL",1)~
== BT1Dar @120
== BVICONI @121
== BT1Dar @122
== BVICONI @123
== BT1Dar @124
== BVICONI @125
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Jan")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarJanMalTalk","GLOBAL",0)~
THEN BJAN T1DarJanMalTalk
@126 DO ~SetGlobal("T1DarJanMalTalk","GLOBAL",1)~
== BT1Dar @127
== BJAN @128
== BT1Dar @129
== BJAN @130
== BT1Dar @131
== BJAN @132
== BT1Dar @133
== BJAN @134
== BT1Dar @135
== BJAN @136
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Jan") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarJanTurnipTalk","GLOBAL",0)~ THEN BT1Dar T1DarJanTurnipTalk
@137 DO ~SetGlobal("T1DarJanTurnipTalk","GLOBAL",1)~
== BJAN @138
== BT1Dar @139
== BJAN @140
== BT1Dar @141
== BJAN @142
== BT1Dar @143
== BJAN @144
== BT1Dar @145
== BJAN @146
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelApartTalk","GLOBAL",0)~
THEN BKELDOR T1DarKelApartTalk
@147 DO ~SetGlobal("T1DarKelApartTalk","GLOBAL",1)~
== BT1Dar @148
== BKELDOR @149
== BT1Dar @150
== BKELDOR @151
== BT1Dar @152
== BKELDOR @153
== BT1Dar @154
== BKELDOR @155
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Keldorn")
See("T1Dar")
!See ([ENEMY])
!StateCheck("jaheira",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelApartTalk","GLOBAL",1)
Global("T1DarKelAskTalk","GLOBAL",0)~
THEN BKELDOR T1DarKelAskTalk
@156 DO ~SetGlobal("T1DarKelAskTalk","GLOBAL",1)~
== BT1Dar @157
== BKELDOR @158
== BT1Dar @159
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Keldorn") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarKelAgeTalk","GLOBAL",0)~ THEN BT1Dar T1DarKelAgeTalk
@160 DO ~SetGlobal("T1DarKelAgeTalk","GLOBAL",1)~
== BKELDOR @161
== BT1Dar @162
== BKELDOR @163
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerPlaneTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerPlaneTalk
@164 DO ~SetGlobal("T1DarHaerPlaneTalk","GLOBAL",1)~
== BT1Dar @165
== BHAERDA @166
== BT1Dar @167
== BHAERDA @168
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("HaerDalis") 
See("HaerDalis") 
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarHaerDoomTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarHaerDoomTalk
@169 DO ~SetGlobal("T1DarHaerDoomTalk","GLOBAL",1)~
== BHAERDA @170
== BT1Dar @171
== BHAERDA @172
== BT1Dar @173
== BHAERDA @174
== BT1Dar @175
== BHAERDA @176
== BT1Dar @177
== BHAERDA @178
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarHaerDoomTalk","GLOBAL",1)
Global("T1DarHaerChaosTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerChaosTalk
@179 DO ~SetGlobal("T1DarHaerChaosTalk","GLOBAL",1)~
== BT1Dar @180
== BHAERDA @181
== BT1Dar @182
== BHAERDA @183
== BT1Dar @184
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("HaerDalis")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerComTalk","GLOBAL",1)
Global("T1DarHaerAerieTalk","GLOBAL",0)~
THEN BHAERDA T1DarHaerAerieTalk
@185
== BT1Dar @186 DO ~SetGlobal("T1DarHaerAerieTalk","GLOBAL",1)~
== BHAERDA @187
== BT1Dar @188
== BHAERDA @189
== BT1Dar @190
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwHenchTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwHenchTalk
@191 DO ~SetGlobal("T1DarEdwHenchTalk","GLOBAL",1)~
== BT1Dar @192
== BEDWIN @193
== BT1Dar @194
== BEDWIN @195
== BT1Dar @196
== BEDWIN @197
== BT1Dar @198
== BEDWIN @199
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarEdwChatTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwChatTalk
@200 DO ~SetGlobal("T1DarEdwChatTalk","GLOBAL",1)~
== BT1Dar @201
== BEDWIN @202
== BT1Dar @203
== BEDWIN @204
== BT1Dar @205
== BEDWIN @206
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Edwin")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("T1DarEdwinaTalk","GLOBAL",0)~
THEN BEDWIN T1DarEdwinaTalk
@207 DO ~SetGlobal("T1DarEdwinaTalk","GLOBAL",1)~
== BT1Dar @208
== BEDWIN @209
== BT1Dar @210
== BEDWIN @211
== BT1Dar @212
== BEDWIN @213
== BT1Dar @214
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Mazzy")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazLookTalk","GLOBAL",0)~
THEN BMAZZY T1DarMazLookTalk
@215 DO ~SetGlobal("T1DarMazLookTalk","GLOBAL",1)~
== BT1Dar @216
== BMAZZY @217
== BT1Dar @218
== BMAZZY @219
== BT1Dar @220
== BMAZZY @221
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Mazzy")
InParty("T1Dar") 
See("Mazzy") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazSusTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarMazSusTalk
@222 DO ~SetGlobal("T1DarMazSusTalk","GLOBAL",1)~
== BMAZZY @223
== BT1Dar @224
== BMAZZY @225
== BT1Dar @226
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
InParty("T1Dar")
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarValMagTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarValMagTalk
@227 DO ~SetGlobal("T1DarValMagTalk","GLOBAL",1)~
== BVALYGA @228
== BT1Dar @229
== BVALYGA @230
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Valygar")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarValMagTalk","GLOBAL",1)
Global("T1DarValSayTalk","GLOBAL",0)~
THEN BVALYGA T1DarValSayTalk
@231 DO ~SetGlobal("T1DarValSayTalk","GLOBAL",1)~
== BT1Dar @232
== BVALYGA @233
== BT1Dar @234
== BVALYGA @235
== BT1Dar @236
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Valygar") 
See("Valygar") 
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarValGodTalk","GLOBAL",0)~ THEN BT1Dar T1DarValGodTalk
@237 DO ~SetGlobal("T1DarValGodTalk","GLOBAL",1)~
== BVALYGA @238
== BT1Dar @239
== BVALYGA @240
== BT1Dar @241
== BVALYGA @242
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Valygar")
InParty("Mazzy")
See("T1Dar")
See("Valygar")
See("Mazzy")
!See ([ENEMY])
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarValMazTalk","GLOBAL",0)~
THEN BVALYGA T1DarValMazTalk
@243 DO ~SetGlobal("T1DarValMazTalk","GLOBAL",1)~
== BMAZZY @244
== BT1Dar @245
== BMAZZY @246
== BT1Dar @247
== BMAZZY @248
== BVALYGA @249
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Cernd")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndLycTalk","GLOBAL",0)~
THEN BCERND T1DarCerndLycTalk
@250 DO ~SetGlobal("T1DarCerndLycTalk","GLOBAL",1)~
== BT1Dar @251
== BCERND @252
== BT1Dar @253
== BCERND @254
== BT1Dar @255
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Cernd")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCerndMotTalk","GLOBAL",0)~ THEN BT1Dar T1DarCerndMotTalk
@256 DO ~SetGlobal("T1DarCerndMotTalk","GLOBAL",1)~
== BCERND @257
== BT1Dar @258
== BCERND @259
== BT1Dar @260
== BCERND @261
== BT1Dar @262
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Cernd")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
AreaType(FOREST)
Global("T1DarCerndWildTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarCerndWildTalk
@263 DO ~SetGlobal("T1DarCerndWildTalk","GLOBAL",1)~
== BCERND @264
== BT1Dar IF ~InParty("HaerDalis")~ THEN @265
== BT1Dar IF ~!InParty("HaerDalis")~ THEN @266
== BCERND @267
== BT1Dar @268
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Imoen2")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoResTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarImoResTalk
@269 DO ~SetGlobal("T1DarImoResTalk","GLOBAL",1)~
== BIMOEN2 @270
== BT1Dar @271
== BIMOEN2 @272
== BT1Dar @273
== BIMOEN2 @274
== BT1Dar @275
== BIMOEN2 @276
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoSisTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoSisTalk
@277 DO ~SetGlobal("T1DarImoSisTalk","GLOBAL",1)~
== BT1Dar @278
== BIMOEN2 @279
== BT1Dar @280
== BIMOEN2 @281
== BT1Dar @282
== BIMOEN2 @283
== BT1Dar @284
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoSneakTalk","GLOBAL",0)~
THEN BT1Dar T1DarImoSneakTalk
@285 DO ~SetGlobal("T1DarImoSneakTalk","GLOBAL",1)~
== BIMOEN2 @286
== BT1Dar @287
== BIMOEN2 @288
== BT1Dar @289
== BIMOEN2 @290
== BT1Dar @291
== BIMOEN2 @292
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarCharMarr","GLOBAL",1)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoAffairTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoAffairTalk
@293 DO ~SetGlobal("T1DarImoAffairTalk","GLOBAL",1)~
== BT1Dar @294
== BIMOEN2 @295
== BT1Dar @296
== BIMOEN2 @297
== BT1Dar @298
== BIMOEN2 @299
EXIT


CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Imoen2")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarImoenCharLove","GLOBAL",1)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarImoPeaceTalk","GLOBAL",0)~
THEN BIMOEN2 T1DarImoPeaceTalk
@300 DO ~SetGlobal("T1DarImoPeaceTalk","GLOBAL",1)~
== BT1Dar @301
== BIMOEN2 @302
== BT1Dar @303
== BIMOEN2 @304
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Yoshimo")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshKnowTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarYoshWorkTalk
@305 DO ~SetGlobal("T1DarYoshKnowTalk","GLOBAL",1)~
== BYOSHIM @306
== BT1Dar @307
== BYOSHIM @308
== BT1Dar @309
== BYOSHIM @310
== BT1Dar @311
== BYOSHIM @312
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Yoshimo")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshWorkTalk","GLOBAL",0)~
THEN BYOSHIM T1DarYoshWorkTalk
@313 DO ~SetGlobal("T1DarYoshWorkTalk","GLOBAL",1)~
== BT1Dar @314
== BYOSHIM @315
== BT1Dar @316
== BYOSHIM @317
== BT1Dar @318
== BYOSHIM @319
== BT1Dar @320
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Yoshimo")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarYoshKnightTalk","GLOBAL",0)~
THEN BYOSHIM T1DarYoshKnightTalk
@321 DO ~SetGlobal("T1DarYoshKnightTalk","GLOBAL",1)~
== BT1Dar @322
== BYOSHIM @323
== BT1Dar @324
== BYOSHIM @325
== BT1Dar @326
== BYOSHIM @327
== BT1Dar @328
== BYOSHIM @329
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Mazzy")
InParty("Aerie")
See("Aerie")
!See ([ENEMY])
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Aerie",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarMazAerLoveTalk","GLOBAL",0)~
THEN BMAZZY T1DarMazAerLoveTalk
@330 DO ~SetGlobal("T1DarMazAerLoveTalk","GLOBAL",1)~
== BAERIE @331
== BMAZZY @332
== BAERIE @333
== BMAZZY @334
== BAERIE @335
== BMAZZY @336
== BAERIE @337
== BMAZZY @338
== BAERIE @339
== BMAZZY @340
== BAERIE @341
== BMAZZY @342
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerComTalk","GLOBAL",0)~
THEN BAERIE T1DarAerComTalk
@343 DO ~SetGlobal("T1DarAerComTalk","GLOBAL",1)~
== BT1Dar @344
== BAERIE @345
== BT1Dar @346
== BAERIE @347 DO ~SetGlobal("T1DarAerDia","GLOBAL",1)~
== BT1Dar @348
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Aerie")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID) 
Global("T1DarAerDia","GLOBAL",1)
Global("T1DarAerCapTalk","GLOBAL",0)~ THEN BT1Dar T1DarAerCapTalk
@349 DO ~SetGlobal("T1DarAerCapTalk","GLOBAL",1)~
== BAERIE @24
== BT1Dar @350
== BAERIE @351
== BT1Dar @352
== BAERIE @353
== BT1Dar @354
== BAERIE @355
== BT1Dar @356
== BAERIE @357 DO ~SetGlobal("T1DarAerDia","GLOBAL",2)~
== BT1Dar @358
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",2)
Global("T1DarAerProtTalk","GLOBAL",0)~
THEN BAERIE T1DarAerProtTalk
@359 DO ~SetGlobal("T1DarAerProtTalk","GLOBAL",1)~
== BT1Dar @360
== BAERIE @361
== BT1Dar @362
== BAERIE @363
== BT1Dar @364
== BAERIE @365 DO ~SetGlobal("T1DarAerDia","GLOBAL",3)~
== BT1Dar @366
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",3)
Global("T1DarAerGodTalk","GLOBAL",0)~
THEN BAERIE T1DarAerGodTalk
@367
== BT1Dar @368 DO ~SetGlobal("T1DarAerGodTalk","GLOBAL",1)~
== BAERIE @369
== BT1Dar @370
== BAERIE @371
== BT1Dar @372
== BAERIE @373
== BT1Dar @374 DO ~SetGlobal("T1DarAerDia","GLOBAL",4)~
== BAERIE @375
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",4)
Global("T1DarSevereTalk","GLOBAL",0)~
THEN BAERIE T1DarAerSevereTalk
@376
== BT1Dar @377 DO ~SetGlobal("T1DarSevereTalk","GLOBAL",1)~
== BAERIE @378
== BT1Dar @379
== BAERIE @380 DO ~SetGlobal("T1DarAerDia","GLOBAL",5)~
== BT1Dar @381
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",5)
Global("T1DarAerWingTalk","GLOBAL",0)~
THEN BT1Dar T1DarAerWingTalk
@382 DO ~SetGlobal("T1DarAerWingTalk","GLOBAL",1)~
== BAERIE @383
== BT1Dar @384
== BAERIE @385
== BT1Dar @386 DO ~SetGlobal("T1DarAerDia","GLOBAL",6)~
== BAERIE @387
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("Aerie")
InParty("T1Dar") 
See("T1Dar") 
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarAerDia","GLOBAL",6) 
Global("T1DarAerPityTalk","GLOBAL",0)~ 
THEN BT1Dar T1DarAerPityTalk
@388 DO ~SetGlobal("T1DarAerPityTalk","GLOBAL",1)~
== BAERIE @24
== BT1Dar @389
== BAERIE @390
== BT1Dar @391
== BAERIE @392
== BT1Dar @393
== BAERIE @394
== BT1Dar @395
== BAERIE @396
== BT1Dar @397
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
OR (2) Global("T1DarRomanceActive","GLOBAL",4) Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarAerFriendTalk","GLOBAL",0)~
THEN BAERIE T1DarAerFriendTalk
@398
== BT1Dar @399 DO ~SetGlobal("T1DarAerFriendTalk","GLOBAL",1)~
== BAERIE @400
== BT1Dar @401
EXIT



CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarRomanceActive","GLOBAL",2)
Global("T1DarAerTorTalk","GLOBAL",0)~
THEN BAERIE T1DarAerTorTalk
@402
== BT1Dar @403 DO ~SetGlobal("T1DarAerTorTalk","GLOBAL",1)~
== BAERIE @404
== BT1Dar @405
== BAERIE @406
== BT1Dar @407
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("T1DarMazzyRomance","GLOBAL",2)
Global("T1DarAerMazTalk","GLOBAL",0)~
THEN BAERIE T1DarAerMazTalk
@408
== BT1DAR @409 DO ~SetGlobal("T1DarAerMazTalk","GLOBAL",1)~
== BAERIE @410
== BT1DAR @411
== BAERIE @412
== BT1DAR @413
== BAERIE @414
== BT1DAR @415
== BAERIE @416
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("AerieRomanceActive","GLOBAL",2)
Global("T1DarAerTeachTalk","GLOBAL",0)~
THEN BAERIE T1DarAerTeachTalk
@417
== BT1DAR @418 DO ~SetGlobal("T1DarAerTeachTalk","GLOBAL",1)~
== BAERIE @419
== BT1DAR @420
== BAERIE @421
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("JaheiraRomanceActive","GLOBAL",2)
Global("T1DarAerJahTalk","GLOBAL",0)~
THEN BAERIE T1DarAerJahTalk
@422
== BT1DAR @423 DO ~SetGlobal("T1DarAerJahTalk","GLOBAL",1)~
== BAERIE @424
== BT1DAR @425
== BAERIE @426
== BT1DAR @427
== BAERIE @428
== BT1DAR @429
EXIT

CHAIN
IF ~CombatCounter(0)
InParty("T1Dar")
InParty("Aerie")
See("T1Dar")
!See ([ENEMY])
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("T1Dar",CD_STATE_NOTVALID)
Global("ViconiaRomanceActive","GLOBAL",2)
Global("T1DarAerVicTalk","GLOBAL",0)~
THEN BAERIE T1DarAerVicTalk
@430
== BT1DAR @431 DO ~SetGlobal("T1DarAerVicTalk","GLOBAL",1)~
== BAERIE @432
== BT1DAR @433
== BAERIE @434
EXIT