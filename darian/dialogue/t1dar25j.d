// --------------------------------------------
// Darian TOB J file
// --------------------------------------------
BEGIN T1DAR25J
BEGIN T1DDAD

EXTEND_BOTTOM SARVOLO 9 #7
+ ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2)~ + @0 EXTERN SARVOLO darianlove
+ ~InParty("T1Dar") !Global("T1DarRomanceActive","GLOBAL",2)~ + @0 EXTERN SARVOLO darian
END

CHAIN SARVOLO darianlove
  @1
EXTERN T1DAR25J darianvolo

CHAIN SARVOLO darian
  @2
EXTERN T1DAR25J darianvolo

CHAIN T1DAR25J darianvolo
 @3
EXTERN SARVOLO 9

INTERJECT_COPY_TRANS3 FINSOL01 27 T1DarSolFinal
== T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarRomanceActive","GLOBAL",2)~ THEN ~~
== T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) !Global("T1DarRomanceActive","GLOBAL",2)~ THEN ~~
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("T1Dar") OR(3) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",0) Global("T1DarRomanceActive","GLOBAL",3) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol1
IF ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarPregnant","GLOBAL",0) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol2
IF ~InParty("T1Dar") Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarPregnant","GLOBAL",1) Global("T1DarFinSol","GLOBAL",0)~ DO ~SetGlobal("T1DarFinSol","GLOBAL",1)~ EXTERN T1DAR25J T1DarFinSol3
END

CHAIN T1DAR25J T1DarFinSol1
  @5
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2
  @6
END
  ++ @7 EXTERN T1DAR25J T1DarFinSol2.1
  ++ @8 EXTERN T1DAR25J T1DarFinSol2.2
  ++ @9 EXTERN T1DAR25J T1DarFinSol2.3

CHAIN T1DAR25J T1DarFinSol2.1
  @10 
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2.2
  @11
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol2.3
  @12
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3
  @13
END
++ @14 EXTERN T1DAR25J T1DarFinSol3.1
++ @15 EXTERN T1DAR25J T1DarFinSol3.2
++ @16 EXTERN T1DAR25J T1DarFinSol3.3

CHAIN T1DAR25J T1DarFinSol3.1
  @17
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3.2
  @18
COPY_TRANS FINSOL01 27

CHAIN T1DAR25J T1DarFinSol3.3
  @19
COPY_TRANS FINSOL01 27

EXTEND_BOTTOM FINSOL01 29
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 30
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 31
  IF ~InParty("T1Dar") Global("T1DarPCGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCGod
END

EXTEND_BOTTOM FINSOL01 32
  IF ~InParty("T1Dar") Global("T1DarPCNotGod","GLOBAL",0)~ DO ~SetGlobal("T1DarPCNotGod","GLOBAL",1)~ EXTERN T1DAR25J T1DarPCNotGod
END

CHAIN T1DAR25J T1DarPCGod
  @20
COPY_TRANS FINSOL01 29

CHAIN T1DAR25J T1DarPCNotGod
@21
COPY_TRANS FINSOL01 32


I_C_T SAREV25A 38 T1DarToBSarev
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @22
END

I_C_T SAREV25A 61 T1DarToBSarev2
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @23
  == SAREV25A @24
END

I_C_T BAZDRA01 5 T1DarToBBaz
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @25
END

I_C_T YAGCON 2 T1DarToBYag
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T ABAZIGAL 0 T1DarToBAbaz
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @27
END

I_C_T BAZDRA03 12 T1DarToBBaz2
  == T1DAR25J IF ~InParty("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @28
  == BAZDRA03 @29
END


// ---------------------------------------
// Darian TOB Lovetalks
// ---------------------------------------
// TOB Lovetalk 1.
APPEND T1DAR25J

IF ~Global("T1DarToBLovetalk","GLOBAL",2)~ T1DarToBLovetalk1
  SAY @30
  ++ @31 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ @32 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ @33 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
  ++ @34 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT1prophecy
END

IF ~~ T1DarTOBLT1prophecy
  SAY @35
  ++ @36 + T1DarTOBLT1ugly
  ++ @37 + T1DarTOBLT1happy
  ++ @38 + T1DarTOBLT1surv
  ++ @39 + T1DarTOBLT1know
END

IF ~~ T1DarTOBLT1ugly
  SAY @40
  ++ @41 + T1DarTOBLT1sure
  ++ @42 + T1DarTOBLT1short
  ++ @43 + T1DarTOBLT1place
  ++ @44 + T1DarTOBLT1fear
END

IF ~~ T1DarTOBLT1happy
  SAY @45
  ++ @46 + T1DarTOBLT1fear
  ++ @47 + T1DarTOBLT1short
  ++ @48 + T1DarTOBLT1sure
  ++ @49 + T1DarTOBLT1place
END

IF ~~ T1DarTOBLT1surv
  SAY @50
  ++ @51 + T1DarTOBLT1place
  ++ @52 + T1DarTOBLT1fear
  ++ @53 + T1DarTOBLT1short
  ++ @54 + T1DarTOBLT1sure
END

IF ~~ T1DarTOBLT1know
  SAY @55
  ++ @56 + T1DarTOBLT1short
  ++ @57 + T1DarTOBLT1sure
  ++ @58 + T1DarTOBLT1place
  ++ @59 + T1DarTOBLT1fear
END

IF ~~ T1DarTOBLT1sure
  SAY @60
  ++ @61 + T1DarTOBLT1stay
  ++ @62 + T1DarTOBLT1stay
  ++ @63 + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1place
  SAY @64
  ++ @65 + T1DarTOBLT1stay
  ++ @66 + T1DarTOBLT1stay
  ++ @67 + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1fear
  SAY @68
  ++ @69 + T1DarTOBLT1stay
  ++ @70 + T1DarTOBLT1stay
  ++ @71 + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1short
  SAY @72
  ++ @73 + T1DarTOBLT1stay
  ++ @74 + T1DarTOBLT1stay
  ++ @75 + T1DarTOBLT1cert
END

IF ~~ T1DarTOBLT1stay
  SAY @76
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT1cert
  SAY @77
  ++ @78 + T1DarTOBLT1stay
  ++ @79 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",6)~ + T1DarTOBLT1term
END

IF ~~ T1DarTOBLT1term
  SAY @80
  IF ~~ EXIT
END


// TOB Lovetalk 2.

IF ~Global("T1DarToBLovetalk","GLOBAL",4)~ T1DarToBLovetalk2
  SAY @81
  ++ @82 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2do
  ++ @83 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2wrong
  ++ @84 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2wrong
  ++ @85 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",60)~ + T1DarTOBLT2again
END

IF ~~ T1DarTOBLT2do
  SAY @86
  ++ @87 + T1DarTOBLT2martyr
  ++ @88 + T1DarTOBLT2foot
  ++ @89 + T1DarTOBLT2help
  ++ @90 + T1DarTOBLT2stop
END

IF ~~ T1DarTOBLT2martyr
  SAY @91
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2foot
  SAY @92
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2help
  SAY @93
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2stop
  SAY @94
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2wrong
  SAY @95
  ++ @96 + T1DarTOBLT2sex
  ++ @97 + T1DarTOBLT2change
  ++ @98 + T1DarTOBLT2again
  ++ @99 + T1DarTOBLT2flatter
END

IF ~~ T1DarTOBLT2sex
  SAY @100
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2change
  SAY @101
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2again
  SAY @102
  IF ~~ EXIT
END

IF ~~ T1DarTOBLT2flatter
  SAY @103
  IF ~~ EXIT
END

END

// WRAITH SCENE

EXTEND_BOTTOM HGWRA01 18
  IF ~Global("T1DarRomanceActive","GLOBAL",2) InParty("T1DAR")~ DO ~SetGlobal("T1Dar_Wraith","GLOBAL",1)~ EXTERN HGWRA01 wraith
END

EXTEND_BOTTOM HGWRA01 24
  IF ~Global("T1DarRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("t1darwra")~ EXIT
END

CHAIN HGWRA01 wraith
  @104
  == T1DAR25J @105
  == HGWRA01 @106
EXTERN HGWRA01 24

//summons Darian's father - male elf ranger, similar colors to Darian*

CHAIN IF ~Global("T1Dar_Wraith","GLOBAL",1)~ THEN T1DDAD wraith.1
  @107
  == T1DAR25J @108
  == T1DDAD @109
  == T1DAR25J @110
  == T1DDAD @111
  == T1DAR25J @112
  == T1DDAD @113
  == T1DAR25J @114
  == T1DDAD @115
  == T1DAR25J @116
END
  ++ @117 DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @118 DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @119 DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25
  ++ @120 DO ~SetGlobal("T1Dar_Wraith","GLOBAL",2)~ EXTERN HGWRA01 25

//THEN: All leads to HGWRA01 Phrase 25


// ToB Lovetalk 3
APPEND T1DAR25J

IF ~Global("T1DarToBLovetalk","GLOBAL",6)~ T1DarToBLovetalk3
SAY @121
++ @122 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3sarc
++ @123 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3sarc
++ @124 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3war
++ @125 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT3war
END

IF ~~ T1DarTOBLT3sarc
SAY @126
= @127
++ @128 + T1DarTOBLT3Yaga
++ @129 + T1DarTOBLT3learn
++ @130 + T1DarTOBLT3bitch
++ @131 + T1DarTOBLT3live
END

IF ~~ T1DarTOBLT3Yaga
SAY @132
++ @133 + T1DarTOBLT3calm
++ @134 + T1DarTOBLT3limits
++ @135 + T1DarTOBLT3avenge
++ @136 + T1DarTOBLT3best
END

IF ~~ T1DarTOBLT3learn
SAY @137
++ @138 + T1DarTOBLT3limits
++ @139 + T1DarTOBLT3best
++ @140 + T1DarTOBLT3avenge
++ @141 + T1DarTOBLT3calm
END

IF ~~ T1DarTOBLT3bitch
SAY @142
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",7)~ EXIT
END

IF ~~ T1DarTOBLT3live
SAY @143
++ @144 + T1DarTOBLT3avenge
++ @145 + T1DarTOBLT3calm
++ @146 + T1DarTOBLT3best
++ @147 + T1DarTOBLT3limits
END

IF ~~ T1DarTOBLT3war
SAY @148
= @149
++ @150 + T1DarTOBLT3live
++ @151 + T1DarTOBLT3Yaga
++ @152 + T1DarTOBLT3learn
++ @130 + T1DarTOBLT3bitch
END

IF ~~ T1DarTOBLT3avenge
SAY @153
++ @154 + T1DarTOBLT3know
++ @155 + T1DarTOBLT3work
++ @156 + T1DarTOBLT3promise
END

IF ~~ T1DarTOBLT3know
SAY @157
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3work
SAY @158
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3promise
SAY @159
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3calm
SAY @160
++ @161 + T1DarTOBLT3diff
++ @162 + T1DarTOBLT3think
++ @163 + T1DarTOBLT3deal
END

IF ~~ T1DarTOBLT3diff
SAY @164
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3think
SAY @165
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3deal
SAY @166
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3best
SAY @167
++ @168 + T1DarTOBLT3destroy
++ @169 + T1DarTOBLT3perfect
++ @170 + T1DarTOBLT3blame
END

IF ~~ T1DarTOBLT3destroy
SAY @171
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3perfect
SAY @172
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3blame
SAY @173
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3limits
SAY @174
++ @175 + T1DarTOBLT3danger
++ @176 + T1DarTOBLT3destroy
++ @177 + T1DarTOBLT3done
END

IF ~~ T1DarTOBLT3danger
SAY @178
IF ~~ EXIT
END

IF ~~ T1DarTOBLT3done
SAY @179
IF ~~ EXIT
END

// ToB Lovetalk 4

IF ~Global("T1DarToBLovetalk","GLOBAL",8)~ T1DarToBLovetalk4
SAY @180
++ @181 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
++ @182 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
++ @183 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT4think
END

IF ~~ T1DarTOBLT4think
SAY @184
++ @79 + T1DarTOBLT4certain
++ @185 + T1DarTOBLT4brought
++ @186 + T1DarTOBLT4hell
++ @187 + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4certain
SAY @188
++ @189 + T1DarTOBLT4notvader
++ @190 + T1DarTOBLT4illusion
++ @191 + T1DarTOBLT4overcome
++ @192 + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4notvader
SAY @193
++ @194 + T1DarTOBLT4word
++ @195 + T1DarTOBLT4word
++ @196 + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4illusion
SAY @197
++ @198 + T1DarTOBLT4wrong
++ @199 + T1DarTOBLT4word
++ @200 + T1DarTOBLT4word
END

IF ~~ T1DarTOBLT4overcome
SAY @201
++ @202 + T1DarTOBLT4active
++ @203 + T1DarTOBLT4persistence
++ @204 + T1DarTOBLT4patience
++ @205 + T1DarTOBLT4separation
END

IF ~~ T1DarTOBLT4word
SAY @206
++ @207 + T1DarTOBLT4wrong
++ @208 + T1DarTOBLT4overcome
END

IF ~~ T1DarTOBLT4brought
SAY @209
++ @210 + T1DarTOBLT4psych
++ @211 + T1DarTOBLT4notvader
++ @212 + T1DarTOBLT4word
++ @213 + T1DarTOBLT4wrong
++ @214 + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4psych
SAY @215
++ @216 + T1DarTOBLT4wrong
++ @217 + T1DarTOBLT4word
++ @218 + T1DarTOBLT4wrong
END

IF ~~ T1DarTOBLT4hell
SAY @219
++ @220 + T1DarTOBLT4illusion
++ @221 + T1DarTOBLT4notvader
++ @222 + T1DarTOBLT4word
++ @223 + T1DarTOBLT4wrong
++ @224 + T1DarTOBLT4overcome
END

IF ~~ T1DarTOBLT4wrong
SAY @225
= @226
++ @202 + T1DarTOBLT4active
++ @203 + T1DarTOBLT4persistence
++ @204 + T1DarTOBLT4patience
++ @205 + T1DarTOBLT4separation
END

IF ~~ T1DarTOBLT4active
SAY @227
IF ~~ EXIT
END

IF ~~ T1DarTOBLT4persistence
SAY @228
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT4patience
SAY @229
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT4separation
SAY @230
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

// Flirts should cease after this lovetalk. //

// ToB Lovetalk 5

IF ~Global("T1DarToBLovetalk","GLOBAL",10)~ T1DarToBLovetalk5
SAY @231
++ @232 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBTL5explain
++ @233 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBLT5time
++ @234 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarToBRomanceTimer","GLOBAL",2700)~ + T1DarTOBTL5explain
END

IF ~~ T1DarTOBTL5explain
SAY @235
+ ~!Race(Player1,ELF)~ + @236 + T1DarTOBLT5months
+ ~Race(Player1,ELF)~ + @236 + T1DarTOBLT5monthse
+ ~!Race(Player1,ELF)~ + @237 + T1DarTOBLT5weeks
+ ~Race(Player1,ELF)~ + @237 + T1DarTOBTL5weekse
+ ~!Race(Player1,ELF)~ + @238 + T1DarTOBLT5year
+ ~Race(Player1,ELF)~ + @238 + T1DarTOBLT5yeare
END

IF ~~ T1DarTOBLT5time
SAY @239
+ ~!Race(Player1,ELF)~ + @240 + T1DarTOBLT5months
+ ~Race(Player1,ELF)~ + @240 + T1DarTOBLT5monthse
+ ~!Race(Player1,ELF)~ + @241 + T1DarTOBLT5year
+ ~Race(Player1,ELF)~ + @241 + T1DarTOBLT5yeare
+ ~!Race(Player1,ELF)~ + @242 + T1DarTOBLT5weeks
+ ~Race(Player1,ELF)~ + @242 + T1DarTOBTL5weekse
END

IF ~~ T1DarTOBLT5months
SAY @243
++ @244 + T1DarTOBLT5depends
++ @245 + T1DarTOBLT5love
++ @246 + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5monthse
SAY @247
++ @244 + T1DarTOBLT5depends
++ @248 + T1DarTOBLT5moment
++ @245 + T1DarTOBLT5love
++ @246 + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5year
SAY @249
++ @250 + T1DarTOBLT5elf
++ @251 + T1DarTOBLT5love
++ @252 + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5yeare
SAY @253
++ @254 + T1DarTOBLT5love
++ @255 + T1DarTOBLT5moment
++ @256 + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5weeks
SAY @257
++ @258 + T1DarTOBLT5query
++ @259 + T1DarTOBLT5love
++ @260 + T1DarTOBLT5elf
END

IF ~~ T1DarTOBTL5weekse
SAY @261
++ @262 + T1DarTOBLT5moment
++ @263 + T1DarTOBLT5love
++ @264 + T1DarTOBLT5query
END

IF ~~ T1DarTOBLT5moment
SAY @265
= @266
++ @267 + T1DarTOBLT5active
++ @268 + T1DarTOBLT5persistence
++ @269 + T1DarTOBLT5patience
++ @270 + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5elf
SAY @271
= @266
++ @272 + T1DarTOBLT5active
++ @273 + T1DarTOBLT5persistence
++ @274 + T1DarTOBLT5patience
++ @275 + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5depends
SAY @276
= @266
++ @277 + T1DarTOBLT5active
++ @278 + T1DarTOBLT5persistence
++ @279 + T1DarTOBLT5patience
++ @280 + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5love
SAY @281
= @266
++ @282 + T1DarTOBLT5active
++ @283 + T1DarTOBLT5persistence
++ @284 + T1DarTOBLT5patience
++ @285 + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5query
SAY @286
= @266
++ @277 + T1DarTOBLT5active
++ @273 + T1DarTOBLT5persistence
++ @284 + T1DarTOBLT5patience
++ @270 + T1DarTOBLT5separation
END

IF ~~ T1DarTOBLT5active
SAY @287
IF ~~ EXIT
END

IF ~~ T1DarTOBLT5persistence
SAY @288
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT5patience
SAY @289
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBLT5separation
SAY @230
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

// ToB Lovetalk 6

IF ~Global("T1DarToBLovetalk","GLOBAL",12)~ T1DarToBLovetalk6
SAY @290
++ @183 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
++ @291 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
++ @292 DO ~IncrementGlobal("T1DarToBLovetalk","GLOBAL",1)~ + T1DarTOBLT6explain
END

IF ~~ T1DarTOBLT6explain
SAY @293
= @294
= @295
++ @296 + T1DarTOBLT6mean
++ @297 + T1DarTOBLT6suspect
++ @298 + T1DarTOBLT6see
++ @299 + T1DarTOBLT6say
++ @300 + T1DarTOBLT6know
++ @301 + T1DarTOBLT6polite
END

IF ~~ T1DarTOBLT6mean
SAY @302
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6suspect
SAY @307
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6see
SAY @308
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6say
SAY @309
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6know
SAY @310
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6polite
SAY @311
= @303
++ @304 + T1DarTOBLT6separation
++ @305 + T1DarTOBLT6persistence
++ @306 + T1DarTOBLT6patience
END

IF ~~ T1DarTOBLT6persistence
SAY @312
IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBLT6patience
SAY @313
IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBLT6separation
SAY @314
IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1)~ EXIT
END

// ToB flirts
IF ~Global("T1DarTimeForFlirt","GLOBAL",1)~ T1DarToBFlirtStart
  SAY @315
  IF ~RandomNum(7,1)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBConcern
  IF ~RandomNum(7,2)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBCarve
  IF ~RandomNum(7,3)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBWrite
  IF ~RandomNum(7,4)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBSorry
  IF ~RandomNum(7,5)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBPale
  IF ~RandomNum(7,6)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBTea
  IF ~RandomNum(7,7)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarToBBreeze
END

IF ~~ T1DarToBConcern
  SAY @316
  IF ~~ EXIT
END

IF ~~ T1DarToBCarve
  SAY @317
  IF ~~ EXIT
END

IF ~~ T1DarToBWrite
  SAY @318
  IF ~~ EXIT
END

IF ~~ T1DarToBSorry
  SAY @319
  IF ~~ EXIT
END

IF ~~ T1DarToBPale
  SAY @320
  IF ~~ EXIT
END

IF ~~ T1DarToBTea
  SAY @321
  IF ~~ EXIT
END

IF ~~ T1DarToBBreeze
  SAY @322
  IF ~~ EXIT
END


// Area AR5200 (Marching Mountains)
IF ~Global("T1DarToBMountains","GLOBAL",1)~ mountains
  SAY @323
  IF ~~ DO ~IncrementGlobal("T1DarToBMountains","GLOBAL",1)~ EXIT
END

// Area AR6101 (Entering Sendai's underground lair)
IF ~Global("T1DarToBSendai","GLOBAL",1)~ sendai
  SAY @324
  IF ~~ DO ~IncrementGlobal("T1DarToBSendai","GLOBAL",1)~ EXIT
END

// Area AR3000 (Arriving at Watcher's Keep)
IF ~Global("T1DarToBWatchers","GLOBAL",1)~ watchers
  SAY @325
  IF ~~ DO ~IncrementGlobal("T1DarToBWatchers","GLOBAL",1)~ EXIT
END

END

// Aerie/Darian on-rest lovetalk
CHAIN IF ~Global("T1DarAerRom3","GLOBAL",1)~ THEN T1DAR25J T1DarAerRom3
@326 DO ~SetGlobal("T1DarAerRom3","GLOBAL",2)~
== AERIE25J @327
== T1DAR25J @328
== AERIE25J @329
== T1DAR25J @330
== AERIE25J @331
== T1DAR25J @332
== AERIE25J @333
DO ~RestParty()~
EXIT


// ---------------------------------------
// Darian Player initiated dialogue
// ---------------------------------------
APPEND T1DAR25J

IF ~IsGabber(Player1)~ THEN BEGIN T1DarDarianApproach
  SAY @334
  ++ @335 + T1DarToBTalkAsk
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarToBLovetalk","GLOBAL",8)~ + @336 + T1DarTOBTalkSerious
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarToBLovetalk","GLOBAL",8)~ + @337 + T1DarToBTalkFlirt
  ++ @338 + T1DarToBTalkBack
END

IF ~~ T1DarToBTalkBack
  SAY @339
  IF ~~ EXIT
END

IF ~~ T1DarToBTalkAsk
  SAY @340
  ++ @341 + T1DarTOBTalkReturn
  ++ @342 + T1DarTOBTalkTethyr
  + ~InParty("Aerie") Global("AerieRomanceActive","GLOBAL",3) Global("T1DarRomanceActive","GLOBAL",3)~ + @343 + T1DarTOBTalkAerie
  ++ @344 + T1DarTOBTalkEvents
  ++ @345 + T1DarTOBTalkPlans
END

IF ~~ T1DarTOBTalkReturn
  SAY @346
  ++ @347 + T1DarTOBTalkFive
  ++ @348 + T1DarTOBTalkHelp
END

IF ~~ T1DarTOBTalkFive
  SAY @349
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkHelp
  SAY @350
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkTethyr
  SAY @351
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkAerie
  SAY @352
  ++ @353 + T1DarTOBTalkYes
  ++ @354 + T1DarTOBTalkBaby
  ++ @355 + T1DarTOBTalkIssue
END

IF ~~ T1DarTOBTalkYes
  SAY @356
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkBaby
  SAY @357
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkIssue
  SAY @358
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkEvents
  SAY @359
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkPlans
  SAY @360
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkSerious
  SAY @361
  ++ @362 + talkaboutus
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + @363 + T1DarTOBTalkpersistence
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + @364 + T1DarTOBTalkpatience
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarToBLovetalk","GLOBAL",8)~ + @365 + T1DarTOBTalkseparation
  ++ @366 + T1DarTOBTalkFeel
  ++ @367 + T1DarTOBTalkPregnant
END

IF ~~ talkaboutus
  SAY @368
  IF ~~ DO ~RealSetGlobalTimer("T1DarToBLovetalkTimer","GLOBAL",300)~ EXIT
END

IF ~~ T1DarTOBTalkpersistence
  SAY @369
  IF ~~ DO ~SetGlobal("T1DarRomancePersistance","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBTalkpatience
  SAY @370
  IF ~~ DO ~SetGlobal("T1DarRomancePatience","GLOBAL",1) SetGlobal("T1DarToBLovetalk","GLOBAL",13)~ EXIT
END

IF ~~ T1DarTOBTalkseparation
  SAY @371
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3) SetGlobal("T1DarRomanceSeparation","GLOBAL",1)~ EXIT
END

IF ~~ T1DarTOBTalkFeel
  SAY @372
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkPregnant
  SAY @373
  ++ @374 + T1DarTOBTalkEvil
  ++ @375 + T1DarTOBTalkOhcrap
END

IF ~~ T1DarTOBTalkEvil
  SAY @376
  IF ~~ EXIT
END

IF ~~ T1DarTOBTalkOhcrap
  SAY @377
  IF ~~ DO ~SetGlobal("T1DarPregnant","GLOBAL",1)~ EXIT
END

IF ~~ T1DarToBTalkFlirt
 SAY @378
  + ~RandomNum(4,1)~ + @379 + T1DarHair1
  + ~RandomNum(4,2)~ + @379 + T1DarHair2
  + ~RandomNum(4,3)~ + @379 + T1DarHair3
  + ~RandomNum(4,4)~ + @379 + T1DarHair4
  + ~RandomNum(3,1)~ + @380 + T1DarTickle1
  + ~RandomNum(3,2)~ + @380 + T1DarTickle2
  + ~RandomNum(3,3)~ + @380 + T1DarTickle3
  + ~RandomNum(2,1)~ + @381 + T1DarBack1
  + ~RandomNum(2,2)~ + @381 + T1DarBack2
END

IF ~~ T1DarHair1
  SAY @382
  IF ~~ EXIT 
END

IF ~~ T1DarHair2
  SAY @383
  IF ~~ EXIT 
END

IF ~~ T1DarHair3
  SAY @384
  IF ~~ EXIT 
END

IF ~~ T1DarHair4
  SAY @385
  IF ~~ EXIT 
END

IF ~~ T1DarTickle1
  SAY @386
  IF ~~ EXIT 
END

IF ~~ T1DarTickle2
  SAY @387
  IF ~~ EXIT 
END

IF ~~ T1DarTickle3
  SAY @388
  IF ~~ EXIT 
END

IF ~~ T1DarBack1
  SAY @389
  IF ~~ EXIT 
END

IF ~~ T1DarBack2
  SAY @390
  IF ~~ EXIT 
END

END