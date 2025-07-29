// --------------------------------------------
// Darian J file
// --------------------------------------------
BEGIN T1DARJ



// Area-based Interjections:
// Graveyard
IF ~Global("T1dar_graveyard","GLOBAL",2)~ t1dar_graveyard
  SAY @0
  IF ~~ DO ~SetGlobal("T1dar_graveyard","GLOBAL",3)~ EXIT
END

// (Entering the Underdark)
IF ~Global("T1dar_underdark","GLOBAL",2)~ t1dar_underdark
  SAY @1
  IF ~~ DO ~SetGlobal("T1dar_underdark","GLOBAL",3)~ EXIT
END

// (Entering Planar Sphere Hell - where you get the demon heart to return to the Prime Material Plane)
IF ~Global("T1dar_sphere","GLOBAL",2)~ t1dar_sphere
  SAY @2
  IF ~~ DO ~SetGlobal("T1dar_sphere","GLOBAL",3)~ EXIT
END

// (Entering Druid Grove, outdoor area)
IF ~Global("T1dar_druidgrove","GLOBAL",2)~ t1dar_druidgrove
  SAY @3
  IF ~~ DO ~SetGlobal("T1dar_druidgrove","GLOBAL",3)~ EXIT
END


// ---------------------------------------
// Darian Lovetalks
// ---------------------------------------
// Lovetalk 1.
IF ~Global("T1DarLovetalk","GLOBAL",2)~ T1DarLovetalk1
  SAY @4
  ++ @5 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1inq
  ++ @6 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1inq
  ++ @7 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1end
END

IF ~~ T1DarLT1end
  SAY @8
  IF ~~ EXIT
END

IF ~~ T1DarLT1inq
  SAY @9
  ++ @10 + T1DarLT1judge
  ++ @11 + T1DarLT1info
  ++ @12 + T1DarLT1lucky
END

IF ~~ T1DarLT1judge
  SAY @13
  ++ @14 + T1DarLT1motive
  ++ @15 + T1DarLT1motive
  ++ @16 + T1DarLT1end
END

IF ~~ T1DarLT1motive
  SAY @17
  ++ @18 + T1DarLT1end
  ++ @19 + T1DarLT1end
  ++ @20 + T1DarLT1offer
END

IF ~~ T1DarLT1offer
  SAY @21
  IF ~~ EXIT
END

IF ~~ T1DarLT1info
  SAY @22
  ++ @23 + T1DarLT1end
  ++ @24 + T1DarLT1end
  ++ @25 + T1DarLT1end
END

IF ~~ T1DarLT1lucky
  SAY @26
  ++ @27 + T1DarLT1end
  ++ @28 + T1DarLT1end
  ++ @29 + T1DarLT1offer
END


// Lovetalk 2.
IF ~Global("T1DarLovetalk","GLOBAL",4)~ T1DarLovetalk2
  SAY @30
  ++ @31 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ @32 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ @33 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ @34 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT2burn
END

IF ~~ T1DarLT2burn
  SAY @35
  IF ~~ EXIT
END

IF ~~ T1DarLT2apol
  SAY @36
  ++ @37 + T1DarLT2why
  ++ @38 + T1DarLT2why
  ++ @39 + T1DarLT2why
  ++ @40 + T1DarLT2trust
  ++ @41 + T1DarLT2burn
END

IF ~~ T1DarLT2why
  SAY @42
  ++ @43 + T1DarLT2conc
  ++ @44 + T1DarLT2trust
  ++ @45 + T1DarLT2burn
END

IF ~~ T1DarLT2trust
  SAY @46
  ++ @47 + T1DarLT2conc
  ++ @48 + T1DarLT2conc
  ++ @49 + T1DarLT2conc
  ++ @50 + T1DarLT2burn
END

IF ~~ T1DarLT2conc
  SAY @51
  IF ~~ EXIT
END


// Lovetalk 3.
CHAIN IF ~Global("T1DarLovetalk","GLOBAL",6)~ THEN T1DARJ T1DarLovetalk3
@52
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @53
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @54
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @55
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @56
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @57
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN @58
END
  ++ @59 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3inq
  ++ @60 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3inq
  ++ @61 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3sorr

APPEND T1DARJ
IF ~~ T1DarLT3sorr
  SAY @62
  IF ~~ EXIT
END

IF ~~ T1DarLT3inq
  SAY @63
  ++ @64 + T1DarLT3why
  ++ @65 + T1DarLT3why
  + ~CheckStatGT(Player1,15,WIS)~ + @66 + T1DarLT3firwis
END

IF ~~ T1DarLT3why
  SAY @67
  ++ @68 + T1DarLT3good
  ++ @69 + T1DarLT3whynot
  ++ @70 + T1DarLT3whynot
  ++ @71 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT3flirt
  + ~Alignment(Player1,MASK_CHAOTIC)~ + @72 + T1DarLT3chaos
END

IF ~~ T1DarLT3firwis
  SAY @73
  ++ @68 + T1DarLT3good
  ++ @69 + T1DarLT3whynot
  ++ @70 + T1DarLT3whynot
  ++ @74 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT3flirt
  ++ @72 + T1DarLT3chaos
END

IF ~~ T1DarLT3flirt
  SAY @75
  ++ @76 + T1DarLT3conc
  ++ @77 + T1DarLT3conc
END

IF ~~ T1DarLT3good
  SAY @78
  ++ @79 + T1DarLT3conc
  ++ @80 + T1DarLT3conc
  ++ @81 + T1DarLT3conc
  + ~CheckStatGT(Player1,15,WIS)~ + @82 + T1DarLT3secwis
END

IF ~~ T1DarLT3whynot
  SAY @83
  ++ @84 + T1DarLT3conc
  ++ @85 + T1DarLT3conc
  ++ @86 + T1DarLT3conc
  + ~CheckStatGT(Player1,15,WIS)~ + @87 + T1DarLT3secwis
END

IF ~~ T1DarLT3chaos
  SAY @88
  ++ @89 + T1DarLT3conc
  ++ @90 + T1DarLT3conc
  ++ @91 + T1DarLT3conc
END

IF ~~ T1DarLT3conc
  SAY @92
  IF ~~ EXIT
END

IF ~~ T1DarLT3secwis
  SAY @93
  IF ~~ EXIT
END


// Lovetalk 4.
IF ~Global("T1DarLovetalk","GLOBAL",8)~ T1DarLovetalk4
  SAY @94
  ++ @95 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ @96 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ @97 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ @98 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT4burn
END

IF ~~ T1DarLT4talk
  SAY @99
  + ~CheckStatLT(Player1,16,INT)~ + @100 + T1DarLT4not
  + ~CheckStatGT(Player1,15,INT)~ + @101 + T1DarLT4know
END

IF ~~ T1DarLT4not
  SAY @102
  ++ @103 + T1DarLT4relic
  ++ @104 + T1DarLT4war
END

IF ~~ T1DarLT4know
  SAY @105
  ++ @103 + T1DarLT4relic
  ++ @104 + T1DarLT4war
END

IF ~~ T1DarLT4relic
  SAY @106
  ++ @107 + T1DarLT4war
END

IF ~~ T1DarLT4war
  SAY @108
  ++ @109 + T1DarLT4fall
  ++ @110 + T1DarLT4chide
END

IF ~~ T1DarLT4chide
  SAY @111
  ++ @112 + T1DarLT4fall
  ++ @113 + T1DarLT4fall
  ++ @114 + T1DarLT4fall
END

IF ~~ T1DarLT4fall
  SAY @115
  + ~!Race(Player1,ELF)~ + @116 + T1DarLT4remains
  + ~!Race(Player1,ELF)~ + @117 + T1DarLT4hate
  + ~!Race(Player1,ELF)~ + @118 + T1DarLT4exp
  + ~Race(Player1,ELF)~ + @119 + T1DarLT4elf
END

IF ~~ T1DarLT4elf
  SAY @120
  ++ @121 + T1DarLT4remains
  ++ @122 + T1DarLT4elfhate
  ++ @118 + T1DarLT4elfexp
END

IF ~~ T1DarLT4remains
  SAY @123
  + ~!Race(Player1,ELF)~ + @124 + T1DarLT4hate
  + ~!Race(Player1,ELF)~ + @125 + T1DarLT4exp
  + ~Race(Player1,ELF)~ + @126 + T1DarLT4elfhate
  + ~Race(Player1,ELF)~ + @127 + T1DarLT4elfexp
END

IF ~~ T1DarLT4hate
  SAY @128
  ++ @129 + T1DarLT4remains
  ++ @130 + T1DarLT4exp
END

IF ~~ T1DarLT4exp
  SAY @131
  ++ @132 + T1DarLT4friend
  ++ @133 + T1DarLT4friend
  ++ @134 + T1DarLT4sorry
END

IF ~~ T1DarLT4elfhate
  SAY @135
  ++ @129 + T1DarLT4remains
  ++ @130 + T1DarLT4elfexp
END

IF ~~ T1DarLT4elfexp
  SAY @136
  ++ @137 + T1DarLT4friend
  ++ @138 + T1DarLT4friend
  ++ @139 + T1DarLT4sorry
END

IF ~~ T1DarLT4sorry
  SAY @140
  ++ @141 + T1DarLT4friend
  ++ @142 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT4burn
END

IF ~~ T1DarLT4burn
  SAY @143
  IF ~~ EXIT
END

IF ~~ T1DarLT4friend
  SAY @144
  ++ @145 + T1DarLT4conc
  ++ @146 + T1DarLT4conc
  ++ @147 + T1DarLT4conc
END

IF ~~ T1DarLT4conc
  SAY @148
  IF ~~ EXIT
END


// Lovetalk 5.
IF ~Global("T1DarLovetalk","GLOBAL",10)~ T1DarLovetalk5
  SAY @149
  + ~OR(4) Class(Player1,FIGHTER_MAGE_THIEF) Class(Player1,FIGHTER_ALL) Kit(Player1,BARBARIAN) Class(Player1,MONK)~ + @59 DO ~SetGlobal("T1DarLovetalk","GLOBAL",11) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5fighter
  + ~OR(2) Class(Player1,CLERIC_RANGER) Class(Player1,RANGER_ALL)~ + @150 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5ranger
  + ~Class(Player1,PALADIN_ALL)~ + @59 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5pally
  + ~OR(2) Class(Player1,FIGHTER_DRUID) Class(Player1,DRUID_ALL)~ + @151 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5druid
  + ~OR(4) Class(Player1,FIGHTER_CLERIC) Class(Player1,CLERIC_ALL) Class(Player1,CLERIC_THIEF) Class(Player1,CLERIC_MAGE)~ + @152 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5cleric
  + ~OR(2) Class(Player1,FIGHTER_THIEF) Class(Player1,THIEF_ALL)~ + @153 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5thief
  + ~Class(Player1,BARD_ALL)~ + @59 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5bard
  + ~OR(5) Class(Player1,FIGHTER_MAGE_CLERIC) Class(Player1,MAGE_THIEF) Class(Player1,FIGHTER_MAGE) Class(Player1,MAGE_ALL) Class(Player1,SORCERER)~ + @154 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5mage
  ++ @155 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5wait
END

IF ~~ T1DarLT5wait
  SAY @156
  IF ~~ EXIT
END

IF ~~ T1DarLT5fighter
  SAY @157
  ++ @158 + T1DarLT5fightlearn
  ++ @159 + T1DarLT5fightlearn
  ++ @160 + T1DarLT5fightlearn
END

IF ~~ T1DarLT5fightlearn
  SAY @161
  ++ @162 + T1DarLT5conc
  ++ @163 + T1DarLT5conc
  ++ @164 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
  ++ @165 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5pally
  SAY @166
  ++ @167 + T1DarLT5pallylearn
  ++ @168 + T1DarLT5pallylearn
  ++ @169 + T1DarLT5pallylearn
END

IF ~~ T1DarLT5pallylearn
  SAY @170
  ++ @171 + T1DarLT5conc
  ++ @172 + T1DarLT5conc
  ++ @173 + T1DarLT5conc
END

IF ~~ T1DarLT5ranger
  SAY @174
  ++ @175 + T1DarLT5rangerlearn
  ++ @176 + T1DarLT5rangerlearn
  ++ @177 + T1DarLT5rangerlearn
END

IF ~~ T1DarLT5rangerlearn
  SAY @178
  ++ @179 + T1DarLT5conc
  ++ @180 + T1DarLT5conc
  ++ @181 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5thief
  SAY @182
  ++ @183 + T1DarLT5thieflearn
  ++ @184 + T1DarLT5thieflearn
  ++ @185 + T1DarLT5thieflearn
END

IF ~~ T1DarLT5thieflearn
  SAY @186
  ++ @187 + T1DarLT5conc
  ++ @188 + T1DarLT5conc
  ++ @189 DO~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~+ T1DarLT5emb
  ++ @190 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5bard
  SAY @191
  ++ @192 + T1DarLT5bardlearn
  ++ @193 + T1DarLT5bardlearn
  ++ @194 + T1DarLT5bardlearn
END

IF ~~ T1DarLT5bardlearn
  SAY @195
  ++ @196 + T1DarLT5conc
  ++ @197 + T1DarLT5conc
  ++ @198 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
  ++ @199 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5cleric
  SAY @200
  ++ @201 + T1DarLT5clericlearn
  ++ @202 + T1DarLT5clericlearn
  ++ @203 + T1DarLT5clericlearn
END

IF ~~ T1DarLT5clericlearn
  SAY @204
  ++ @205 + T1DarLT5conc
  ++ @206 + T1DarLT5conc
  ++ @207 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5druid
  SAY @208
  ++ @209 + T1DarLT5druidlearn
  ++ @210 + T1DarLT5druidlearn
  ++ @211 + T1DarLT5druidlearn
END

IF ~~ T1DarLT5druidlearn
  SAY @212
  ++ @213 + T1DarLT5conc
  ++ @214 + T1DarLT5conc
  ++ @215 + T1DarLT5conc
  ++ @216 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5mage
  SAY @217
  ++ @218 + T1DarLT5magelearn
  ++ @219 + T1DarLT5magelearn
  ++ @220 + T1DarLT5magelearn
  ++ @221 + T1DarLT5magelearn
END

IF ~~ T1DarLT5magelearn
  SAY @222
  ++ @223 + T1DarLT5conc
  ++ @224 + T1DarLT5conc
  ++ @225 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5emb
  SAY @226
  ++ @227 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ @228 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ @229 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ @230 + T1DarLT5turn
  ++ @231 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ @232 + T1DarLT5turn
END

IF ~~ T1DarLT5turn
  SAY @233
  IF ~~ EXIT
END

IF ~~ T1DarLT5conc
  SAY @234
  IF ~~ EXIT
END
END


// Lovetalk 6.
CHAIN IF ~Global("T1DarLovetalk","GLOBAL",12)~ THEN T1DARJ T1DarLovetalk6
@235
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @236
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @237
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @238
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @239
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @240
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN @241
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @242
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @243
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @244
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @245
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @246
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN @247
END
  ++ @248 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ @249 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ @250 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ @251 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6tone

APPEND T1DARJ
IF ~~ T1DarLT6tone
  SAY @252
  ++ @253 + T1DarLT6talk
  ++ @254 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT6burn
END

IF ~~ T1DarLT6burn
  SAY @62
  IF ~~ EXIT
END

IF ~~ T1DarLT6talk
  SAY @255
  ++ @256 + T1DarLT6sym
  ++ @257 + T1DarLT6sym
  ++ @258 + T1DarLT6sym
END

IF ~~ T1DarLT6sym
  SAY @259
  ++ @260 + T1DarLT6report
  ++ @261 + T1DarLT6report
  ++ @262 + T1DarLT6spy
END

IF ~~ T1DarLT6report
  SAY @263
  ++ @264 + T1DarLT6trust
  ++ @265 + T1DarLT6trust
  ++ @266 + T1DarLT6trust
END

IF ~~ T1DarLT6spy
  SAY @267
  ++ @268 + T1DarLT6trust
  ++ @269 + T1DarLT6trust
  ++ @270 + T1DarLT6why
END

IF ~~ T1DarLT6trust
  SAY @271
  ++ @272 + T1DarLT6danger
  ++ @273 + T1DarLT6friend
  ++ @274 + T1DarLT6why
END

IF ~~ T1DarLT6friend
  SAY @275
  ++ @276 + T1DarLT6danger
  ++ @277 + T1DarLT6why
  ++ @278 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT6issue
END

IF ~~ T1DarLT6why
  SAY @279
  IF ~~ EXIT
END

IF ~~ T1DarLT6danger
  SAY @280
  IF ~~ EXIT
END

IF ~~ T1DarLT6issue
  SAY @281
  IF ~~ EXIT
END


// Lovetalk 7.
IF ~Global("T1DarLovetalk","GLOBAL",14)~ T1DarLovetalk7
  SAY @282
  ++ @283 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT7question
  ++ @284 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT7question
  ++ @285 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7burn
  SAY @286
  IF ~~ EXIT
END

IF ~~ T1DarLT7question
  SAY @287
  ++ @288 + T1DarLT7behav
  ++ @289 + T1DarLT7hide
END

IF ~~ T1DarLT7behav
  SAY @290
  ++ @291 + T1DarLT7sleep
  ++ @292 + T1DarLT7sleep
  ++ @293 + T1DarLT7sleep
END

IF ~~ T1DarLT7sleep
  SAY @294
  ++ @295 + T1DarLT7talk
  ++ @296 + T1DarLT7perc
  ++ @297 + T1DarLT7perc
END

IF ~~ T1DarLT7hide
  SAY @298
  ++ @299 + T1DarLT7perc
  ++ @300 + T1DarLT7perc
  ++ @301 + T1DarLT7talk
END

IF ~~ T1DarLT7talk
  SAY @302
  ++ @303 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7perc
  ++ @304 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7perc
  ++ @305 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7perc
  SAY @306
  ++ @307 + T1DarLT7feel
  ++ @308 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7guard
  ++ @309 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7feel
  SAY @310
  ++ @311 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7touchy
  ++ @312 + T1DarLT7relax
  ++ @313 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7touchy
  SAY @314
  ++ @315 + T1DarLT7conc
  ++ @316 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7conc
  ++ @317 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7conc
END

IF ~~ T1DarLT7relax
  SAY @318
  ++ @319 + T1DarLT7conc
  ++ @320 + T1DarLT7conc
  ++ @321 + T1DarLT7conc
END

IF ~~ T1DarLT7guard
  SAY @322
  ++ @323 + T1DarLT7conc
  ++ @324 + T1DarLT7conc
  ++ @325 + T1DarLT7conc
END

IF ~~ T1DarLT7conc
  SAY @326
  IF ~~ EXIT
END


// Lovetalk 8.
IF ~Global("T1DarLovetalk","GLOBAL",16)~ T1DarLovetalk8
  SAY @327
  ++ @328 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8cern
  ++ @329 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8ask
  ++ @330 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8rich
  ++ @331 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT8burn
END

IF ~~ T1DarLT8burn
  SAY @332
  IF ~~ EXIT
END

IF ~~ T1DarLT8cern
  SAY @333
  ++ @334 + T1DarLT8exp
  ++ @335 + T1DarLT8exp
  ++ @336 + T1DarLT8care
END

IF ~~ T1DarLT8ask
  SAY @337
  ++ @338 + T1DarLT8exp
  ++ @339 + T1DarLT8exp
  ++ @340 + T1DarLT8care
END

IF ~~ T1DarLT8rich
  SAY @341
  ++ @342 + T1DarLT8exp
  ++ @343 + T1DarLT8care
END

IF ~~ T1DarLT8care
  SAY @344
  ++ @345 + T1DarLT8under
  ++ @346 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT8threat
  ++ @347 + T1DarLT8exp
END

IF ~~ T1DarLT8under
  SAY @348
  ++ @349 + T1DarLT8exp
  ++ @350 + T1DarLT8exp
END

IF ~~ T1DarLT8threat
  SAY @351
  ++ @352 + T1DarLT8exp
END

IF ~~ T1DarLT8exp
  SAY @353
  ++ @354 + T1DarLT8sar
END

IF ~~ T1DarLT8sar
  SAY @355
  ++ @356 + T1DarLT8bhaal
END

IF ~~ T1DarLT8bhaal
  SAY @357
  ++ @358 + T1DarLT8progeny
END

IF ~~ T1DarLT8progeny
  SAY @359
  ++ @360 + T1DarLT8stop
END

IF ~~ T1DarLT8stop
  SAY @361
  ++ @362 + T1DarLT8think
  ++ @363 + T1DarLT8comp
  ++ @364 + T1DarLT8tell
END

IF ~~ T1DarLT8think
  SAY @365
  IF ~~ EXIT
END

IF ~~ T1DarLT8comp
  SAY @366
  IF ~~ EXIT
END

IF ~~ T1DarLT8tell
  SAY @367
  IF ~~ EXIT
END


// Lovetalk 9.
IF ~Global("T1DarLovetalk","GLOBAL",18)~ T1DarLovetalk9
  SAY @368
  ++ @369 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
  ++ @370 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
  ++ @371 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
END

IF ~~ T1DarLT9ask
  SAY @372
  ++ @373 + T1DarLT9children
  ++ @374 + T1DarLT9children
  ++ @375 + T1DarLT9children
END

IF ~~ T1DarLT9children
  SAY @376
  ++ @377 + T1DarLT9bhaal
  ++ @378 + T1DarLT9bhaal
  ++ @379 + T1DarLT9cern
  ++ @380 + T1DarLT9cern
  ++ @381 + T1DarLT9cern
END

IF ~~ T1DarLT9cern
  SAY @382
  ++ @383 + T1DarLT9bhaal
  ++ @384 + T1DarLT9bhaal
  ++ @385 + T1DarLT9suspect
  ++ @386 + T1DarLT9suspect
END

IF ~~ T1DarLT9suspect
  SAY @387
  ++ @388 + T1DarLT9bhaal
  ++ @389 + T1DarLT9bhaal
  ++ @390 + T1DarLT9bhaal
END

IF ~~ T1DarLT9bhaal
  SAY @391
  ++ @392 + T1DarLT9blood
  ++ @393 + T1DarLT9blood
  ++ @394 + T1DarLT9blood
  ++ @395 + T1DarLT9blood
END

IF ~~ T1DarLT9blood
  SAY @396
  IF ~~ EXIT
END


// Lovetalk 10.
IF ~Global("T1DarLovetalk","GLOBAL",20)~ T1DarLovetalk10
  SAY @397
  ++ @398 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT10speak
  ++ @62 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT10speak
  ++ @399 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT10burn
END

IF ~~ T1DarLT10burn
  SAY @400
  IF ~~ EXIT
END

IF ~~ T1DarLT10speak
  SAY @401
  ++ @402 + T1DarLT10struggle
  ++ @403 + T1DarLT10power
  ++ @404 + T1DarLT10battle
  ++ @405 + T1DarLT10refuse
END

IF ~~ T1DarLT10struggle
  SAY @406
  ++ @407 + T1DarLT10conc
  ++ @408 + T1DarLT10conc
  ++ @409 + T1DarLT10conc
  + ~CheckStatGT(Player1,15,WIS)~ + @410 + T1DarLT10insight
END

IF ~~ T1DarLT10battle
  SAY @411
  IF ~~ EXIT
END

IF ~~ T1DarLT10conc
  SAY @412
  IF ~~ EXIT
END

IF ~~ T1DarLT10power
  SAY @413
  ++ @414 + T1DarLT10conc
  ++ @415 + T1DarLT10insight
  ++ @416 + T1DarLT10insight
END

IF ~~ T1DarLT10refuse
  SAY @417
  ++ @418 + T1DarLT10conc
  ++ @419 + T1DarLT10conc
  ++ @420 + T1DarLT10conc
END

IF ~~ T1DarLT10insight
  SAY @421
  IF ~~ EXIT
END


// Lovetalk 11.
IF ~Global("T1DarLovetalk","GLOBAL",22)~ T1DarLovetalk11
  SAY @422
  ++ @423 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
  ++ @424 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
  ++ @425 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
END

IF ~~ T1DarLT11friend
  SAY @426
  ++ @427 + T1DarLT11prejudice
  ++ @428 + T1DarLT11prejudice
  ++ @429 + T1DarLT11wrong
  ++ @430 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT11term
END

IF ~~ T1DarLT11term
  SAY @431
  IF ~~ EXIT
END

IF ~~ T1DarLT11prejudice
  SAY @432
  ++ @433 + T1DarLT11wrong
  ++ @434 + T1DarLT11wrong
  ++ @435 + T1DarLT11wrong
END

IF ~~ T1DarLT11wrong
  SAY @436
  ++ @437 + T1DarLT11conc
  ++ @438 + T1DarLT11conc
  ++ @439 + T1DarLT11conc
END

IF ~~ T1DarLT11conc
  SAY @62
  IF ~~ EXIT
END


// Lovetalk 12. (In Forest)
IF ~Global("T1DarLovetalk","GLOBAL",24)~ T1DarLovetalk12
  SAY @440
  ++ @441 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT12talk
  ++ @442 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12end
END

IF ~~ T1DarLT12end
  SAY @443
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLT12talk
  SAY @444
  ++ @445 + T1DarLT12what
  ++ @446 + T1DarLT12what
  ++ @447 + T1DarLT12proud
END

IF ~~ T1DarLT12what
  SAY @448
  ++ @449 + T1DarLT12proud
  ++ @450 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12end
END

IF ~~ T1DarLT12proud
  SAY @451
  ++ @452 + T1DarLT12dark
  ++ @453 + T1DarLT12close
  ++ @454 + T1DarLT12disc
END

IF ~~ T1DarLT12dark
  SAY @455
  + ~!Race(Player1,ELF)~ + @456 + T1DarLT12story
  + ~!Race(Player1,ELF)~ + @457 + T1DarLT12story
  + ~Race(Player1,ELF)~ + @456 + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + @457 + T1DarLT12elfstory
  ++ @458 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12close
  SAY @459
  + ~!Race(Player1,ELF)~ + @460 + T1DarLT12story
  + ~!Race(Player1,ELF)~ + @461 + T1DarLT12story
  + ~Race(Player1,ELF)~ + @460 + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + @461 + T1DarLT12elfstory
  ++ @462 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12disc
  SAY @463
  + ~!Race(Player1,ELF)~ + @464 + T1DarLT12story
  + ~!Race(Player1,ELF)~ + @465 + T1DarLT12story
  + ~Race(Player1,ELF)~ + @464 + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + @465 + T1DarLT12elfstory
  ++ @466 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12fool
  SAY @467
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLT12story
  SAY @468
  ++ @469 + T1DarLT12kill
  ++ @470 + T1DarLT12kill
  ++ @471 + T1DarLT12kill
END

IF ~~ T1DarLT12elfstory
  SAY @472
  ++ @469 + T1DarLT12kill
  ++ @470 + T1DarLT12kill
  ++ @471 + T1DarLT12kill
END

IF ~~ T1DarLT12kill
  SAY @473
  ++ @474 + T1DarLT12tale
  ++ @475 + T1DarLT12tale
  ++ @476 + T1DarLT12tale
END

IF ~~ T1DarLT12tale
  SAY @477
  ++ @478 + T1DarLT12murder
END

IF ~~ T1DarLT12murder
  SAY @479
  ++ @480 + T1DarLT12surviv
  ++ @481 + T1DarLT12surviv
END

IF ~~ T1DarLT12surviv
  SAY @482
  ++ @483 + T1DarLT12defend
  ++ @484 + T1DarLT12disgust
  ++ @485 + T1DarLT12monster
  ++ @486 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12leave
END

IF ~~ T1DarLT12leave
  SAY @487
  IF ~~ DO ~LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ T1DarLT12defend
  SAY @488
  ++ @489 + T1DarLT12disgust
  ++ @490 + T1DarLT12monster
  ++ @491 + T1DarLT12punish
END

IF ~~ T1DarLT12disgust
  SAY @492
  ++ @493 + T1DarLT12defend
  ++ @494 + T1DarLT12monster
  ++ @495 + T1DarLT12punish
END

IF ~~ T1DarLT12monster
  SAY @496
  ++ @497 + T1DarLT12defend
  ++ @498 + T1DarLT12disgust
  ++ @499 + T1DarLT12punish
END

IF ~~ T1DarLT12punish
  SAY @500
  ++ @501 + T1DarLT12learn
  ++ @502 + T1DarLT12learn
  ++ @503 + T1DarLT12learn
END

IF ~~ T1DarLT12learn
  SAY @504
  ++ @505 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
  ++ @506 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
  ++ @507 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
END

IF ~~ T1DarLT12conc
  SAY @508
  IF ~~ DO ~RestParty()~ EXIT
END


// Lovetalk 13.
IF ~Global("T1DarLovetalk","GLOBAL",26)~ T1DarLovetalk13
  SAY @509
  ++ @510 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
  ++ @511 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
  ++ @512 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
END

IF ~~ T1DarLT13friend
  SAY @513
  ++ @514 + T1DarLT13end
  ++ @515 + T1DarLT13end
  ++ @516 + T1DarLT13end
  ++ @517 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT13flirt
  ++ @518 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT13end
END

IF ~~ T1DarLT13end
  SAY @519
  IF ~~ EXIT
END

IF ~~ T1DarLT13flirt
  SAY @520
  IF ~~ EXIT
END


// Lovetalk 14.
IF ~Global("T1DarLovetalk","GLOBAL",28)~ T1DarLovetalk14
  SAY @521
  ++ @522 DO ~SetGlobal("T1DarLovetalk","GLOBAL",29) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  ++ @523 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  ++ @524 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + @525 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceActive","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT14bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @525 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT14bye
END

IF ~~ T1DarLT14bye
  SAY @62
  IF ~~ EXIT
END

IF ~~ T1DarLT14gor
  SAY @526
  ++ @527 + T1DarLT14absent
  ++ @528 + T1DarLT14strict
  ++ @529 + T1DarLT14free
  ++ @530 + T1DarLT14plain
END

IF ~~ T1DarLT14absent
  SAY @531
  ++ @532 + T1DarLT14father
  ++ @533 + T1DarLT14sister
  ++ @534 + T1DarLT14conc
END

IF ~~ T1DarLT14strict
  SAY @535
  ++ @536 + T1DarLT14father
  ++ @537 + T1DarLT14sister
  ++ @538 + T1DarLT14conc
END

IF ~~ T1DarLT14free
  SAY @539
  ++ @540 + T1DarLT14father
  ++ @541 + T1DarLT14sister
  ++ @542 + T1DarLT14conc
END

IF ~~ T1DarLT14plain
  SAY @543
  ++ @544 + T1DarLT14father
  ++ @545 + T1DarLT14sister
  ++ @546 + T1DarLT14conc
END

IF ~~ T1DarLT14father
  SAY @547
  ++ @548 + T1DarLT14sister
  ++ @549 + T1DarLT14end
END

IF ~~ T1DarLT14sister
  SAY @550
  ++ @551 + T1DarLT14father
  ++ @552 + T1DarLT14end
END

IF ~~ T1DarLT14conc
  SAY @553
  IF ~~ EXIT
END

IF ~~ T1DarLT14end
  SAY @554
  IF ~~ EXIT
END


// Lovetalk 15.
IF ~Global("T1DarLovetalk","GLOBAL",30)~ T1DarLovetalk15
  SAY @52
  ++ @150 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  ++ @555 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  ++ @62 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + @556 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceTimer","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @556 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT15bye
END

IF ~~ T1DarLT15bye
  SAY @557
  IF ~~ EXIT
END

IF ~~ T1DarLT15ask
  SAY @558
  ++ @559 + T1DarLT15alone
  ++ @560 + T1DarLT15evasive
  ++ @561 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
END

IF ~~ T1DarLT15alone
  SAY @562
  ++ @563 + T1DarLT15family
  ++ @564 + T1DarLT15family
  ++ @565 + T1DarLT15family
  ++ @566 + T1DarLT15report
END

IF ~~ T1DarLT15evasive
  SAY @567
  ++ @568 + T1DarLT15family
  ++ @569 + T1DarLT15family
  ++ @570 + T1DarLT15report
END

IF ~~ T1DarLT15family
  SAY @571
  ++ @572 + T1DarLT15tell
  ++ @573 + T1DarLT15tell
  ++ @574 + T1DarLT15tell
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + @575 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @575 + T1DarLT15bye
END

IF ~~ T1DarLT15report
  SAY @576
  ++ @577 + T1DarLT15tell
  ++ @578 + T1DarLT15tell
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + @575 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @575 + T1DarLT15bye
END

IF ~~ T1DarLT15tell
  SAY @579
  ++ @580 + T1DarLT15envy
  ++ @581 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT15visit
  ++ @549 + T1DarLT15share
  ++ @582 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT15burn
END

IF ~~ T1DarLT15burn
  SAY @583
  IF ~~ EXIT
END

IF ~~ T1DarLT15envy
  SAY @584
  IF ~~ EXIT
END

IF ~~ T1DarLT15visit
  SAY @585
  IF ~~ EXIT
END

IF ~~ T1DarLT15share
  SAY @586
  IF ~~ EXIT
END


// Lovetalk 16.
IF ~Global("T1DarLovetalk","GLOBAL",32)~ T1DarLovetalk16
  SAY @587
  ++ @588 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT16why
  ++ @589 DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT16trust
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + @590 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceActive","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT16bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @590 DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarLovetalk","GLOBAL",33)~ + T1DarLT16bye
END

IF ~~ T1DarLT16bye
  SAY @62
  IF ~~ EXIT
END

IF ~~ T1DarLT16why
  SAY @591
  ++ @592 + T1DarLT16diff
  ++ @593 + T1DarLT16sure
  ++ @594 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16trust
  SAY @595
  ++ @596 + T1DarLT16thank
  ++ @597 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16diff
  SAY @598
  ++ @599 + T1DarLT16pain
  ++ @600 + T1DarLT16praise
  + ~!Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarFlirtCount","GLOBAL",9)~+ @601 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16flirt
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarFlirtCount","GLOBAL",9)~+ @601 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16romflirt
  + ~!Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarFlirtCount","GLOBAL",8)~+ @601 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16highflirt
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarFlirtCount","GLOBAL",8)~+ @601 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16highromflirt
  ++ @602 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16burn
  SAY @603
  IF ~~ EXIT
END

IF ~~ T1DarLT16pain
  SAY @604
  IF ~~ EXIT
END

IF ~~ T1DarLT16praise
  SAY @605
  IF ~~ EXIT
END

IF ~~ T1DarLT16flirt
  SAY @606
  IF ~~ EXIT
END

IF ~~ T1DarLT16romflirt
  SAY @607
  IF ~~ EXIT
END

IF ~~ T1DarLT16highromflirt
  SAY @608
  IF ~~ EXIT
END

IF ~~ T1DarLT16highflirt
  SAY @609
  ++ @610 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @611 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @612 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @613 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @614 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @615 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @616 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ @617 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
END

IF ~~ T1DarLT16interest
  SAY @618
  IF ~~ EXIT
END

IF ~~ T1DarLT16sure
  SAY @619
  ++ @620 + T1DarLT16thank
  ++ @621 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarLT16thank
  SAY @622
  IF ~~ EXIT
END


// Lovetalk 17.
IF ~Global("T1DarLovetalk","GLOBAL",34)~ T1DarLovetalk17
  SAY @623
  ++ @624 DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17advent
  ++ @625 DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17settle
  ++ @626 DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17advent
  ++ @627 DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17busy
END

IF ~~ T1DarLT17advent
  SAY @628
  ++ @629 + T1DarLT17limits
  ++ @630 + T1DarLT17illusion
  ++ @631 + T1DarLT17settle
END

IF ~~ T1DarLT17settle
  SAY @632
  ++ @633 + T1DarLT17mission
  ++ @634 + T1DarLT17join
  ++ @635 + T1DarLT17perhaps
END

IF ~~ T1DarLT17busy
  SAY @636
  ++ @637 + T1DarLT17advent
  ++ @638 + T1DarLT17settle
END

IF ~~ T1DarLT17limits
  SAY @639
  ++ @640 + T1DarLT17pass
  ++ @641 + T1DarLT17help
  ++ @642 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT17sexy
END

IF ~~ T1DarLT17pass
  SAY @643
  ++ @644 + T1DarLT17bridge
  ++ @645 + T1DarLT17win
  ++ @646 + T1DarLT17stumble
END

IF ~~ T1DarLT17bridge
  SAY @647
  IF ~~ EXIT
END

IF ~~ T1DarLT17win
  SAY @648
  IF ~~ EXIT
END

IF ~~ T1DarLT17stumble
  SAY @649
  IF ~~ EXIT
END

IF ~~ T1DarLT17help
  SAY @650
  IF ~~ EXIT
END

IF ~~ T1DarLT17sexy
  SAY @651
  IF ~~ EXIT
END

IF ~~ T1DarLT17illusion
  SAY @652
  ++ @653 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT17alone
  ++ @654 + T1DarLT17perhaps
  ++ @655 + T1DarLT17with
END

IF ~~ T1DarLT17alone
  SAY @656
  IF ~~ EXIT
END

IF ~~ T1DarLT17perhaps
  SAY @657
  IF ~~ EXIT
END

IF ~~ T1DarLT17with
  SAY @658
  IF ~~ EXIT
END

IF ~~ T1DarLT17mission
  SAY @659
  ++ @660 + T1DarLT17life
  ++ @661 + T1DarLT17humor
  ++ @662 + T1DarLT17people
END

IF ~~ T1DarLT17life
  SAY @663
  IF ~~ EXIT
END

IF ~~ T1DarLT17humor
  SAY @664
  IF ~~ EXIT
END

IF ~~ T1DarLT17people
  SAY @665
  IF ~~ EXIT
END

IF ~~ T1DarLT17join
  SAY @666
  ++ @667 + T1DarLT17blush
  ++ @668 + T1DarLT17veil
  ++ @669 + T1DarLT17kiss
END

IF ~~ T1DarLT17blush
  SAY @670
  IF ~~ EXIT
END

IF ~~ T1DarLT17veil
  SAY @671
  IF ~~ EXIT
END

IF ~~ T1DarLT17kiss
  SAY @672
  ++ @673 + T1DarLT17kiss2
  ++ @674 + T1DarLT17smirk
END

IF ~~ T1DarLT17kiss2
  SAY @675
  IF ~~ EXIT
END

IF ~~ T1DarLT17smirk
  SAY @676
  IF ~~ EXIT
END  

IF ~~ T1DarLT17distant
  SAY @677
  IF ~~ EXIT
END


// Spellhold Scene
IF WEIGHT #-2 ~Global("T1DarSpellholdTalk","GLOBAL",1)~ THEN BEGIN T1DarSpellholdTalk
  SAY @678
  ++ @679 DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPtook
  ++ @680 DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPtook
  ++ @681 DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPnothing
END

IF ~~ T1DarLTSPtook
  SAY @682
  ++ @683 + T1DarLTSPsoul
  ++ @684 + T1DarLTSPsoul
  ++ @685 + T1DarLTSPsoul
END

IF ~~ T1DarLTSPnothing
  SAY @686
  ++ @687 + T1DarLTSPsoul
  ++ @688 + T1DarLTSPsoul
END

IF ~~ T1DarLTSPsoul
  SAY @689
  ++ @690 + T1DarLTSPcare
  ++ @691 + T1DarLTSPcare
  ++ @692 + T1DarLTSPcare
END

IF ~~ T1DarLTSPcare
  SAY @693
  ++ @694 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",2)~ + T1DarLTSPfeelings
  ++ @695 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLTSPfriend
  ++ @696 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLTSPburn
END

IF ~~ T1DarLTSPfriend
  SAY @697
  IF ~~ EXIT
END

IF ~~ T1DarLTSPburn
  SAY @698
  IF ~~ EXIT
END

IF ~~ T1DarLTSPfeelings
  SAY @699
  ++ @700 + T1DarLTSPsweet
  ++ @701 + T1DarLTSPpray
  ++ @702 + T1DarLTSPgoing
END

IF ~~ T1DarLTSPsweet
  SAY @703
  IF ~~ EXIT
END

IF ~~ T1DarLTSPpray
  SAY @704
  IF ~~ EXIT
END

IF ~~ T1DarLTSPgoing
  SAY @62
  IF ~~ EXIT
END


// Forest scene, after Underdark
IF WEIGHT #-2 ~Global("T1DarUnderExitTalk","GLOBAL",1)~ T1DarForestTalk
  SAY @705
  ++ @706 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ @707 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ @708 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ @709 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ @710 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ @711 DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
END

IF ~~ T1DarLTSURhappy
  SAY @712
  ++ @713 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",3)~ + T1DarLTSURkiss
  ++ @714 + T1DarLTSURtough
  ++ @715 + T1DarLTSURamuse
  ++ @716 + T1DarLTSURtough
END

IF ~~ T1DarLTSURkiss
  SAY @717
  IF ~~ EXIT
END

IF ~~ T1DarLTSURtough
  SAY @718
  ++ @719 + T1DarLTSURrelax
  ++ @720 + T1DarLTSURcrazy
  ++ @721 + T1DarLTSURact
END

IF ~~ T1DarLTSURrelax
  SAY @722
  IF ~~ EXIT
END

IF ~~ T1DarLTSURcrazy
  SAY @723
  IF ~~ EXIT
END

IF ~~ T1DarLTSURact
  SAY @724
  IF ~~ EXIT
END

IF ~~ T1DarLTSURamuse
  SAY @725
  ++ @726 + T1DarLTSURenter
  ++ @727 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",2)~ + T1DarLTSURplans
  ++ @728 + T1DarLTSURindulge
END

IF ~~ T1DarLTSURenter
  SAY @729
  IF ~~ EXIT
END

IF ~~ T1DarLTSURplans
  SAY @730
  ++ @731 DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",3)~ + T1DarLTSURkiss
END

IF ~~ T1DarLTSURindulge
  SAY @732
  IF ~~ EXIT
END


// Final Scene
IF WEIGHT #-2 ~Global("T1DarFinalTalk","GLOBAL",1)~ THEN BEGIN T1DarFinalTalk
  SAY @733
  ++ @734 DO ~IncrementGlobal("T1DarFinalTalk","GLOBAL",1)~ + T1DarLTFINtalk
  ++ @735 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLTFINfriend
END

IF ~~ T1DarLTFINfriend
  SAY @736
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLTFINtalk
  SAY @737
  ++ @738 + T1DarLTFINtongue
  + ~!Race(Player1,HUMAN)~ + @739 + T1DarLTFINtongue
  ++ @740 + T1DarLTFINtongue
END

IF ~~ T1DarLTFINtongue
  SAY @741
  ++ @742 + T1DarLTFINteach
  ++ @743 + T1DarLTFINteach
END

IF ~~ T1DarLTFINteach
  SAY @744
  ++ @745 + T1DarLTFINmenelwrong
  ++ @746 + T1DarLTFINmenelright
  ++ @747 + T1DarLTFINmenelwrong
  ++ @748 + T1DarLTFINmenelwrong
END

IF ~~ T1DarLTFINmenelwrong
  SAY @749
  ++ @750 + T1DarLTFINedainright
  ++ @751 + T1DarLTFINedainwrong
  ++ @752 + T1DarLTFINedainwrong
  ++ @753 + T1DarLTFINedainwrong
END

IF ~~ T1DarLTFINmenelright
  SAY @754
  ++ @750 + T1DarLTFINedainright
  ++ @751 + T1DarLTFINedainwrong
  ++ @752 + T1DarLTFINedainwrong
  ++ @753 + T1DarLTFINedainwrong
END

IF ~~ T1DarLTFINedainright
  SAY @755
  ++ @756 + T1DarLTFINtirion
  ++ @757 + T1DarLTFINtirion
  ++ @758 + T1DarLTFINtirion
END

IF ~~ T1DarLTFINedainwrong
  SAY @759
  ++ @756 + T1DarLTFINtirion
  ++ @757 + T1DarLTFINtirion
  ++ @758 + T1DarLTFINtirion
END

IF ~~ T1DarLTFINtirion
  SAY @760
  ++ @761 + T1DarLTFINswan
  ++ @762 + T1DarLTFINswan
  ++ @763 + T1DarLTFINswan
END

IF ~~ T1DarLTFINswan
  SAY @764
  ++ @765 + T1DarLTFINsweet
  ++ @766 + T1DarLTFINsweet
  ++ @767 + T1DarLTFINsweet
  ++ @768 + T1DarLTFINsweet
END

IF ~~ T1DarLTFINsweet
  SAY @769
  ++ @770 + T1DarLTFINlove
  ++ @771 + T1DarLTFINswift
  ++ @772 + T1DarLTFINconfident
  ++ @773 + T1DarLTFINstop
END

IF ~~ T1DarLTFINswift
  SAY @774
  ++ @775 + T1DarLTFINlove
  ++ @776 + T1DarLTFINlove
  ++ @777 + T1DarLTFINlove
END

IF ~~ T1DarLTFINconfident
  SAY @778
  ++ @779 + T1DarLTFINlove
  ++ @780 + T1DarLTFINlove
  ++ @781 + T1DarLTFINlove
END

IF ~~ T1DarLTFINstop
  SAY @782
  ++ @783 + T1DarLTFINlove
  ++ @784 + T1DarLTFINlove
  ++ @785 + T1DarLTFINlove
END

IF ~~ T1DarLTFINlove
  SAY @786
  ++ @787 + T1DarLTFINend
  ++ @788 + T1DarLTFINend
  ++ @789 + T1DarLTFINend
  ++ @790 DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLTFINsorry
END

IF ~~ T1DarLTFINsorry
  SAY @791
  IF ~~ EXIT
END

IF ~~ T1DarLTFINend
  SAY @792
  = @793
  ++ @794 + T1DarLTFINsex
  ++ @795 + T1DarLTFINrebuff
END

IF ~~ T1DarLTFINsex
  SAY @796
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLTFINrebuff
  SAY @797
  IF ~~ DO ~RestParty()~ EXIT
END


// ---------------------------------------
// Darian Flirts
// ---------------------------------------
// Light flirts (romanceactive = 4)
IF ~Global("T1DarTimeForFlirt","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",4)~ T1DarStartFlirt
  SAY @798
  IF ~RandomNum(9,1)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitVigilant
  IF ~RandomNum(9,2)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitThoughtful
  IF ~RandomNum(9,3)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitStumble
  IF ~RandomNum(9,4)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitWrite
  IF ~RandomNum(9,5)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitSuspicion
  IF ~RandomNum(9,6)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitMelody
  IF ~RandomNum(9,7)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitNecklace
  IF ~RandomNum(9,8)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitBreeze
  IF ~RandomNum(9,9)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitTickle
END

IF ~~ T1DarInitVigilant
  SAY @799
  IF ~~ EXIT
END

IF ~~ T1DarInitThoughtful
  SAY @800
  IF ~~ EXIT
END

IF ~~ T1DarInitStumble
  SAY @801
  IF ~~ EXIT
END

IF ~~ T1DarInitWrite
  SAY @802
  IF ~~ EXIT
END

IF ~~ T1DarInitSuspicion
  SAY @803
  IF ~~ EXIT
END

IF ~~ T1DarInitMelody
  SAY @804
  IF ~~ EXIT
END

IF ~~ T1DarInitNecklace
  SAY @805
  IF ~~ EXIT
END

IF ~~ T1DarInitBreeze
  SAY @806
  IF ~~ EXIT
END

IF ~~ T1DarInitTickle
  SAY @807
  IF ~~ EXIT
END


// Heavy flirts (romanceactive = 2)
IF ~Global("T1DarTimeForFlirt","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ T1DarHeavyFlirtStart
  SAY @798
  IF ~RandomNum(8,1)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitConcern
  IF ~RandomNum(8,2)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitWrack
  IF ~RandomNum(8,3)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitFeathers
  IF ~RandomNum(8,4)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitWatching
  IF ~RandomNum(8,5)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitEngraving
  IF ~RandomNum(8,6)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitInjured
  IF ~RandomNum(8,7)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitHold
  IF ~RandomNum(8,8)~ DO ~SetGlobal("T1DarTimeForFlirt","GLOBAL",0) RealSetGlobalTimer("T1DarFlirtTimer","GLOBAL",1800)~ + T1DarInitCloak
END

IF ~~ T1DarInitConcern
  SAY @808
  IF ~~ EXIT
END

IF ~~ T1DarInitWrack
  SAY @809
  IF ~~ EXIT
END

IF ~~ T1DarInitFeathers
  SAY @810
  IF ~~ EXIT
END

IF ~~ T1DarInitCloak
  SAY @811
  IF ~~ EXIT
END

IF ~~ T1DarInitWatching
  SAY @812
  IF ~~ EXIT
END

IF ~~ T1DarInitEngraving
  SAY @813
  IF ~~ EXIT
END

IF ~~ T1DarInitInjured
  SAY @814
  IF ~~ EXIT
END

IF ~~ T1DarInitHold
  SAY @815
  IF ~~ EXIT
END

END


// ---------------------------------------
// Darian Player initiated dialogue
// ---------------------------------------
APPEND ~T1DARJ~

IF ~IsGabber(Player1)~ THEN BEGIN T1DarDarianApproach
  SAY @816
  ++ @817 + T1DarTalkAsk
  + ~OR(3) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarRomanceActive","GLOBAL",5)~ + @818 + T1DarTalkSerious
  + ~OR(2) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ + @819DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarTalkFlirt
  ++ @820 + T1DarTalkBack
END

IF ~~ T1DarTalkBack
  SAY @821
  IF ~~ EXIT 
END

IF ~~ T1DarTalkAsk
  SAY @822
  ++ @823 + T1DarAskSilly
  ++ @824 + T1DarAskSomber
END

IF ~~ T1DarAskSilly
  SAY @825
  ++ @826 + T1DarAskColor
  ++ @827 + T1DarAskHobby
  ++ @828 + T1DarAskPoetry
  ++ @829 + T1DarAskSing
  ++ @830 + T1DarAskPet
  + ~Gender(Player1,"FEMALE")~ + @831 + T1DarAskFat
  ++ @832 + T1DarAskAge
  ++ @833 + T1DarAskTickle
  ++ @834 + T1DarAskFavorite
  ++ @835 + T1DarAskLeast
END

IF ~~ T1DarAskSomber
  SAY @825
  ++ @836 + T1DarAskTalon
  ++ @837 + T1DarAskBond
  ++ @838 + T1DarAskLove
  ++ @839 + T1DarAskMyrr
  ++ @840 + T1DarAskValues
  ++ @841 + T1DarAskMeasure
  ++ @842 + T1DarAskNature
END

IF ~~ T1DarAskTalon
  SAY @843
  IF ~~ EXIT
END

IF ~~ T1DarAskBond
  SAY @844
  IF ~~ EXIT 
END

IF ~~ T1DarAskLove
  SAY @845
IF ~~ THEN EXIT
END

IF ~~ T1DarAskMyrr
  SAY @846
  IF ~~ EXIT 
END

IF ~~ T1DarAskValues
  SAY @847
  IF ~~ EXIT 
END

IF ~~ T1DarAskMeasure
  SAY @848
  IF ~~ EXIT 
END

IF ~~ T1DarAskNature
  SAY @849
  IF ~~ EXIT 
END

IF ~~ T1DarAskColor
  SAY @850
IF ~~ THEN EXIT
END

IF ~~ T1DarAskHobby
  SAY @851
  IF ~~ EXIT 
END

IF ~~ T1DarAskPoetry
  SAY @852
  IF ~~ EXIT 
END

IF ~~ T1DarAskSing
  SAY @853
IF ~~ THEN EXIT
END

IF ~~ T1DarAskPet
  SAY @854
  IF ~~ EXIT 
END

IF ~~ T1DarAskFat
  SAY @855
  IF ~~ EXIT 
END

IF ~~ T1DarAskAge
  SAY @856
  IF ~~ EXIT 
END

IF ~~ T1DarAskTickle
  SAY @857
  IF ~~ EXIT 
END

IF ~~ T1DarAskFavorite
  SAY @858
  IF ~~ EXIT 
END

IF ~~ T1DarAskLeast
  SAY @859
  IF ~~ EXIT 
END

IF ~~ T1DarTalkFlirt
  SAY @860
  ++ @861 + T1DarGazeFlirt
  + ~Global("T1DarRomanceActive","GLOBAL",1)~ + @862 + T1DarHandLight
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + @862 + T1DarHandHeavy
  ++ @863 + T1DarFlirtApproach
END

IF ~~ T1DarGazeFlirt
  SAY @864
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + @865 + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + @865 + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + @865 + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + @865 + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @865 + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @865 + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + @866 + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + @866 + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + @866 + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + @866 + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @866 + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @866 + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + @867 + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + @867 + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + @867 + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + @867 + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @867 + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @867 + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + @868 + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + @868 + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + @868 + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + @868 + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + @868 + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + @868 + T1DarGaze6
END

IF ~~ T1DarGaze1
  SAY @869
  IF ~~ EXIT 
END

IF ~~ T1DarGaze2
  SAY @870
  IF ~~ EXIT 
END

IF ~~ T1DarGaze3
  SAY @871
  IF ~~ EXIT 
END

IF ~~ T1DarGaze4
  SAY @872
  IF ~~ EXIT 
END

IF ~~ T1DarGaze5
  SAY @873
  IF ~~ EXIT 
END

IF ~~ T1DarGaze6
  SAY @874
  IF ~~ EXIT 
END

IF ~~ T1DarHandLight
  SAY @875
  + ~RandomNum(5,1)~ + @876 + T1DarEase1
  + ~RandomNum(5,2)~ + @876 + T1DarEase2
  + ~RandomNum(5,3)~ + @876 + T1DarEase3
  + ~RandomNum(5,4)~ + @876 + T1DarEase4
  + ~RandomNum(5,5)~ + @876 + T1DarEase5
  + ~RandomNum(5,1)~ + @877 + T1DarEase1
  + ~RandomNum(5,2)~ + @877 + T1DarEase2
  + ~RandomNum(5,3)~ + @877 + T1DarEase3
  + ~RandomNum(5,4)~ + @877 + T1DarEase4
  + ~RandomNum(5,5)~ + @877 + T1DarEase5
  + ~RandomNum(3,1)~ + @878 + T1DarMove1
  + ~RandomNum(3,2)~ + @878 + T1DarMove2
  + ~RandomNum(3,3)~ + @878 + T1DarMove3
  + ~RandomNum(4,1)~ + @879 + T1DarSqueeze1
  + ~RandomNum(4,2)~ + @879 + T1DarSqueeze2
  + ~RandomNum(4,3)~ + @879 + T1DarSqueeze3
  + ~RandomNum(4,4)~ + @879 + T1DarSqueeze4
END

IF ~~ T1DarEase1
  SAY @880
  IF ~~ EXIT 
END

IF ~~ T1DarEase2
  SAY @881
  IF ~~ EXIT 
END

IF ~~ T1DarEase3
  SAY @882
  IF ~~ EXIT 
END

IF ~~ T1DarEase4
  SAY @883
  IF ~~ EXIT 
END

IF ~~ T1DarEase5
  SAY @884
  IF ~~ EXIT 
END

IF ~~ T1DarMove1
  SAY @885
  IF ~~ EXIT 
END

IF ~~ T1DarMove2
  SAY @886
  IF ~~ EXIT 
END

IF ~~ T1DarMove3
  SAY @887
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze1
  SAY @888
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze2
  SAY @889
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze3
  SAY @890
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze4
  SAY @891
  IF ~~ EXIT 
END

IF ~~ T1DarHandHeavy
  SAY @892
  + ~RandomNum(4,1)~ + @879 + T1DarSqueeze1
  + ~RandomNum(4,2)~ + @879 + T1DarSqueeze2
  + ~RandomNum(4,3)~ + @879 + T1DarSqueeze3
  + ~RandomNum(4,4)~ + @879 + T1DarSqueeze4
  + ~RandomNum(3,1)~ + @893 + T1DarHold1
  + ~RandomNum(3,2)~ + @893 + T1DarHold2
  + ~RandomNum(3,3)~ + @893 + T1DarHold3
  + ~RandomNum(4,1)~ + @894 + T1DarMoveA
  + ~RandomNum(4,2)~ + @894 + T1DarMoveB
  + ~RandomNum(4,3)~ + @894 + T1DarMoveC
  + ~RandomNum(4,4)~ + @894 + T1DarMoveD
END

IF ~~ T1DarHold1
  SAY @895
  IF ~~ EXIT 
END

IF ~~ T1DarHold2
  SAY @896
  IF ~~ EXIT 
END

IF ~~ T1DarHold3
  SAY @897
  IF ~~ EXIT 
END

IF ~~ T1DarMoveA
  SAY @898
  IF ~~ EXIT 
END

IF ~~ T1DarMoveB
  SAY @899
  IF ~~ EXIT 
END

IF ~~ T1DarMoveC
  SAY @900
  IF ~~ EXIT 
END

IF ~~ T1DarMoveD
  SAY @901
  IF ~~ EXIT 
END

IF ~~ T1DarFlirtApproach
  SAY @902
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + @903 + T1DarHair1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + @903 + T1DarHair2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + @903 + T1DarHair3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + @903 + T1DarHair4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,1)~ + @903 + T1DarHair1
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,2)~ + @903 + T1DarHair2
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,3)~ + @903 + T1DarHair3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,4)~ + @903 + T1DarHair4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,5)~ + @903 + T1DarHair5 
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,1)~ + @904 + T1DarTickle1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,2)~ + @904 + T1DarTickle2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,3)~ + @904 + T1DarTickle3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,1)~ + @904 + T1DarTickle1
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,2)~ + @904 + T1DarTickle2
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,3)~ + @904 + T1DarTickle3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,4)~ + @904 + T1DarTickle4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,5)~ + @904 + T1DarTickle5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,6)~ + @904 + T1DarTickle6
  + ~RandomNum(2,1)~ + @905 + T1DarBack1
  + ~RandomNum(2,2)~ + @905 + T1DarBack2
END

IF ~~ T1DarHair1
  SAY @906
  IF ~~ EXIT 
END

IF ~~ T1DarHair2
  SAY @907
  IF ~~ EXIT 
END

IF ~~ T1DarHair3
  SAY @908
  IF ~~ EXIT 
END

IF ~~ T1DarHair4
  SAY @909
  IF ~~ EXIT 
END

IF ~~ T1DarHair5
  SAY @910
  IF ~~ EXIT 
END

IF ~~ T1DarTickle1
  SAY @911
  IF ~~ EXIT 
END

IF ~~ T1DarTickle2
  SAY @912
  IF ~~ EXIT 
END

IF ~~ T1DarTickle3
  SAY @913
  IF ~~ EXIT 
END

IF ~~ T1DarTickle4
  SAY @914
  IF ~~ EXIT 
END

IF ~~ T1DarTickle5
  SAY @915
  IF ~~ EXIT 
END

IF ~~ T1DarTickle6
  SAY @916
  IF ~~ EXIT 
END

IF ~~ T1DarBack1
  SAY @917
  IF ~~ EXIT 
END

IF ~~ T1DarBack2
  SAY @918
  IF ~~ EXIT 
END

IF ~~ T1DarTalkSerious
  SAY @919
  + ~Global("T1DarRelationshipTalk","GLOBAL",0) GlobalGT("T1DarLoveTalk","GLOBAL",12)  OR(2) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ + @920 + T1DarRelationshipTalk
  ++ @921 + T1DarSeldarine
END

IF ~~ T1DarRelationshipTalk
  SAY @922
  ++ @923DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelVirgin
  ++ @924DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelDate
  ++ @925DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelLove
  ++ @926DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelFiance
  ++ @927DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelMarried
  ++ @928DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelLesbo
  ++ @929DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelSlut
END

IF ~~ T1DarRelVirgin
  SAY @930
  ++ @931 + T1DarRelVirLone
  ++ @932 + T1DarRelVirShy
  ++ @933 + T1DarRelVirCrush
END

IF ~~ T1DarRelVirLone
  SAY @934
  IF ~~ EXIT 
END

IF ~~ T1DarRelVirShy
  SAY @935
  IF ~~ EXIT 
END

IF ~~ T1DarRelVirCrush
  SAY @936
IF ~~ THEN EXIT
END

IF ~~ T1DarRelDate
  SAY @937
  ++ @938 + T1DarRelDateDiff
  ++ @939 + T1DarRelDateFlirt
  ++ @940 + T1DarRelDateLis
END

IF ~~ T1DarRelDateDiff
  SAY @941
  IF ~~ EXIT 
END

IF ~~ T1DarRelDateFlirt
  SAY @942
  IF ~~ EXIT 
END

IF ~~ T1DarRelDateLis
  SAY @943
  IF ~~ EXIT 
END

IF ~~ T1DarRelLove
  SAY @944
  ++ @945 + T1DarRelLoveSep
  ++ @946 + T1DarRelLoveSep
  ++ @947 + T1DarRelLoveTorch
END

IF ~~ T1DarRelLoveSep
  SAY @948
  ++ @949 + T1DarRelLoveEnd
  ++ @950 + T1DarRelLoveEnd
  ++ @951 + T1DarRelEndWish
END

IF ~~ T1DarRelLoveEnd
  SAY @952
  IF ~~ EXIT 
END

IF ~~ T1DarRelEndWish
  SAY @953
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarRelLoveTorch
  SAY @954
  ++ @955 + T1DarRelLoveEnd
  ++ @956 + T1DarRelEndWish
END

IF ~~ T1DarRelFiance
  SAY @957
  ++ @958 + T1DarRelFiaDead
  ++ @959 + T1DarRelFiaNolove
  ++ @960 + T1DarRelFiaMiss
END

IF ~~ T1DarRelFiaDead
  SAY @961
  ++ @962 + T1DarRelFiaCom
  ++ @963 + T1DarRelFiaGrief
  ++ @964 + T1DarRelFiaTerm
END

IF ~~ T1DarRelFiaCom
  SAY @965
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaGrief
  SAY @966
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaTerm
  SAY @967
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ T1DarRelFiaNolove
  SAY @968
  ++ @969 + T1DarRelFiaBurn
  ++ @970 + T1DarRelFiaWant
  ++ @971 + T1DarRelFiaTog
END

IF ~~ T1DarRelFiaBurn
  SAY @972
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ T1DarRelFiaWant
  SAY @973
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaTog
  SAY @974
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaMiss
  SAY @975
  ++ @976 + T1DarRelMissEnd
  ++ @977 + T1DarRelMissNow
  ++ @978 + T1DarRelMissHere
END

IF ~~ T1DarRelMissEnd
  SAY @62
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarRelMissNow
  SAY @979
  ++ @980 + T1DarRelMissHere
  ++ @981 + T1DarRelEndWish
END

IF ~~ T1DarRelMissHere
  SAY @982
  IF ~~ EXIT 
END

IF ~~ T1DarRelMarried
  SAY @983
  ++ @984 + T1DarRelFiaDead
  ++ @985 + T1DarRelMarrTrue
  ++ @986 + T1DarRelMarrLose
  ++ @987 + T1DarRelEndWish
END

IF ~~ T1DarRelMarrTrue
  SAY @988
  ++ @989 + T1DarRelMarrLike
  ++ @990 + T1DarRelEndWish
END

IF ~~ T1DarRelMarrLike
  SAY @991
  IF ~~ EXIT 
END

IF ~~ T1DarRelMarrLose
  SAY @992
  ++ @993 + T1DarRelMarrLike
  ++ @994 + T1DarRelEndWish
END

IF ~~ T1DarRelLesbo
  SAY @995
  ++ @996 + T1DarRelLesSec
  ++ @997 + T1DarRelLesSec
  ++ @998DO ~SetGlobal("T1DarImoenCharLove","GLOBAL",1)~ + T1DarRelLesSec
END

IF ~~ T1DarRelLesSec
  SAY @999
  ++ @1000 + T1DarRelLesEnd
  ++ @1001 + T1DarRelLesEnd
  ++ @1002 + T1DarRelLesEnd
END

IF ~~ T1DarRelLesEnd
  SAY @1003
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlut
  SAY @1004
  ++ @1005DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutLov
  ++ @1006DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutProf
  ++ @1007DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutCharm
END

IF ~~ T1DarRelSlutLov
  SAY @1008
  ++ @1009 + T1DarRelSlutProb
  ++ @1010 + T1DarRelSlutCare
  ++ @1011 + T1DarRelSlutMaid
  ++ @1012 + T1DarRelSlutFert
END

IF ~~ T1DarRelSlutProb
  SAY @1013
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutCare
  SAY @1014
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutMaid
  SAY @1015
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutFert
  SAY @1016
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutProf
  SAY @1017
  ++ @1018 + T1DarRelSlutShow
  ++ @1019 + T1DarRelSlutNaughty
  ++ @1020 + T1DarRelSlutBlush
END

IF ~~ T1DarRelSlutShow
  SAY @1021
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutNaughty
  SAY @1022
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutBlush
  SAY @1023
IF ~~ THEN EXIT
END

IF ~~ T1DarRelSlutCharm
  SAY @1024
  IF ~~ EXIT 
END

IF ~~ T1DarSeldarine
  SAY @1025
  ++ @1026 + T1DarSelOthers
  ++ @1027 + T1DarSelAerdrie
  ++ @1028 + T1DarSelTalon
  ++ @1029 + T1DarSelExplain
  ++ @1030 + T1DarSelOverview
END

IF ~~ T1DarSelOthers
  SAY @1031
  ++ @1032 + T1DarSelSaved
  ++ @1033 + T1DarSelWhatif
  ++ @1034 + T1DarSelNonetheless
END

IF ~~ T1DarSelSaved
  SAY @1035
  IF ~~ EXIT 
END

IF ~~ T1DarSelWhatif
  SAY @1036
  IF ~~ EXIT 
END

IF ~~ T1DarSelNonetheless
  SAY @1037
  IF ~~ EXIT 
END

IF ~~ T1DarSelAerdrie
  SAY @1038
  ++ @1032 + T1DarSelSaved
  ++ @1033 + T1DarSelWhatif
  ++ @1034 + T1DarSelNonetheless
END

IF ~~ T1DarSelTalon
  SAY @1039
  IF ~~ EXIT 
END

IF ~~ T1DarSelExplain
  SAY @1040
  ++ @1041 + T1DarSelFertility
  ++ @1042 + T1DarSelAerdrie
  + ~!Race(Player1,HUMAN) Global("T1DarRomanceActive","GLOBAL",1)~ + @1043 + T1DarSelPray
  + ~!Race(Player1,HUMAN) Global("T1DarRomanceActive","GLOBAL",2)~ + @1043 + T1DarSelPrayRom
  ++ @549 + T1DarSelThank
END

IF ~~ T1DarSelFertility
  SAY @1044
  IF ~~ EXIT 
END

IF ~~ T1DarSelPray
  SAY @1045
  IF ~~ EXIT 
END

IF ~~ T1DarSelPrayRom
  SAY @1046
IF ~~ THEN EXIT
END

IF ~~ T1DarSelThank
  SAY @1047
  IF ~~ EXIT
END

IF ~~ T1DarSelOverview
  SAY @1048
  ++ @1049 + T1DarSelCorLoth
  ++ @1050 + T1DarSelAngharr
  ++ @1051 + T1DarSelEreIll
  ++ @1052 + T1DarSelExplain
  ++ @1053 + T1DarSelHanCel
  ++ @1054 + T1DarSelLabEno
  ++ @1055 + T1DarSelRilRal
  ++ @1056 + T1DarSelSehMoo
  ++ @1057 + T1DarSelSolThe
END

IF ~~ T1DarSelCorLoth
  SAY @1058
  ++ @1059 + T1DarSelCorMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelCorMore
  SAY @1062
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelAngharr
  SAY @1063
  ++ @1064 + T1DarSelAngMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelAngMore
  SAY @1065
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelEreIll
  SAY @1066
  ++ @1059 + T1DarSelEreMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelEreMore
  SAY @1067
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelHanCel
  SAY @1068
  ++ @1064 + T1DarSelHanMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelHanMore
  SAY @1069
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelLabEno
  SAY @1070
  ++ @1059 + T1DarSelLabMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelLabMore
  SAY @1071
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelRilRal
  SAY @1072
  ++ @1059 + T1DarSelRilMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelRilMore
  SAY @1073
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelSehMoo
  SAY @1074
  ++ @1064 + T1DarSelSehMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelSehMore
  SAY @1075
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelSolThe
  SAY @1076
  ++ @1059 + T1DarSelSolMore
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

IF ~~ T1DarSelSolMore
  SAY @1077
  ++ @1060 + T1DarSelOverview
  ++ @1061 + T1DarSelThank
END

END

I_C_T2 NALIAJ 200 dariancommentnaliaentry
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1078
END

I_C_T2 NALIAJ 201 dariancommentnaliapassage
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1079
END

I_C_T AERIE 3 dariancommentaeriereveal
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1080
== AERIE @1081
== T1DarJ @1082
== AERIE @1083
END

I_C_T NALIAJ 224 dariancommentnaliafather
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1084
== NALIAJ @1085
== T1DarJ @1086
== NALIAJ @1087
== T1DarJ @1088
END

// Aran
I_C_T ARAN 1 t1dar_aran
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1089
END

I_C_T ARNBOY01 0 t1dar_arnboy
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1090
END

// Anomen
I_C_T ANOMENJ 186 t1dar_anomenj
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1091
END

// Bodhi
I_C_T BODHI 1 t1dar_bodhi1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1092
END

I_C_T BODHI 6 t1dar_bodhi2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1093
END

I_C_T2 BODHI 18 t1dar_bodhi3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1094
END

I_C_T BODHI 45 t1dar_bodhi4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1095
END

// Brat 3
CHAIN IF
~See("t1dar")
InParty("t1dar")
!StateCheck("t1dar",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("brat3darian","AR0700",0)~
THEN BRAT3 t1dar_brat3
@1096
DO ~SetGlobal("brat3darian","AR0700",1)~
== T1DARJ @1097
== BRAT3 @1098
== T1DARJ @1099
EXIT

// Bodhi part deux
I_C_T C6BODHI 0 t1dar_bodhi5
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1100
END

// Elhan
I_C_T C6ELHAN2 28 t1dar_elhan
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1101
END

I_C_T C6ELHAN2 35 t1dar_elhan2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1102
END

I_C_T C6ELHAN2 42 t1dar_elhan3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1103
END

I_C_T C6ELHAN2 74 t1dar_elhan4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1104
END

INTERJECT C6ELHAN2 82 t1dar_elhan5
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1105
END
  ++ @1106 EXTERN t1darj t1dar_sul
  ++ @1107 EXTERN t1darj t1dar_sul
  ++ @1108 EXTERN t1darj t1dar_sul

INTERJECT C6ELHAN2 83 t1dar_elhan6
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1109
END
  ++ @1106 EXTERN t1darj t1dar_sul
  ++ @1107 EXTERN t1darj t1dar_sul
  ++ @1108 EXTERN t1darj t1dar_sul

CHAIN T1DARJ t1dar_sul
@1110
DO ~ActionOverride("SUELFW1",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW2",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW9",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW10",EscapeAreaObject("DOOR01"))
ActionOverride("C6ELHAN",EscapeAreaObject("DOOR01"))~
EXIT


I_C_T2 DASLAVE1 7 t1dar_slave1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1111
END

/*
I_C_T DRUSH 0 t1dar_drush
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~An ogre... but one interested in parleying. I suppose hearing him out couldn't hurt.~
END  */

I_C_T FIRKRA01 3 t1dar_firkraag1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1112
END

I_C_T FIRKRA02 0 t1dar_firkraag2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1113
END

I_C_T2 FIRKRA02 21 t1dar_firkraag3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1114
END

I_C_T2 FIRKRA02 25 t1dar_firkraag4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1115
END

I_C_T GAAL 4 t1dar_gaal
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1116
END

I_C_T2 GAAL 23 t1dar_gaal2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1117
END

I_C_T2 GAELAN 66 t1dar_gaelan
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1118
END

I_C_T GORDEMO 1 t1dar_gordemo
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1119
END

I_C_T HENDAK 1 t1dar_hendak
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1120
END

I_C_T HENDAK 18 t1dar_hendak2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1121
END

I_C_T KALAH 1 t1dar_kalah
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1122
END

I_C_T MESSEN 5 t1dar_messen
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1123
== MESSEN @1124
END

I_C_T2 NALIA 45 t1dar_nalia
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1125
END

I_C_T PPAPHRIL 4 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN @1126
END

I_C_T PPAPHRIL 5 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN @1126
END

I_C_T PPAPHRIL 6 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN @1126
END

I_C_T2 PPSAEM 14 t1dar_saemon
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1127
END

I_C_T2 PPSAEM 53 t1dar_saemon1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1127
END

INTERJECT RENFELD 6 t1dar_renfield
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1128
== RENFELD @1129
COPY_TRANS RENFELD 4

I_C_T SUAVATAR 6 t1dar_suavatar
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1130
END

I_C_T SUDEMIN 11 t1dar_sudemin
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1131
END

INTERJECT SUDEMIN 26 t1dar_sudemin1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1132
= @1133
= @1134
== SUDEMIN @1135
COPY_TRANS SUDEMIN 27

I_C_T TIRDIR 2 t1dar_tirdir
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1136
END

I_C_T TOLGER 80 t1dar_tolgerias
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1137
END

I_C_T2 UDPHAE01 161 t1dar_phaerie
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1138
END

I_C_T UDSILVER 0 t1dar_silver
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1139
END

I_C_T UDSILVER 53 t1dar_silver2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1140
END

I_C_T2 UHMAY01 35 t1dar_mayor
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1141
END

I_C_T DRAGBLAC 0 t1dar_blackdragon
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN @1142
END

I_C_T Player1 5 T1dar_transform
  == T1DARJ IF ~InParty("t1dar")~ THEN
  @1143
END

// Trademeet Gypsy
EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0) Name("T1Dar",LastTalkedToBy)~ EXTERN TRGYP02  T1DarGypsy_0
END

APPEND TRGYP02
IF ~~ T1DarGypsy_0
  SAY @1144
  IF ~~ EXTERN T1DarJ T1DarGypsy_1
END
END

APPEND T1DarJ
IF ~~ T1DarGypsy_1
  SAY @1145
  IF ~~ EXIT
END
END

// In Hell
I_C_T PLAYER1 25 T1Dar_Hell
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @1146
END

// Irenicus in Hell (insulting him)
I_C_T HELLJON 7 T1Dar_Iren
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @1147
END

I_C_T HELLJON 8 T1Dar_Iren1
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @1147
END

I_C_T HELLJON 9 T1Dar_Iren2
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @1147
END

I_C_T HELLJON 10 T1Dar_Iren3
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN @1147
END

// Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarTreeofLife","GLOBAL",0) !Global("T1DarRomanceActive","GLOBAL",2)~
EXTERN PLAYER1 T1DarToL
IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarTreeofLife","GLOBAL",0) Global("T1DarRomanceActive","GLOBAL",2)~
EXTERN PLAYER1 T1DarToL_rom
END

CHAIN PLAYER1 T1DarToL
@1148
END
  ++ @1149 DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_1
  ++ @1150 DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_2
  ++ @1151 DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_3

CHAIN PLAYER1 T1DarToL_rom
@1152
DO ~SetGlobal("T1DarTreeOfLife","GLOBAL",1)~
== T1DARJ @1153
COPY_TRANS PLAYER1 33

APPEND T1DarJ
  IF ~~ T1DarToL_1
    SAY @1154
    COPY_TRANS PLAYER1 33
  END

  IF ~~ T1DarToL_2
    SAY @1155
    COPY_TRANS PLAYER1 33
  END

IF ~~ T1DarToL_3
    SAY @1156
    COPY_TRANS PLAYER1 33
  END

END
