// --------------------------------------------
// Darian J file
// --------------------------------------------
BEGIN T1DARJ



// Area-based Interjections:
// Graveyard
IF ~Global("T1dar_graveyard","GLOBAL",2)~ t1dar_graveyard
  SAY ~To be buried beneath the earth for all time... my skin crawls just thinking about it.~
  IF ~~ DO ~SetGlobal("T1dar_graveyard","GLOBAL",3)~ EXIT
END

// (Entering the Underdark)
IF ~Global("T1dar_underdark","GLOBAL",2)~ t1dar_underdark
  SAY ~If I had known my mission would demand this, I would have told my commander to go straight to hell. I'll be alright, <CHARNAME>, but we need to find a way out. Fast.~
  IF ~~ DO ~SetGlobal("T1dar_underdark","GLOBAL",3)~ EXIT
END

// (Entering Planar Sphere Hell - where you get the demon heart to return to the Prime Material Plane)
IF ~Global("T1dar_sphere","GLOBAL",2)~ t1dar_sphere
  SAY ~Well, this is different. And nerve-wracking.~
  IF ~~ DO ~SetGlobal("T1dar_sphere","GLOBAL",3)~ EXIT
END

// (Entering Druid Grove, outdoor area)
IF ~Global("T1dar_druidgrove","GLOBAL",2)~ t1dar_druidgrove
  SAY ~A swamp. A filthy, insect-filled swamp. Why do the druids love this place, again?~
  IF ~~ DO ~SetGlobal("T1dar_druidgrove","GLOBAL",3)~ EXIT
END


// ---------------------------------------
// Darian Lovetalks
// ---------------------------------------
// Lovetalk 1.
IF ~Global("T1DarLovetalk","GLOBAL",2)~ T1DarLovetalk1
  SAY ~What are you doing, <CHARNAME>?~
  ++ ~Excuse me?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1inq
  ++ ~What do you mean, "what am I doing"?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1inq
  ++ ~Nothing that concerns you, Darian. Go away.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT1end
END

IF ~~ T1DarLT1end
  SAY ~So be it.~
  IF ~~ EXIT
END

IF ~~ T1DarLT1inq
  SAY ~Just what exactly are you trying to do, <CHARNAME>? You told me you were seeking to rescue a friend of yours, but as far as I can tell, you haven't even begun looking for her.~
  ++ ~Haven't even begun? What gives you the right to pass judgement on my actions?~ + T1DarLT1judge
  ++ ~For your information, I actually am trying damn hard to rescue Imoen - it's not a simple matter of breaking into some castle. I'm working to purchase the aid of a group that's offered to help me.~ + T1DarLT1info
  ++ ~You're lucky I care more about rescuing Imoen than I do about what you think of me.~ + T1DarLT1lucky
END

IF ~~ T1DarLT1judge
  SAY ~Personally, I couldn't care less about your actions. It is the motives behind them that concern me.~
  ++ ~And what makes you think I'm going to tell you?~ + T1DarLT1motive
  ++ ~My motives are none of your damn business, Darian.~ + T1DarLT1motive
  ++ ~Too bad. We're done talking.~ + T1DarLT1end
END

IF ~~ T1DarLT1motive
  SAY ~Hmph. Just what I expected from a <PRO_RACE>.~
  ++ ~I don't know what your problem is, but you had better start fixing it before I get violent.~ + T1DarLT1end
  ++ ~I'm swiftly running out of patience with you, Darian. You had better change your attitude, and soon.~ + T1DarLT1end
  ++ ~If you think so poorly of me, then why the hell did you offer to help?~ + T1DarLT1offer
END

IF ~~ T1DarLT1offer
  SAY ~You're not the only one wondering...~
  IF ~~ EXIT
END

IF ~~ T1DarLT1info
  SAY ~So you yourself have no idea what you're really trying to do, and are hoping a group of people whose identity you don't even know will help you? Even for a <PRO_RACE>, that's bad.~
  ++ ~You're a real charmer, Darian. For your sake, I hope you get off your high horse before someone decides to make the world a better place by removing you from it.~ + T1DarLT1end
  ++ ~I'd like to see you do better, high and mighty Talon.~ + T1DarLT1end
  ++ ~Oh, that's rich. No wonder you were in Athkatla by yourself.~ + T1DarLT1end
END

IF ~~ T1DarLT1lucky
  SAY ~Now that is something I can respect. You have more backbone than I would have expected from a <PRO_RACE>.~
  ++ ~If you would like your head to continue its close acquaintance with your neck, I would suggest you learn about something called "kindness".~ + T1DarLT1end
  ++ ~Your attitude will determine your lifespan, Darian. At the moment, the latter is looking brief and painful.~ + T1DarLT1end
  ++ ~Then why on earth are you helping me?~ + T1DarLT1offer
END


// Lovetalk 2.
IF ~Global("T1DarLovetalk","GLOBAL",4)~ T1DarLovetalk2
  SAY ~<CHARNAME>, if you don't mind, I would like to... apologize for what I said when we last spoke.~
  ++ ~I think I said some things in haste as well, Darian. Please, go ahead.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ ~This had better be good...~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ ~An apology? From you? This is certainly unexpected.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT2apol
  ++ ~Keep your apology. I have no desire to talk to you.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT2burn
END

IF ~~ T1DarLT2burn
  SAY ~Very well.~
  IF ~~ EXIT
END

IF ~~ T1DarLT2apol
  SAY ~My behavior was out of line. You are not an ordinary <PRO_RACE>, and even if you were, I should not have treated you like that. You did help me with my assignment to Athkatla, and deserve to be treated with civility, not hostility. I am... sorry, <CHARNAME>.~
  ++ ~I accept your apology. But why were you so hostile in the first place?~ + T1DarLT2why
  ++ ~I suppose I'll accept that. But what was with that attitude you had?~ + T1DarLT2why
  ++ ~I don't know if I can accept that, Darian. I don't know why you were so hostile to begin with.~ + T1DarLT2why
  ++ ~Why should I trust you? You clearly don't trust me.~ + T1DarLT2trust
  ++ ~Nice try, but I think I already saw the real you, and no amount of fake apology will erase it.~ + T1DarLT2burn
END

IF ~~ T1DarLT2why
  SAY ~It isn't an easy thing for me to explain, especially to a <PRO_RACE>, and I don't know if I could give you any answer you would find truly satisfactory. Perhaps in the future, I'll be able to tell you, but for now, please accept my apology.~
  ++ ~I don't think I can trust you, Darian, but I will accept that.~ + T1DarLT2conc
  ++ ~But how can I trust someone who clearly doesn't trust me?~ + T1DarLT2trust
  ++ ~The apology was one thing, but this is ridiculous. I'm not going to let you buy time to make up a convincing story.~ + T1DarLT2burn
END

IF ~~ T1DarLT2trust
  SAY ~You can't. And I certainly wouldn't, in your position. But... it's all I can offer you.~
  ++ ~Then I accept. Some things just come in time.~ + T1DarLT2conc
  ++ ~I think I understand. And that's good enough for me.~ + T1DarLT2conc
  ++ ~I just don't know, Darian... but I'll accept that, for now.~ + T1DarLT2conc
  ++ ~Then I refuse.~ + T1DarLT2burn
END

IF ~~ T1DarLT2conc
  SAY ~...Thank you, <CHARNAME>.~
  IF ~~ EXIT
END


// Lovetalk 3.
CHAIN IF ~Global("T1DarLovetalk","GLOBAL",6)~ THEN T1DARJ T1DarLovetalk3
~<CHARNAME>, may I ask you something?~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~Stay away from <CHARNAME>, Darian. You have proven yourself incapable of speaking to anyone in a civil fashion, and I will not have you speak ill to her.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~My business with <CHARNAME> is none of yours.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~I'm looking out for her well-being, where you have never shown the slightest hint of concern for anyone else.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~Be that as it may, I do wish to speak with her.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~If she wishes to speak to you, I will respect her wish. But I'm keeping my eye on you.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3)~ THEN ~So be it. <CHARNAME>, I wish to speak with you.~
END
  ++ ~Of course. What's on your mind?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3inq
  ++ ~If this won't take up too much time, sure.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3inq
  ++ ~Sorry, this really isn't a good time.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT3sorr

APPEND T1DARJ
IF ~~ T1DarLT3sorr
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT3inq
  SAY ~Why did you help me?~
  ++ ~What do you mean by that?~ + T1DarLT3why
  ++ ~I'm not sure what you mean, Darian.~ + T1DarLT3why
  + ~CheckStatGT(Player1,15,WIS)~ + ~You're not really asking me just why I helped you, are you? You're asking why a <PRO_RACE> helped an Avariel.~ + T1DarLT3firwis
END

IF ~~ T1DarLT3why
  SAY ~Why would you help an Avariel? I wouldn't have imagined that any of your kind would risk harm to help one of my people.~
  ++ ~When I see someone who needs help, I give it, regardless of circumstances.~ + T1DarLT3good
  ++ ~Why would I not help you? Is the fact that you're an Avariel supposed to change anything?~ + T1DarLT3whynot
  ++ ~Any reason I shouldn't have?~ + T1DarLT3whynot
  ++ ~You're such an exotic, handsome man. Good enough reason for me.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT3flirt
  + ~Alignment(Player1,MASK_CHAOTIC)~ + ~No one should live in a cage, Darian. Not an orc, not an Avariel.~ + T1DarLT3chaos
END

IF ~~ T1DarLT3firwis
  SAY ~You're very perceptive. That was indeed what I meant. So, why did you help me?~
  ++ ~When I see someone who needs help, I give it, regardless of circumstances.~ + T1DarLT3good
  ++ ~Why would I not help you? Is the fact that you're an Avariel supposed to change anything?~ + T1DarLT3whynot
  ++ ~Any reason I shouldn't have?~ + T1DarLT3whynot
  ++ ~Because you're such an exotic, handsome man.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT3flirt
  ++ ~No one should live in a cage, Darian. Not an orc, not an Avariel.~ + T1DarLT3chaos
END

IF ~~ T1DarLT3flirt
  SAY ~Er... whatever your reasons, I think I may have misjudged you.~
  ++ ~Aw, are you blushing?~ + T1DarLT3conc
  ++ ~I probably shouldn't have said that. Why would you have judged me? You barely know me.~ + T1DarLT3conc
END

IF ~~ T1DarLT3good
  SAY ~That is a very noble sentiment, <CHARNAME>, and admittedly unexpected from one of your race. I think I may have misjudged you.~
  ++ ~Why would you have judged me at all when we have barely even met?~ + T1DarLT3conc
  ++ ~Unexpected? What made you think you knew my reasons?~ + T1DarLT3conc
  ++ ~You think you "misjudged" me? I think you have some explaining to do, elf.~ + T1DarLT3conc
  + ~CheckStatGT(Player1,15,WIS)~ + ~A noble sentiment? You mean you yourself do not help others, regardless of circumstances?~ + T1DarLT3secwis
END

IF ~~ T1DarLT3whynot
  SAY ~Well... yes.~
  ++ ~What is it supposed to change, then?~ + T1DarLT3conc
  ++ ~Why would the fact that you're an Avariel change anything?~ + T1DarLT3conc
  ++ ~Then enlighten me. Just what were you expecting me to do?~ + T1DarLT3conc
  + ~CheckStatGT(Player1,15,WIS)~ + ~I wasn't going to refuse to help just because your people think poorly of mine. I don't represent my entire race, you know.~ + T1DarLT3secwis
END

IF ~~ T1DarLT3chaos
  SAY ~That is an... interesting perspective. You're not what I expected, <CHARNAME>.~
  ++ ~Then what did you expect?~ + T1DarLT3conc
  ++ ~Why would you have "expected" anything of me?~ + T1DarLT3conc
  ++ ~You can't expect anything of a person you hardly know, Darian. Why did you expect something of me?~ + T1DarLT3conc
END

IF ~~ T1DarLT3conc
  SAY ~I know you probably mean well, but that is something I am not prepared to discuss with you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT3secwis
  SAY ~I... know. But I am not prepared to discuss it with you.~
  IF ~~ EXIT
END


// Lovetalk 4.
IF ~Global("T1DarLovetalk","GLOBAL",8)~ T1DarLovetalk4
  SAY ~<CHARNAME>... I think I'm ready to answer you. Answer you about why I acted like I did initially, and why I had so... judged you. It's not something I share lightly with an outsider, but you deserve an explanation.~
  ++ ~I'm glad you've finally come around, Darian. Please, talk.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ ~Indeed I do. Spit it out.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ ~And here I was just thinking you were never going to tell me. Go ahead.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT4talk
  ++ ~I already found an explanation. You needed time to build your story to persuade me you can be trusted. Too late. Your fabrications will get you nowhere.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT4burn
END

IF ~~ T1DarLT4talk
  SAY ~Thank you for hearing me out. Now... what do you know about my people, the Avariel, as you call us?~
  + ~CheckStatLT(Player1,16,INT)~ + ~Almost nothing. Even in the libraries of Candlekeep, there were never more than vague references to them. I did get the impression, though, that they were almost wiped out a long time ago.~ + T1DarLT4not
  + ~CheckStatGT(Player1,15,INT)~ + ~I remember an old tome in Candlekeep that talked about them. More than a thousand years ago, the Avariel boasted an advanced and populous civilization. But they came under attack by a massive onslaught of dragons, and were almost completely wiped out, and as it was, their civilization was utterly destroyed.~ + T1DarLT4know
END

IF ~~ T1DarLT4not
  SAY ~I'm not surprised. The humans of Faerun have always chosen to forget about that period of history. About two thousand years ago, which was less than half a dozen generations for us, the Avariel ruled one of Faerun's great empires, an empire that stretched from the edge of the desert to the Spine of the World. We were a proud people.~
  ++ ~But how is it possible for such an empire to fall so quickly and so completely that all evidence of it has disappeared?~ + T1DarLT4relic
  ++ ~But that civilization is gone. What happened to it?~ + T1DarLT4war
END

IF ~~ T1DarLT4know
  SAY ~I'm amazed humans would keep such records... that's correct, in the essentials. But there's more to it than that. About two thousand years ago, which was less than half a dozen generations for us, the Avariel ruled one of Faerun's great empires, an empire that stretched from the edge of the desert to the Spine of the World. We were a proud people.~
  ++ ~But how is it possible for such an empire to fall so quickly and so completely that all evidence of it has disappeared?~ + T1DarLT4relic
  ++ ~But that civilization is gone. What happened to it?~ + T1DarLT4war
END

IF ~~ T1DarLT4relic
  SAY ~It hasn't. Many ruins that lie scattered throughout the mountains of Faerun are, or were originally, ancient Avariel ruins. But those are among the only surviving relics of that period of history, aside from the surviving Avariel, of course.~
  ++ ~But what happened to the ancient Avariel?~ + T1DarLT4war
END

IF ~~ T1DarLT4war
  SAY ~In a word: humans. They had always been present in Faerun-possibly for longer than the Avariel. But they were relatively primitive, and hadn't even learned to use iron yet. Until that abruptly and irrevocably changed. None of the survivors knew exactly what happened, and we were never able to find any official record, but there was suddenly a massive human uprising. It spread fast, and the ancient Avariel were forced to action.~
  ++ ~How did an uprising of primitive humans destroy such a powerful empire?~ + T1DarLT4fall
  ++ ~As fascinating as this history lesson is, Darian, I would really appreciate it if you got to the point.~ + T1DarLT4chide
END

IF ~~ T1DarLT4chide
  SAY ~Sorry-I'm not the best at this kind of thing. But I am getting there, and the history is important to what I'm trying to tell you.~
  ++ ~Then please continue.~ + T1DarLT4fall
  ++ ~I knew I'd never get a straight answer out of you...~ + T1DarLT4fall
  ++ ~*Yawn*... better make it fast...~ + T1DarLT4fall
END

IF ~~ T1DarLT4fall
  SAY ~The humans were cruelly outmatched. They were a loosely organized band of primitives wielding bronze weapons against a powerful civilization that also wielded formidable magical abilities. The humans were slaughtered. But apparently, they had powers of their own, for the empire was then beset by a massive draconic assault, an attack they could not defend against. Ten years later, fewer than one in ten Avariel still lived, and their empire was erased from history. Those surviving Avariel regrouped high in the mountains, and began to slowly build anew.~
  + ~!Race(Player1,ELF)~ + ~So... all that remains of the Avariel today are the descendants of those who survived the fall of their civilization?~ + T1DarLT4remains
  + ~!Race(Player1,ELF)~ + ~Is that what's behind it? You hate humans because of something that happened two thousand years ago?~ + T1DarLT4hate
  + ~!Race(Player1,ELF)~ + ~That's all very interesting, Darian, but what's it got to do with me?~ + T1DarLT4exp
  + ~Race(Player1,ELF)~ + ~But... I'm elven. What does all this have to do with me?~ + T1DarLT4elf
END

IF ~~ T1DarLT4elf
  SAY ~When the ancient Avariel sought assistance from other elven races, they were spurned. Moon elves accepted the humans, the wood elves retreated to the depths of the forests, and the gold elves fled Faerun.~
  ++ ~So... all that remains of the Avariel today are the descendants of what happened two thousand years ago?~ + T1DarLT4remains
  ++ ~Is that it? You hate elves because of something that happened two thousand years ago?~ + T1DarLT4elfhate
  ++ ~That's all very interesting, Darian, but what's it got to do with me?~ + T1DarLT4elfexp
END

IF ~~ T1DarLT4remains
  SAY ~Yes. A small fraction of the ancient empire's population, hiding within a few scattered, rebuilt fortress-cities, are all that remains.~
  + ~!Race(Player1,ELF)~ + ~Is that the answer I was looking for? You hate humans for the destruction of your people?~ + T1DarLT4hate
  + ~!Race(Player1,ELF)~ + ~I'm deeply sorry for what happened to your people, but what does ancient history have to do with me?~ + T1DarLT4exp
  + ~Race(Player1,ELF)~ + ~Is that it? You hate elves for refusing to help your people during the fall of your civilization?~ + T1DarLT4elfhate
  + ~Race(Player1,ELF)~ + ~But what's all this have to do with me?~ + T1DarLT4elfexp
END

IF ~~ T1DarLT4hate
  SAY ~Hate? No, we do not hate humans for what they did so long ago. Actually, "fear" would be a better word. It is a fear that has driven us, that has guided us ever since. It is something that lives in all who still call themselves the Avariel.~
  ++ ~And... all that's left of your people are descendants of the survivors?~ + T1DarLT4remains
  ++ ~That's very interesting, but what's it have to do with me?~ + T1DarLT4exp
END

IF ~~ T1DarLT4exp
  SAY ~Everything. You are human, <CHARNAME>, just as I am Avariel. Ever since the fall, we have feared humans for what they can do. I was expecting you to attempt to kill me at any time since we first spoke in that run-down tavern. I was expecting to have to fight, and if necessary, kill you. But you are different. At every turn, you've defied my expectations, and worried me even more, because I did not, could not, know what you were planning. I don't know what you are, <CHARNAME>... but I don't think you're my enemy.~
  ++ ~I'm not your enemy, Darian, but I can be your friend.~ + T1DarLT4friend
  ++ ~I'm not sure if I understand you, Darian, but I'm willing to be your friend.~ + T1DarLT4friend
  ++ ~Sorry, Darian, but I just don't think I can believe you.~ + T1DarLT4sorry
END

IF ~~ T1DarLT4elfhate
  SAY ~Hate? No, we do not hate the other elves for their action, or rather, their inaction so long ago. But it did teach us one thing: if we were to survive, it would have to be on our own terms, independent of any other races, since not even our distant cousins could be trusted.~
  ++ ~And... all that's left of your people are descendants of the survivors?~ + T1DarLT4remains
  ++ ~That's very interesting, but what's it have to do with me?~ + T1DarLT4elfexp
END

IF ~~ T1DarLT4elfexp
  SAY ~Everything. You are elven, <CHARNAME>, just as I am Avariel. Ever since we first spoke in that run down tavern in Athkatla, I was expecting you to flee, to betray us at the worst moment. I was expecting you to be concerned wholly with your own survival. But you are different. You defied those expectations at every turn, which only worried me more, since I did not, could not, predict your actions. I don't know what you are, <CHARNAME>, but I don't think you're my enemy.~
  ++ ~I'm not. And I can be your friend.~ + T1DarLT4friend
  ++ ~I still don't understand you, but I'm willing to befriend you.~ + T1DarLT4friend
  ++ ~Your words ring false. I don't believe you.~ + T1DarLT4sorry
END

IF ~~ T1DarLT4sorry
  SAY ~I understand your skepticism, but I don't know what else to say, beyond that you wanted to know my reasons, and I told you.~
  ++ ~Well, I don't know why, but I think I'm willing to be your friend.~ + T1DarLT4friend
  ++ ~And I still don't believe you.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT4burn
END

IF ~~ T1DarLT4burn
  SAY ~Then I have nothing more to say to you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT4friend
  SAY ~Friend? You're offering me your friendship? But you're a <PRO_RACE>... I don't understand.~
  ++ ~Not everything is so complicated as you imagine, Darian. I simply want to be your friend.~ + T1DarLT4conc
  ++ ~Do you really need to understand? The concept of befriending a non-Avariel is not as complex as you think.~ + T1DarLT4conc
  ++ ~The delicious irony of that comment aside, I really do want to be your friend.~ + T1DarLT4conc
END

IF ~~ T1DarLT4conc
  SAY ~But you are a <PRO_RACE>. You've given me some things to think about, but don't think for a moment my guard is down.~
  IF ~~ EXIT
END


// Lovetalk 5.
IF ~Global("T1DarLovetalk","GLOBAL",10)~ T1DarLovetalk5
  SAY ~<CHARNAME>, is this a good time to talk to you again?~
  + ~OR(3) Class(Player1,FIGHTER) Kit(Player1,BARBARIAN) Class(Player1,MONK)~ + ~Of course. What's on your mind?~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",11) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5fighter
  + ~Class(Player1,RANGER)~ + ~Sure thing.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5ranger
  + ~Class(Player1,PALADIN)~ + ~Of course. What's on your mind?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5pally
  + ~Class(Player1,DRUID)~ + ~What's wrong~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5druid
  + ~Class(Player1,CLERIC)~ + ~Is something troubling you?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5cleric
  + ~Class(Player1,THIEF)~ + ~If you want to talk, I'm listening.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5thief
  + ~Class(Player1,BARD)~ + ~Of course. What's on your mind?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5bard
  + ~OR(2) Class(Player1,MAGE) Class(Player1,SORCERER)~ + ~Gladly.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5mage
  ++ ~Not really. Can this wait?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT5wait
END

IF ~~ T1DarLT5wait
  SAY ~If you insist.~
  IF ~~ EXIT
END

IF ~~ T1DarLT5fighter
  SAY ~You're an excellent fighter, easily the equal of any but the greatest warriors of Myrrhavin. What made you pursue the warrior's path?~
  ++ ~Fighting has always come naturally to me. Many of the people in Candlekeep thought it very unusual that a young girl would take such an active interest in weapons and warfare, but it was simply what I enjoyed and did best at.~ + T1DarLT5fightlearn
  ++ ~I'm a pretty straightforward person. I don't like sneaking around or relying on fancy tricks or spells - I simply like to go for my goal.~ + T1DarLT5fightlearn
  ++ ~I enjoy the thrill of the fight. Others can talk about the joys of outwitting another, or of destroying someone with a spell, but for me, there is no greater pleasure than matching my strength and skill against that of another in combat.~ + T1DarLT5fightlearn
END

IF ~~ T1DarLT5fightlearn
  SAY ~I should have guessed as much - I've managed to learn a thing or two from watching you fight.~
  ++ ~I take it that means you've stopped holding yourself apart from others?~ + T1DarLT5conc
  ++ ~I'm glad you're willing to admit you can learn from others, Darian.~ + T1DarLT5conc
  ++ ~Are you sure that's all you've been watching me do?~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
  ++ ~Nice to know I have a friendly neighborhood Avariel stalker.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5pally
  SAY ~You hold yourself to unusually high standards of honor and virtue, <CHARNAME>-much higher than most. Why do you follow such standards?~
  ++ ~Because the more people hold themselves to honor and virtue, the better the Realms as a whole become.~ + T1DarLT5pallylearn
  ++ ~I seek to be a force of hope to the righteous, and of fear to the wicked.~ + T1DarLT5pallylearn
  ++ ~It is my belief that wherever I go in life, the world should be a better place for my passing.~ + T1DarLT5pallylearn
END

IF ~~ T1DarLT5pallylearn
  SAY ~That is truly noble. I've learned from your earnest, forthright dedication to good.~
  ++ ~Do you no longer hold me unworthy of respect, then?~ + T1DarLT5conc
  ++ ~Did you learn how to learn from others?~ + T1DarLT5conc
  ++ ~I'm glad to see you change, Darian.~ + T1DarLT5conc
END

IF ~~ T1DarLT5ranger
  SAY ~You are more at home in the wild than the city, and respect and live alongside nature, <CHARNAME>. What made you seek to wander the wilderness?~
  ++ ~Cities always make me feel claustrophobic, to be honest. I prefer the unbound, untamed wilderness where I have plenty of elbow room.~ + T1DarLT5rangerlearn
  ++ ~I yearn to explore, to eke out my destiny in the wilderness beyond what we know, what most people are comfortable in.~ + T1DarLT5rangerlearn
  ++ ~I don't know, really, But the wild and the unknown call to me, and it is a call I cannot turn away from.~ + T1DarLT5rangerlearn
END

IF ~~ T1DarLT5rangerlearn
  SAY ~That's an interesting perspective, <CHARNAME>, and one I think I've learned from.~
  ++ ~You'd be surprised what you can learn from, Darian... and whom.~ + T1DarLT5conc
  ++ ~I'm happy for you, that you admit you can learn from others.~ + T1DarLT5conc
  ++ ~We all heed our callings in life, Darian, and I think I know one calling you're a little slow to heed.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5thief
  SAY ~You have a rather... unique array of skills, <CHARNAME>, and are very light on your feet. Where did you acquire your fascination with stealth and legerdemain?~
  ++ ~Oh, here and there, from no one who would willingly admit it.~ + T1DarLT5thieflearn
  ++ ~I've always been sneaky - I got into lots of trouble growing up, when various books and inkbottles all over Candlekeep displayed an unusual tendency to vanish and reappear elsewhere.~ + T1DarLT5thieflearn
  ++ ~Candlekeep was always a rather dull place. I did my best to change that. (Grin)~ + T1DarLT5thieflearn
END

IF ~~ T1DarLT5thieflearn
  SAY ~I can't say I entirely approve, but I have learned a few things from your more... unorthodox approaches to situations.~
  ++ ~So you've finally gotten off your high horse and down in the mud with us, eh?~ + T1DarLT5conc
  ++ ~Heh. Good to see you're capable of learning even from me.~ + T1DarLT5conc
  ++ ~Why do I get the feeling I'm not the only one with a fascination with stealth? (Smirk)~ DO~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~+ T1DarLT5emb
  ++ ~Stick with me, and I'll show you just how fun "unorthodox" can be.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5bard
  SAY ~You have a most poetic soul, <CHARNAME> and great affinity for music. Where did you learn such skill?~
  ++ ~From my own heart, of course!~ + T1DarLT5bardlearn
  ++ ~No one taught me. My music springs from within.~ + T1DarLT5bardlearn
  ++ ~Music is a gift that can't be taught, Darian. It's a natural talent that fills you and lightens the world.~ + T1DarLT5bardlearn
END

IF ~~ T1DarLT5bardlearn
  SAY ~A month ago, I'd have dismissed that as errant nonsense. But I've spent enough time around you that now, I'm not so sure.~
  ++ ~You see, you can indeed learn from others.~ + T1DarLT5conc
  ++ ~Maybe it just took the right ballad to make you realize you can learn from others.~ + T1DarLT5conc
  ++ ~Why, you almost say that as though you enjoy spending time around me!~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
  ++ ~It really is rather sweet that you enjoy listening to my music so much.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5cleric
  SAY ~You display great dedication and piety to your god, <CHARNAME>. While such faith is the norm for an Avariel, what led you to take such a spiritual path?~
  ++ ~My god called, and I answered.~ + T1DarLT5clericlearn
  ++ ~I find peace in the teachings of my god, a peace hard to find otherwise.~ + T1DarLT5clericlearn
  ++ ~I once wondered if the Realms were really all there was to existence, if there was nothing more. I found I was wrong.~ + T1DarLT5clericlearn
END

IF ~~ T1DarLT5clericlearn
  SAY ~The depth of your devotion is truly remarkable - I've learned that as devoted to Aerdrie Faeyna as I am, there are depths greater still.~
  ++ ~Glad to hear you're willing to learn now.~ + T1DarLT5conc
  ++ ~The gods may be the source of all wisdom, but their servants can pass on some of that wisdom to others.~ + T1DarLT5conc
  ++ ~If you wish, I can show you what faith means in my personal life.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5druid
  SAY ~You are driven to uphold the balance of powers, of the forces in the world, all in the name of nature. May I ask why?~
  ++ ~Your concepts of good and evil, law and chaos, are limited - they are all powerful, but are themselves but aspects of the greater balance. I answer a higher calling, that of the balance and of nature itself.~ + T1DarLT5druidlearn
  ++ ~A storm rages within myself, between the natural and the unnatural, the mortal and the divine. In serving nature, I seek to calm the storm, and bring balance to myself.~ + T1DarLT5druidlearn
  ++ ~Society, civilization, gods - they are all but passing things, ephemeral and meaningless. Nature is all that was and will be.~ + T1DarLT5druidlearn
END

IF ~~ T1DarLT5druidlearn
  SAY ~That is a most interesting way to think - you've opened my eyes to a few things, that's for certain.~
  ++ ~Ah, so you are beginning to understand the balance, learning from all sources, even those you do not trust.~ + T1DarLT5conc
  ++ ~We all exist at nature's sufferance, Darian. Learning from her servants is but the first step towards wisdom.~ + T1DarLT5conc
  ++ ~Your life must exist in balance - that which is unbalanced cannot stand.~ + T1DarLT5conc
  ++ ~We are all drawn to the balance, and I think the draw you heed is stronger than most.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5mage
  SAY ~You display great command of the arcane, <CHARNAME> - far greater than any I have seen yet. Where did you learn such magical ability?~
  ++ ~My foster father taught me a great deal. He was a mage of great power, and I suppose I just followed in his footsteps.~ + T1DarLT5magelearn
  ++ ~I've always had some degree of magical power, to the extent that the monks of Candlekeep were half-convinced I had extraplanar heritage.~ + T1DarLT5magelearn
  ++ ~I don't know, to be honest. It just sort of comes to me, and I bend it to my will.~ + T1DarLT5magelearn
  ++ ~I never really learned it, per se. For me, it is purely instinctive, a matter of my gut and my heart.~ + T1DarLT5magelearn
END

IF ~~ T1DarLT5magelearn
  SAY ~I have no ability to use the arcane myself, but if I remain near you much longer, I'll learn more than I could have imagined about how magic works.~
  ++ ~Even if it's unwillingly, it's good to know you've decided you can learn from others.~ + T1DarLT5conc
  ++ ~If you're willing to learn from others now, I'll be happy to teach you all I know.~ + T1DarLT5conc
  ++ ~And to think I was just about to cast a charm spell to make you admit that.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5emb
END

IF ~~ T1DarLT5emb
  SAY ~I do admit I can learn from you, <CHARNAME>, but don't think I've dropped my guard around you - I know you're up to something.~
  ++ ~Awww. You're so cute when you're embarassed.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ ~Now, now. It's perfectly okay to admit you have feelings.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ ~Then why are you blushing?~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ ~Your voice says one thing, but your body says another.~ + T1DarLT5turn
  ++ ~You really are just a big winged teddy bear, aren't you?~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT5turn
  ++ ~If you're not comfortable with your own feelings, that's okay - I'm here to help.~ + T1DarLT5turn
END

IF ~~ T1DarLT5turn
  SAY ~(Darian abruptly turns around and walks away from you)~
  IF ~~ EXIT
END

IF ~~ T1DarLT5conc
  SAY ~I see. But don't think I'm letting my guard down just because I've admitted I can learn from you. You're all the more dangerous now.~
  IF ~~ EXIT
END
END


// Lovetalk 6.
CHAIN IF ~Global("T1DarLovetalk","GLOBAL",12)~ THEN T1DARJ T1DarLovetalk6
~<CHARNAME>, I've come to a conclusion I think you should know about.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~For <CHARNAME>'s sake, Darian, stay away from her.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~This is between <CHARNAME> and I, Anomen. For her sake, stay out of this.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~I can see the way you look at her, Darian, even if you hide it from everyone else.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~If I thought you had some idea what you were talking about, I might have an intelligent response.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~You know full well what I speak of.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) Global("AnomenRomanceActive","GLOBAL",1)~ THEN ~I cannot know about that which does not exist. However, <CHARNAME>, there is something I know about that I feel I should inform you of.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~What conclusion would this be?~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~Nothing that affects you~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~If it affects <CHARNAME>, it affects me. You know this.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~I do. But my words are for <CHARNAME> alone. If you wish to speak with her afterwards, she will tell you whatever she wishes.~
== BANOMEN IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~As you wish, Darian.~
== T1DARJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID) !Global("AnomenRomanceActive","GLOBAL",3) Global("AnomenIsKnight","GLOBAL",1)~ THEN ~Thank you. <CHARNAME>, there is something you should know about.~
END
  ++ ~Oh? What about?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ ~I'm always happy to talk.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ ~What do you want?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6talk
  ++ ~Sorry, but you can take that pompous tone elsewhere.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ EXTERN T1DARJ T1DarLT6tone

APPEND T1DARJ
IF ~~ T1DarLT6tone
  SAY ~If that is your wish, I will respect it.~
  ++ ~Oh, nevermind. Let's hear it.~ + T1DarLT6talk
  ++ ~Yes, I think things have gone far enough.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT6burn
END

IF ~~ T1DarLT6burn
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT6talk
  SAY ~I haven't been at my best the last few times we've talked, <CHARNAME>. Every time I think I can predict you, you prove me wrong. You are like no one and no thing I have ever encountered.~
  ++ ~Ironically, Darian, you in turn are like nothing I've ever encountered, either.~ + T1DarLT6sym
  ++ ~Heh. I may just do a better job of hiding it, but you actually tend to put me off guard as well.~ + T1DarLT6sym
  ++ ~Darian, everyone has their quirks that make them hard to understand. You have plenty of your own.~ + T1DarLT6sym
END

IF ~~ T1DarLT6sym
  SAY ~I suppose there's an ironic symmetry there. Hmmm... once all this is done and over with, I think I'll need to present my report to the rest of the Talons personally -  you and your kind are far more complicated than we imagine.~
  ++ ~Come again? You've been keeping a report on me?~ + T1DarLT6report
  ++ ~So you've been monitoring me and keeping a record of my behavior all this time?~ + T1DarLT6report
  ++ ~If I knew you'd be taking your time in this party to spy on me and carefully write it all down for evaluation, I'd never have accepted your offer to help.~ + T1DarLT6spy
END

IF ~~ T1DarLT6report
  SAY ~Correct. Based on your actions, I don't think you have harmful intentions towards myself or Myrrhavin, but things I cannot understand tend to be very dangerous, and I cannot understand you.~
  ++ ~Darian, I'm not a danger. You have to trust me.~ + T1DarLT6trust
  ++ ~You'll never understand anyone if you refuse to acknowledge the concept of trusting someone, Darian.~ + T1DarLT6trust
  ++ ~Then why are you still here? You've made it perfectly clear that you don't trust me and consider me a danger.~ + T1DarLT6trust
END

IF ~~ T1DarLT6spy
  SAY ~You should have known that I monitor all potential threats, <CHARNAME>. Even though I'm reasonably certain you don't intend harm to myself or Myrrhavin, from the way you've acted, I don't understand you, and that makes you all the more dangerous.~
  ++ ~Darian, it's impossible to ever truly understand someone. I'm not a threat to you.~ + T1DarLT6trust
  ++ ~The unknown isn't always dangerous, Darian. If you would only trust me, you'd know that by now.~ + T1DarLT6trust
  ++ ~If I'm so dangerous, then why are you still here?~ + T1DarLT6why
END

IF ~~ T1DarLT6trust
  SAY ~Trust you? Trust a woman whose goals are incomprehensible to me, and who attracts more trouble than an orcish horde marching on the Dales?~
  ++ ~Yes, Darian, trust me. Do you really think I'm such a danger to you?~ + T1DarLT6danger
  ++ ~By the gods, Darian, I'm trying to be your friend!~ + T1DarLT6friend
  ++ ~Then why in the hells are you still here?!~ + T1DarLT6why
END

IF ~~ T1DarLT6friend
  SAY ~Friend? We have had this conversation before, <CHARNAME>. I am willing to work with you, fight alongside you if need be, but that is the extent of our relationship.~
  ++ ~Am I really so dangerous in your mind that you cannot even tolerate the idea of being friends with a non-Avariel?~ + T1DarLT6danger
  ++ ~Sometimes I wonder why you're still here, from the way you act.~ + T1DarLT6why
  ++ ~You may do an excellent job of lying to yourself, but I know you're just trying to avoid the real issue here.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT6issue
END

IF ~~ T1DarLT6why
  SAY ~Because I told you I would help rescue your friend, even when it means helping such an infuriatingly incomprehensible woman as you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT6danger
  SAY ~Yes, you are. But even so, I told you I would help rescue your friend. And I follow my duty, even when it means helping a woman as exasperating as you are.~
  IF ~~ EXIT
END

IF ~~ T1DarLT6issue
  SAY ~There is no "real issue" here! Oh, Aerdrie Faeyna, grant me patience enough to deal with this woman...~
  IF ~~ EXIT
END


// Lovetalk 7.
IF ~Global("T1DarLovetalk","GLOBAL",14)~ T1DarLovetalk7
  SAY ~What's wrong, <CHARNAME>?~
  ++ ~There you go again... asking me a question without providing the subtext that always seems to accompany your questions.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT7question
  ++ ~What do you mean "what's wrong"? There are a great many things that are wrong.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT7question
  ++ ~If this is another of your probing questions, I don't need to hear it.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7burn
  SAY ~Then we are done talking.~
  IF ~~ EXIT
END

IF ~~ T1DarLT7question
  SAY ~Since you already know I monitor your behavior, I see no need to hide the fact that there is clearly something that's bothering you a great deal, and if it endangers the party, I should probably know about it.~
  ++ ~And just what behavior have you seen that makes you think I'm hiding a problem?~ + T1DarLT7behav
  ++ ~I'm hiding nothing, Darian - which is far more than you can say.~ + T1DarLT7hide
END

IF ~~ T1DarLT7behav
  SAY ~Sleep comes slowly and uneasily for you, and even when it does, you are clearly gripped by nightmares, rolling around and muttering things.~
  ++ ~You've been watching me sleep?!~ + T1DarLT7sleep
  ++ ~You'd better have a damn good excuse for this, Darian...~ + T1DarLT7sleep
  ++ ~I've been tolerating your behavior thus far, but watching me sleep goes over the line.~ + T1DarLT7sleep
END

IF ~~ T1DarLT7sleep
  SAY ~I will not apologize. I keep watch on everyone - especially you. And you are frequently gripped by what seem to be intense nightmares, far beyond the normal standard. Is there a problem I should be aware of?~
  ++ ~Yes, there is. Next time, just come out and say it.~ + T1DarLT7talk
  ++ ~Aside from you having such a hard time admitting your concern about me is more than just professional?~ + T1DarLT7perc
  ++ ~There is. If you care about me, stop hiding behind the pretense of duty and mission.~ + T1DarLT7perc
END

IF ~~ T1DarLT7hide
  SAY ~Your sleeping behavior indicates otherwise. When I enter the reverie, I'm not completely oblivious to the world, and I know you spend most nights in the depths of nightmares, constantly muttering. Something is wrong, and you're trying to hide it.~
  ++ ~Well, I suppose it's no use denying it... you are rather perceptive when it comes to people, yourself excluded.~ + T1DarLT7perc
  ++ ~Is it honestly so hard to admit you're concerned about me?~ + T1DarLT7perc
  ++ ~Yes, something is wrong. You could have just asked, instead of skirting around the issue like you always do.~ + T1DarLT7talk
END

IF ~~ T1DarLT7talk
  SAY ~Then what is wrong?~
  ++ ~That a man I've been traveling with has such a hard time admitting he's concerned about me.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7perc
  ++ ~That you have no idea what your own heart says.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7perc
  ++ ~That I've given you every chance in the book to open up, but you are still too proud to do so.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7perc
  SAY ~I... I don't know what you're talking about, <CHARNAME>.~
  ++ ~Oh, yes you do. You're simply too scared of lowering your guard in front of me to admit it. You'd find you understand me better than you think, if only you'd listen to your own damn feelings.~ + T1DarLT7feel
  ++ ~As much as you like to fool yourself, you can't fool me so easily. I know your behavior as well as you know mine, and you know perfectly well why I keep throwing you off guard.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7guard
  ++ ~Of course you don't! And you never will.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7feel
  SAY ~My feelings have nothing to do with this!~
  ++ ~My, my. You're awfully touchy.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7touchy
  ++ ~If they don't, then explain why every time we talk, you relax just enough around me to be scared.~ + T1DarLT7relax
  ++ ~Fine by me! Go hide behind your precious duty and culture, like you always do!~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT7burn
END

IF ~~ T1DarLT7touchy
  SAY ~You! You... I am sorry. I simply don't know what else to say.~
  ++ ~I am sorry, too. This clearly isn't something you're ready to talk about.~ + T1DarLT7conc
  ++ ~As much fun as it is to see you flat-footed, I apologize for pushing you over the edge like that.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7conc
  ++ ~(Smirk) I do seem to have that effect on you. But... perhaps I was out of line as well. This isn't an easy thing for you.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT7conc
END

IF ~~ T1DarLT7relax
  SAY ~Because!... Because... I... I don't know.~
  ++ ~Perhaps you will, in time.~ + T1DarLT7conc
  ++ ~When you do, I'm always here to talk to you.~ + T1DarLT7conc
  ++ ~And that's the first step towards learning.~ + T1DarLT7conc
END

IF ~~ T1DarLT7guard
  SAY ~(Pauses for a long moment) That is not something I am ready to discuss.~
  ++ ~Whenever you are, I'll be here.~ + T1DarLT7conc
  ++ ~You don't always need to keep your guard up. Whether you like it or not, I *am* your friend.~ + T1DarLT7conc
  ++ ~I have a... feeling... it will come in time.~ + T1DarLT7conc
END

IF ~~ T1DarLT7conc
  SAY ~(Darian slowly turns away, his expression troubled)~
  IF ~~ EXIT
END


// Lovetalk 8.
IF ~Global("T1DarLovetalk","GLOBAL",16)~ T1DarLovetalk8
  SAY ~<CHARNAME>, there is something about you that concerns me.~
  ++ ~So you're finally admitting you're concerned about me? You're getting there, Darian.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8cern
  ++ ~Oh, I can't wait to hear this...~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8ask
  ++ ~This is getting downright rich. You call me incomprehensible when prying information out of you is like pulling teeth...~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT8rich
  ++ ~Your precious "concern" can burn in the Abyss, Darian! Gods, it's no wonder you're such a loner!~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT8burn
END

IF ~~ T1DarLT8burn
  SAY ~Bold words from one such as you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT8cern
  SAY ~I'm not concerned about you as a person, but when we talk to people, I keep hearing about how you stopped a war further north, on the Sword Coast. Is this true?~
  ++ ~Yes, Darian, I did stop a war. But it is much more complicated than it sounds.~ + T1DarLT8exp
  ++ ~My deeds have probably been greatly exaggerated, and there's much more to the story than whatever you've heard, but I did stop a war, yes.~ + T1DarLT8exp
  ++ ~Why do you care about what I may or may not have done up north?~ + T1DarLT8care
END

IF ~~ T1DarLT8ask
  SAY ~When we talk to people, I keep hearing about how you stopped a war on the Sword Coast. Is this true?~
  ++ ~It's a long story, but ultimately, yes.~ + T1DarLT8exp
  ++ ~I don't know what you've heard, exactly, but I did indeed stop a war.~ + T1DarLT8exp
  ++ ~Why do my past actions concern you?~ + T1DarLT8care
END

IF ~~ T1DarLT8rich
  SAY ~You are entitled to your feelings. Irregardless, when we talk to people, I constantly hear tales about how you stopped a war to the north. Is this true?~
  ++ ~The tales don't tell the half of it. Ultimately, though, I did stop a war.~ + T1DarLT8exp
  ++ ~Why are you so interested in what I did prior to arriving in Amn?~ + T1DarLT8care
END

IF ~~ T1DarLT8care
  SAY ~I'm still trying to understand you. I can evaluate your actions here, but I've heard some fairly tall tales of what happened on the Sword Coast.~
  ++ ~Why are you trying so hard to understand me? You certainly don't devote this much effort to understanding anyone else we've met?~ + T1DarLT8under
  ++ ~If you keep this up, I'll start to think you're trying to do more than just understand a threat.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT8threat
  ++ ~If it'll get you off my back, I did stop a war, yes.~ + T1DarLT8exp
END

IF ~~ T1DarLT8under
  SAY ~No one else is as infuriatingly difficult to understand as you are. Your actions speak well enough for you, but your motives make little sense.~
  ++ ~Sigh... talking to you is like smashing my head into a stone wall. The squishy sound is starting to bore me, so the answer is yes: I did stop a war on the Sword Coast.~ + T1DarLT8exp
  ++ ~As much fun as talking to you can be, I think I'd better answer your original question before I embarass you again. The tales you've heard don't cover the half of it, but I did stop a war up north.~ + T1DarLT8exp
END

IF ~~ T1DarLT8threat
  SAY ~Oh, by the light of Aerdrie Faeyna...~
  ++ ~(Smirk) I think I'd better answer your original question before you get too embarassed to talk. I did stop a war on the Sword Coast.~ + T1DarLT8exp
END

IF ~~ T1DarLT8exp
  SAY ~So... how did you end up stopping a war?~
  ++ ~A man named Sarevok wanted to start a war between Baldur's Gate and Amn. One that would elevate him to godhood by virtue of the slaughter.~ + T1DarLT8sar
END

IF ~~ T1DarLT8sar
  SAY ~That makes no sense... how could starting a war elevate him to godhood? Humans are a warlike race, and they certainly don't become gods frequently.~
  ++ ~Sarevok was no ordinary human. He was a the son of a god-a bastard child of Bhaal.~ + T1DarLT8bhaal
END

IF ~~ T1DarLT8bhaal
  SAY ~Bhaal?~
  ++ ~The god of murder, killed during the Time of Troubles. But somehow, he had learned that he would be destroyed during the Godswar, and seeded countless mortal women with his progeny. Sarevok was one such child.~ + T1DarLT8progeny
END

IF ~~ T1DarLT8progeny
  SAY ~That humans would even have a god of murder frightens me... the Menel'Quessir know little of the Time of Troubles - it largely passed us by, and it affected us little.~
  ++ ~All the human gods - maybe the elven ones, too, I don't know - were cast down into the world as mortal beings by Ao, save Helm. Some died, and some new gods arose - Bhaal fell, and Cyric took his portfolio. Sarevok learned of his heritage, and attempted to cause such a slaughter that he would be elevated to his father's former place.~ + T1DarLT8stop
END

IF ~~ T1DarLT8stop
  SAY ~And so you decided to stop him. That you would willingly face a being born of divine blood, especially the blood of such a malevolent deity, is... beyond words.~
  ++ ~Darian, my situation... was not as simple as you think.~ + T1DarLT8think
  ++ ~There's much more to the story than that - it's much more complicated.~ + T1DarLT8comp
  ++ ~That isn't the entire story. There are... complications... I didn't tell you.~ + T1DarLT8tell
END

IF ~~ T1DarLT8think
  SAY ~Such things never are. I need time to think about this.~
  IF ~~ EXIT
END

IF ~~ T1DarLT8comp
  SAY ~I would have been surprised if it was not. But for now, I have to think about this.~
  IF ~~ EXIT
END

IF ~~ T1DarLT8tell
  SAY ~They can wait. I have to think about what you've told me.~
  IF ~~ EXIT
END


// Lovetalk 9.
IF ~Global("T1DarLovetalk","GLOBAL",18)~ T1DarLovetalk9
  SAY ~<CHARNAME>, I wish to apologize for ending our last conversation so abruptly. I was thinking about what you said, and I have to ask you something.~
  ++ ~I have a feeling I know what you're about to ask...~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
  ++ ~I suppose I couldn't expect you to stay blind forever.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
  ++ ~I knew this conversation was inevitable - let's get it over with.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT9ask
END

IF ~~ T1DarLT9ask
  SAY ~There are others, aren't there? Other children of Bhaal.~
  ++ ~Yes, but no one knows how many.~ + T1DarLT9children
  ++ ~The prophecies spoke of a great many, in fact.~ + T1DarLT9children
  ++ ~I believe so, yes.~ + T1DarLT9children
END

IF ~~ T1DarLT9children
  SAY ~As alarming as that is... there's more to it than that, isn't there?~
  ++ ~Yes, Darian... I am one of the children.~ + T1DarLT9bhaal
  ++ ~Sarevok is... was... my half-brother.~ + T1DarLT9bhaal
  ++ ~I don't think I'm ready to talk about this, Darian.~ + T1DarLT9cern
  ++ ~There is, but it does not concern you.~ + T1DarLT9cern
  ++ ~It's none of your business.~ + T1DarLT9cern
END

IF ~~ T1DarLT9cern
  SAY ~I can certainly understand that, but... there's something you aren't telling me. Something very important. I have my suspicion, and pray to Aerdrie Faeyna that I'm wrong, but would prefer not to have to ask you directly.~
  ++ ~You're too perceptive for your own good, Darian. Yes, I am one of the children.~ + T1DarLT9bhaal
  ++ ~You really do make keeping something a secret a bit of a pain. Bhaal was indeed my father.~ + T1DarLT9bhaal
  ++ ~And just what exactly do you suspect?~ + T1DarLT9suspect
  ++ ~You're really starting to become a winged pain in the arse...~ + T1DarLT9suspect
END

IF ~~ T1DarLT9suspect
  SAY ~Then... are you yourself a child of Bhaal?~
  ++ ~Yes, I... yes, I am.~ + T1DarLT9bhaal
  ++ ~Honestly, I think I'm going to smack you into a wall one of these days, but in this case, you're right.~ + T1DarLT9bhaal
  ++ ~You are really starting to scare me... and you are also correct.~ + T1DarLT9bhaal
END

IF ~~ T1DarLT9bhaal
  SAY ~Then... I don't understand. You're a bastard daughter of the human god of murder, but you yourself are not evil. This Sarevok was someone I would have gladly given my life to destroy, but you in turn are someone I am proud to fight alongside.~
  ++ ~I don't let my blood control me, Darian. I choose who I want to be, and I despise the evil that overcame Sarevok.~ + T1DarLT9blood
  ++ ~I may have been born with the blood of Bhaal in my veins, but that is not who I am.~ + T1DarLT9blood
  ++ ~I fight for justice, no matter what flows in my body.~ + T1DarLT9blood
  ++ ~I control my blood - it does not control me.~ + T1DarLT9blood
END

IF ~~ T1DarLT9blood
  SAY ~I can see the truth of your words in your every action, <CHARNAME>. Perhaps... perhaps the simple question of what one is born is not all there truly is to a person. Perhaps it is what one does with what they are born that decides a person's nature, and their fate. You've... you've given me a lot to think about.~
  IF ~~ EXIT
END


// Lovetalk 10.
IF ~Global("T1DarLovetalk","GLOBAL",20)~ T1DarLovetalk10
  SAY ~<CHARNAME>, if you don't mind, I'd like to speak with you about some of the things we talked about last time.~
  ++ ~Of course. I always have time for you.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT10speak
  ++ ~As you wish.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT10speak
  ++ ~You know my burden, Darian. We will never speak of it again.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT10burn
END

IF ~~ T1DarLT10burn
  SAY ~As... as you wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT10speak
  SAY ~With the blood of Bhaal coursing through your veins... how do you maintain your sanity? I don't understand how you remain an honorable woman when you have every excuse to be an evil monster.~
  ++ ~It is a struggle. I always try to do what's right, but my blood rebels against every good choice, ever life I do not take.~ + T1DarLT10struggle
  ++ ~My blood holds no power over me. I am not evil, and I never will be, no matter who my so-called father was.~ + T1DarLT10power
  ++ ~Quite frankly, I don't know. It is a terrible battle I fight every waking moment, a battle to remain in control of myself, and a battle to not give in to my blood.~ + T1DarLT10battle
  ++ ~My blood, and the evil in it, has taken too much from me. I refuse to give in to it.~ + T1DarLT10refuse
END

IF ~~ T1DarLT10struggle
  SAY ~That must be a struggle indeed. Merely overcoming your more base human instincts must be difficult enough.~
  ++ ~But it is a struggle I refuse to give up. The Realms need me.~ + T1DarLT10conc
  ++ ~Difficult, yes, but it is a fight I cannot afford to lose.~ + T1DarLT10conc
  ++ ~I fight gladly. I will not allow my blood to be loosed upon the Realms.~ + T1DarLT10conc
  + ~CheckStatGT(Player1,15,WIS)~ + ~Just as you struggle against your instincts. We all fight against ourselves, Darian.~ + T1DarLT10insight
END

IF ~~ T1DarLT10battle
  SAY ~Then I will pray to Aerdrie Faeyna that she grant you the strength to win your terrible, personal battle.~
  IF ~~ EXIT
END

IF ~~ T1DarLT10conc
  SAY ~Yes indeed, from what I've seen of you. Pray to whatever god you worship for strength, <CHARNAME>-it seems you will need it.~
  IF ~~ EXIT
END

IF ~~ T1DarLT10power
  SAY ~Then you have a will of meteoric steel. To be able to so easily push aside your blood, your instincts...~
  ++ ~I will not let my blood take control of me, and that's the end of it.~ + T1DarLT10conc
  ++ ~We are what we choose to be, not what our blood would have us be.~ + T1DarLT10insight
  ++ ~I do not wish to become what my blood demands, therefore I am not.~ + T1DarLT10insight
END

IF ~~ T1DarLT10refuse
  SAY ~Such a bloodcurse must take a heavy toll, that is certain. I am glad you have not given in.~
  ++ ~My blood has cost me much. It will not have me.~ + T1DarLT10conc
  ++ ~And I am glad as well. For the sake of everyone around me, I cannot give in.~ + T1DarLT10conc
  ++ ~To give in is unthinkable. It has cost me too much.~ + T1DarLT10conc
END

IF ~~ T1DarLT10insight
  SAY ~A most intriguing insight. Once again, you've given me much to think about.~
  IF ~~ EXIT
END


// Lovetalk 11.
IF ~Global("T1DarLovetalk","GLOBAL",22)~ T1DarLovetalk11
  SAY ~Who is this "Imoen" you're trying to rescue? She must be very important you to to warrant such an effort to save.~
  ++ ~Imoen's a very dear friend of mine, from Candlekeep.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
  ++ ~I've known Imoen forever - she's practically my little sister.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
  ++ ~She's a bit of a brat, but she's an old friend nevertheless.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT11friend
END

IF ~~ T1DarLT11friend
  SAY ~Ah, that explains much. But I am very surprised a <PRO_RACE> would go to such lengths to rescue one of their own.~
  ++ ~Darian, my kind are not like you think they are. Judge others based on their actions, not thousand-year-old cultural prejudices.~ + T1DarLT11prejudice
  ++ ~Are you still so blinded by your cultural legacy that refuse to see that my kind are not what they think they are?~ + T1DarLT11prejudice
  ++ ~And here we go again... I'll put this in simple terms. My. Race. Is. Not. Evil.~ + T1DarLT11wrong
  ++ ~Oh, I am sick and tired of that holier-than-thou complex of yours, Darian! Even now, you refuse to accept that my race is capable of decency!~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT11term
END

IF ~~ T1DarLT11term
  SAY ~Hmph. You merely prove my point.~
  IF ~~ EXIT
END

IF ~~ T1DarLT11prejudice
  SAY ~It is true that you have taught me that you yourself are not an evil person - you are an honorable woman I am proud to fight alongside, and you have given me great hope for your race. But... I suppose some instincts die hard, if they do so at all.~
  ++ ~Were your instincts given physical form, I'd hand you a sword to slay them with. What are you going to do?~ + T1DarLT11wrong
  ++ ~A fight I know all too well. Are you going to give in to your instincts, or change?~ + T1DarLT11wrong
  ++ ~Don't I know how that one goes... are you going to win this fight, or lose?~ + T1DarLT11wrong
END

IF ~~ T1DarLT11wrong
  SAY ~I... was wrong about you, and your race. I cannot say I fully trust your kind, but I see now that you are no better and no worse than the Avariel-individuals may be evil, but the race as a whole is not. You're going to extraordinary lengths to rescue an old friend from a most dangerous enemy, and that speaks extremely well of you. I... am sorry, about all the things I said to you, all the things I implied.~
  ++ ~I accept your apology. Come, let's get moving before the others wonder what we're up to.~ + T1DarLT11conc
  ++ ~You took what seemed the best course of action at the time - you have nothing to be sorry for. We'd better get moving.~ + T1DarLT11conc
  ++ ~Then let's get going.~ + T1DarLT11conc
END

IF ~~ T1DarLT11conc
  SAY ~As you wish.~
  IF ~~ EXIT
END


// Lovetalk 12. (In Forest)
IF ~Global("T1DarLovetalk","GLOBAL",24)~ T1DarLovetalk12
  SAY ~(As the party settles in for the night, you notice Darian standing alone at the edge of camp. He is staring into the darkness, a haunted look on his face.)~
  ++ ~Darian?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT12talk
  ++ ~(Say nothing)~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12end
END

IF ~~ T1DarLT12end
  SAY ~(Even when you drift off to sleep, Darian remains at his station, staring into the night)~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLT12talk
  SAY ~What the?! Oh, it's just you, <CHARNAME>. My apologies - you startled me.~
  ++ ~What were you doing?~ + T1DarLT12what
  ++ ~You don't look so good. What's going on?~ + T1DarLT12what
  ++ ~Something's bothering you, Darian. Is it something I can help you with?~ + T1DarLT12proud
END

IF ~~ T1DarLT12what
  SAY ~(Darian doesn't respond, and turns back to the dark)~
  ++ ~Darian, something's wrong. Talk to me.~ + T1DarLT12proud
  ++ ~Fine! Talking to you is a waste of time anyhow.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12end
END

IF ~~ T1DarLT12proud
  SAY ~Have you... have you ever done anything in your life you weren't very proud of? I suspect you might have, given your darkly divine blood, even as you have struggled against it.~
  ++ ~Yes... yes, I have.~ + T1DarLT12dark
  ++ ~No, but I've come very close.~ + T1DarLT12close
  ++ ~No. I've always kept myself firmly disciplined by my sense of right and wrong.~ + T1DarLT12disc
END

IF ~~ T1DarLT12dark
  SAY ~Then maybe you will understand, even though you are a <PRO_RACE>. Please promise that you won't hold what I'm about to tell you against me.~
  + ~!Race(Player1,ELF)~ + ~Of course I won't. Everyone's been through some dark times in their life, some more than others.~ + T1DarLT12story
  + ~!Race(Player1,ELF)~ + ~We all have our regrets, Darian. I won't hold yours against you.~ + T1DarLT12story
  + ~Race(Player1,ELF)~ + ~Of course I won't. Everyone's been through some dark times in their life, some more than others.~ + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + ~We all have our regrets, Darian. I won't hold yours against you.~ + T1DarLT12elfstory
  ++ ~I make no promises.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12close
  SAY ~Then you are very fortunate. But I suppose you might understand. Please promise that you won't hold what I'm about to tell you against me.~
  + ~!Race(Player1,ELF)~ + ~I promise. If you need to talk about something, go ahead.~ + T1DarLT12story
  + ~!Race(Player1,ELF)~ + ~Yes, I have been fortunate. But if you need to get something off your chest, I won't hold it against you.~ + T1DarLT12story
  + ~Race(Player1,ELF)~ + ~I promise. If you need to talk about something, go ahead.~ + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + ~Yes, I have been fortunate. But if you need to get something off your chest, I won't hold it against you.~ + T1DarLT12elfstory
  ++ ~I can't promise you that, Darian.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12disc
  SAY ~Then I envy you. And I don't imagine you would understand.~
  + ~!Race(Player1,ELF)~ + ~I think I would surprise you, if you're willing to talk about it.~ + T1DarLT12story
  + ~!Race(Player1,ELF)~ + ~If you need to talk, Darian, I will listen.~ + T1DarLT12story
  + ~Race(Player1,ELF)~ + ~I think I would surprise you, if you're willing to talk about it.~ + T1DarLT12elfstory
  + ~Race(Player1,ELF)~ + ~If you need to talk, Darian, I will listen.~ + T1DarLT12elfstory
  ++ ~I don't think I would. Keep your own counsel.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12fool
END

IF ~~ T1DarLT12fool
  SAY ~Then I was a fool to think you might have understood what I was about to tell you, and a fool for almost thinking I could trust you.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLT12story
  SAY ~You may not recall, but when I told you about the history of my people, I told you the Avariel feared your kind, humans. But I don't know if you really understand just how far it goes. Humans that travel near an Avariel city are closely, and secretly, watched. And, depending on the situation, we either lure them away from the city or, if we think the human may have learned there is something not quite right about the area, we take... measures.~
  ++ ~What kind of measures?~ + T1DarLT12kill
  ++ ~This sounds very ominous... what do you do, exactly?~ + T1DarLT12kill
  ++ ~What happens?~ + T1DarLT12kill
END

IF ~~ T1DarLT12elfstory
  SAY ~You may not recall, but when I told you about the history of my people, I told you the Avariel feared humans - we fear them more than any other race on Faerun. But I don't know if you really understand just how far it goes. Humans that travel near an Avariel city are closely, and secretly, watched. And, depending on the situation, we either lure them away from the city or, if we think the human may have learned there is something not quite right about the area, we take... measures.~
  ++ ~What kind of measures?~ + T1DarLT12kill
  ++ ~This sounds very ominous... what do you do, exactly?~ + T1DarLT12kill
  ++ ~What happens?~ + T1DarLT12kill
END

IF ~~ T1DarLT12kill
  SAY ~We... kill them. Without warning, without mercy. We are determined to keep our presence secret... at any cost. Typically, we set careful traps, or have marksmen kill them from afar with poisoned bolts. They never know that they were... murdered... let alone why. We then carefully mutilate the dead, and arrange a scene to reflect what we want the search parties to see. A bandit attack gone awry, perhaps, or an angry beast.~
  ++ ~But you're not so bothered by that, are you? There's something else to this, isn't there?~ + T1DarLT12tale
  ++ ~That's horrible... but it isn't what's on your mind is it? There's more to the story than that.~ + T1DarLT12tale
  ++ ~As wrong as that is, there's something you're not telling me.~ + T1DarLT12tale
END

IF ~~ T1DarLT12tale
  SAY ~... Yes. About five years ago, I was on patrol when I spotted a family of human refugees heading into the mountains. They were fleeing some battle that had destroyed their home, I think - I never really knew. But they were, unknowingly, heading straight for Myrrhavin. All our attempts to divert them had failed. It was my task, it was my duty... to kill them.~
  ++ ~And... did you?~ + T1DarLT12murder
END

IF ~~ T1DarLT12murder
  SAY ~Yes. I had my orders, and they would have stumbled upon evidence of Myrrhavin in another few days. I was sworn to defend my people at all costs, and so I followed my orders. I... prepared a trap, one that would trigger a rock slide as they moved through a ravine. It worked perfectly. But as I flew to the slide to make sure there were no survivors, I found that there was one. (His voice breaks)~
  ++ ~(Place a hand on his shoulder) Darian, I'm not going to blame you for what you did. What happened?~ + T1DarLT12surviv
  ++ ~I can't believe you did such a thing, but please... tell me what happened.~ + T1DarLT12surviv
END

IF ~~ T1DarLT12surviv
  SAY ~It was a young human girl. She had been badly injured in the slide - half of her face was crushed, and there was blood everywhere. But somehow, she was still conscious. And as I hovered over the scene, I saw in her eyes a look of such absolute horror and fear that I wanted to turn away in disgust. Disgust of me, of what I did. I told myself that I did what I had to do - did what was necessary to protect my people. But the same actions that made me a valiant defender of Myrrhavin... also made me a monster in the eyes of a little girl crushed in a rock slide, who did not, could not have known why.~
  ++ ~Darian, you did what you thought you had to do to defend your people. There is nothing wrong with that.~ + T1DarLT12defend
  ++ ~Then why did you stay amongst the Talons, if you were so disgusted?~ + T1DarLT12disgust
  ++ ~You may be many things, but you aren't a monster.~ + T1DarLT12monster
  ++ ~You're perfectly correct: you are a monster! They were innocent people!~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT12leave
END

IF ~~ T1DarLT12leave
  SAY ~(Tears form in his eyes, and he suddenly turns around and walks away into the gloom).~
  IF ~~ DO ~LeaveParty() EscapeArea() RestParty()~ EXIT
END

IF ~~ T1DarLT12defend
  SAY ~But there is! Defending my people isn't supposed to mean murdering innocent men, women, and children!~
  ++ ~If you were so disgusted, why did you stay with the Talons?~ + T1DarLT12disgust
  ++ ~I know you, Darian, and you aren't a monster.~ + T1DarLT12monster
  ++ ~Darian, you did do a terrible thing. But you can't keep punishing yourself for it.~ + T1DarLT12punish
END

IF ~~ T1DarLT12disgust
  SAY ~Because... because I was able to convince myself I had done the right thing.~
  ++ ~You were doing your duty. There's nothing wrong with that.~ + T1DarLT12defend
  ++ ~You are not a monster, Darian. Your very remorse shows otherwise.~ + T1DarLT12monster
  ++ ~And now, you're not so sure. You can't keep punishing yourself for what you did.~ + T1DarLT12punish
END

IF ~~ T1DarLT12monster
  SAY ~But how do you define a monster, <CHARNAME>? I murdered five innocent people just to protect the existence of a people they could not have known were there!~
  ++ ~Darian, you did what you thought you had to to. There is nothing wrong with that.~ + T1DarLT12defend
  ++ ~If you were so disgusted with your actions, why did you stay amongst the Talons?~ + T1DarLT12disgust
  ++ ~Darian, I know you. You can't keep punishing yourself like this.~ + T1DarLT12punish
END

IF ~~ T1DarLT12punish
  SAY ~But I vowed to protect my people! And...~
  ++ ~Darian, you paid your price, your punishment carried out. Are you going to learn from your experience, or not?~ + T1DarLT12learn
  ++ ~Are you still so blinded by your outlook that you don't even see what fate was trying to teach you?~ + T1DarLT12learn
  ++ ~We have all done bad things, Darian. But the important part is: do we learn from them?~ + T1DarLT12learn
END

IF ~~ T1DarLT12learn
  SAY ~I think I have learned, in my own way. I simply didn't want to admit it. But you... you've taught me a great deal as well, and one of the things you've taught me is to... admit the things I have a hard time with. I... I think I have been wrong for a long time, <CHARNAME>. Your people, your kind, are not evil. There may be some who are, but really, I'm no better, and no worse.~
  ++ ~Don't be so quick to thank me. If anything, I think you'll find your life is going to be more complicated from here on out, knowing that.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
  ++ ~Darian, I think you knew that all along. It just took a little prying to get you to realize that you knew it.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
  ++ ~Learning that was as much your deed as mine. But it is good to see the change.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",4)~ + T1DarLT12conc
END

IF ~~ T1DarLT12conc
  SAY ~(Turns once again to the gloom, but for once, there is a peaceful expression on his face)~
  IF ~~ DO ~RestParty()~ EXIT
END


// Lovetalk 13.
IF ~Global("T1DarLovetalk","GLOBAL",26)~ T1DarLovetalk13
  SAY ~<CHARNAME>... some time ago, you tried to befriend me. I told you I wasn't ready for that.~
  ++ ~Yes, what of it?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
  ++ ~Are you saying you're ready now?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
  ++ ~I take it something's changed?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT13friend
END

IF ~~ T1DarLT13friend
  SAY ~You've taught me a great deal, <CHARNAME>. Some things, I'm not sure are lessons for the better, but they are lessons nevertheless. I have come to consider you a... friend.~
  ++ ~That's good to hear.~ + T1DarLT13end
  ++ ~Took you long enough to admit it.~ + T1DarLT13end
  ++ ~I consider you a friend as well.~ + T1DarLT13end
  ++ ~Oh, I think you want to be more than just my friend...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT13flirt
  ++ ~Just so long as you know you are just a friend, nothing more.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT13end
END

IF ~~ T1DarLT13end
  SAY ~Then let's continue with your objective, my friend.~
  IF ~~ EXIT
END

IF ~~ T1DarLT13flirt
  SAY ~Sigh... you and your race are incomprehensible, even if I do consider you a friend.~
  IF ~~ EXIT
END


// Lovetalk 14.
IF ~Global("T1DarLovetalk","GLOBAL",28)~ T1DarLovetalk14
  SAY ~<CHARNAME>, do you have any family, other than Imoen?~
  ++ ~Gorion - the elderly mage I always looked up to as my father.~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",29) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  ++ ~My biological father doesn't bear thinking about, but my foster father was Gorion, an elderly wizard.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  ++ ~Gorion is the only other person I acknowledge as family - he was my foster father.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT14gor
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + ~That's none of your business.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceActive","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT14bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~That's none of your business.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT14bye
END

IF ~~ T1DarLT14bye
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT14gor
  SAY ~Ah, it is good you had a father you could look up to. What was he like?~
  ++ ~He was a classic absent-minded old wizard, but I never doubted his love for me.~ + T1DarLT14absent
  ++ ~He was strict, but raised me with love.~ + T1DarLT14strict
  ++ ~He gave me a love of freedom to explore and do what I wanted, but he always looked over my shoulder, making sure I didn't hurt myself.~ + T1DarLT14free
  ++ ~He was a man of few words, but his love for me was plain to see.~ + T1DarLT14plain
END

IF ~~ T1DarLT14absent
  SAY ~Heh. I can't say I know what that was like - my father was always rather strict about things. A good man, and a good father, but he had a sharp mind.~
  ++ ~I'd like to hear more about your father, if you don't mind.~ + T1DarLT14father
  ++ ~Was there anyone else in your family you were close to?~ + T1DarLT14sister
  ++ ~Well, we are our fathers' children, I suppose.~ + T1DarLT14conc
END

IF ~~ T1DarLT14strict
  SAY ~Ah, that I can understand. My own father was much the same way.~
  ++ ~I'd like to hear more about him, if you would.~ + T1DarLT14father
  ++ ~Were you close to anyone else in your family.~ + T1DarLT14sister
  ++ ~We are our fathers' children, after all.~ + T1DarLT14conc
END

IF ~~ T1DarLT14free
  SAY ~Understandable - elves know you learn best by doing, even if my father was rather strict about it.~
  ++ ~Could you tell me more about your father?~ + T1DarLT14father
  ++ ~Did you have a close relationship with anyone else in your family?~ + T1DarLT14sister
  ++ ~Even elves are their fathers' children it appears.~ + T1DarLT14conc
END

IF ~~ T1DarLT14plain
  SAY ~It is good that he loved you, no matter what he did or did not say. My father acted much the same way.~
  ++ ~So you were close to your father?~ + T1DarLT14father
  ++ ~Were you close to anyone else in your family?~ + T1DarLT14sister
  ++ ~Well, we are our fathers' children.~ + T1DarLT14conc
END

IF ~~ T1DarLT14father
  SAY ~My father is named Aalanris, and he was a scout for many decades - one of the best marksmen in Myrrhavin. He retired to raise the family, though. He is a proud and disciplined man, and made sure to instill those virtues in me. I always looked up to him as the person I wanted to become, and he was very proud of me when I was offered the chance to become a Talon.~
  ++ ~Were you close to anyone else?~ + T1DarLT14sister
  ++ ~Thank you for sharing that with me.~ + T1DarLT14end
END

IF ~~ T1DarLT14sister
  SAY ~Yes, my little sister, Lindor. The name means "songbird" in elven, and it fits her pefectly. She's mischievous, but always manages to charm her way out of all the trouble she gets into. I always looked after her, though, and she developed a gift for magic. She had just started training under one of the Val'Istari - the Archmages - when I departed Myrrhavin on my assignment.~
  ++ ~Would you mind telling me more about your father?~ + T1DarLT14father
  ++ ~Thank you very much for sharing that.~ + T1DarLT14end
END

IF ~~ T1DarLT14conc
  SAY ~It would seem so.~
  IF ~~ EXIT
END

IF ~~ T1DarLT14end
  SAY ~It was my pleasure.~
  IF ~~ EXIT
END


// Lovetalk 15.
IF ~Global("T1DarLovetalk","GLOBAL",30)~ T1DarLovetalk15
  SAY ~<CHARNAME>, may I ask you something?~
  ++ ~Sure thing.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  ++ ~Go ahead.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  ++ ~As you wish.~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT15ask
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + ~This really isn't the best time.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceTimer","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~This really isn't the best time.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT15bye
END

IF ~~ T1DarLT15bye
  SAY ~I will respect your wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT15ask
  SAY ~When we talked about our respective families before, I noticed you never mentioned your mother. Is there any reason why?~
  ++ ~I was raised by Gorion alone - he very rarely mentioned my mother. I think it brought to him very painful memories.~ + T1DarLT15alone
  ++ ~I never knew my mother - Gorion said little about her, and gave what I now know to be evasive answers when I asked.~ + T1DarLT15evasive
  ++ ~My mother is none of your business.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
END

IF ~~ T1DarLT15alone
  SAY ~That must have been hard. I don't envy you, having so little in the way of family.~
  ++ ~Why does my family concern you so much?~ + T1DarLT15family
  ++ ~What's it matter to you?~ + T1DarLT15family
  ++ ~Why do you keep asking about my family?~ + T1DarLT15family
  ++ ~This just another entry in your report, I presume?~ + T1DarLT15report
END

IF ~~ T1DarLT15evasive
  SAY ~Hmmm... there's probably a complication to the story, then, much like there seems to be with all of your family.~
  ++ ~Why does my family matter to you?~ + T1DarLT15family
  ++ ~There any reason I should keep telling you about my family?~ + T1DarLT15family
  ++ ~If this is just going to be another page in that report of yours, I don't think I'll talk to you anymore.~ + T1DarLT15report
END

IF ~~ T1DarLT15family
  SAY ~I'm still trying to understand you, even though a rational being would have given up hope of doing so long ago. Home and family are very important to the Menel'Quessir, as is the duty to keep them safe. I see you: a woman without a home, and who has lost what little family she has, and I'm amazed you're as strong as you are.~
  ++ ~Could you tell me more about your family?~ + T1DarLT15tell
  ++ ~Turnabout's fair play, then. What about your family?~ + T1DarLT15tell
  ++ ~Would you mind telling me more about your family?~ + T1DarLT15tell
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + ~My family does not concern you.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~My family does not concern you.~ + T1DarLT15bye
END

IF ~~ T1DarLT15report
  SAY ~Actually, I stopped writing in my report some time ago. I'm concerned about you - home and family are very important to the Avariel, and you've lost both.~
  ++ ~I would like to hear more about your family.~ + T1DarLT15tell
  ++ ~Is there anything more you can tell me about your family?~ + T1DarLT15tell
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + ~My family does not concern you.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT15bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~My family does not concern you.~ + T1DarLT15bye
END

IF ~~ T1DarLT15tell
  SAY ~I already told you about my father and my sister. But my family name is Antharrna - "Vigilant Storm" in your tongue. We're a long line of warriors - every member of the family has served in the military as far back as we know. My mother was a battle-mage, herself - we think my sister's magical ability comes from her. I was glad to carry on the family legacy and become a Talon.~
  ++ ~Your family sounds very nice. I envy you.~ + T1DarLT15envy
  ++ ~They sound like a wonderful family. Perhaps we'll be able to visit them someday.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT15visit
  ++ ~Thank you for sharing that with me.~ + T1DarLT15share
  ++ ~Oh, to hells with your family! You know full well what happened to mine - I have no need to hear about yours!~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT15burn
END

IF ~~ T1DarLT15burn
  SAY ~I... am sorry for offending you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT15envy
  SAY ~Perhaps, once all this is over, you'll be able to raise a family of your own. But for now, I suppose we had best return to our travels.~
  IF ~~ EXIT
END

IF ~~ T1DarLT15visit
  SAY ~Ah... it would be highly improper of me to bring a <PRO_RACE> to Myrrhavin, and you wouldn't find my people very hospitable, I'm afraid. But come, let's get back to our travels.~
  IF ~~ EXIT
END

IF ~~ T1DarLT15share
  SAY ~Hopefully, what family you do have will be secure soon.~
  IF ~~ EXIT
END


// Lovetalk 16.
IF ~Global("T1DarLovetalk","GLOBAL",32)~ T1DarLovetalk16
  SAY ~<CHARNAME>, I think you should know something... I've decided to stop keeping my report on you.~
  ++ ~Might I ask why?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT16why
  ++ ~Do you still not trust me?~ DO ~IncrementGlobal("T1DarLovetalk","GLOBAL",1) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT16trust
  + ~!Global("T1DarRomanceActive","GLOBAL",2)~ + ~I'm sorry, but I really don't need to hear this.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarRomanceActive","GLOBAL",5) IncrementGlobal("T1DarLovetalk","GLOBAL",1)~ + T1DarLT16bye
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~I'm sorry, but I really don't need to hear this.~ DO ~RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500) SetGlobal("T1DarLovetalk","GLOBAL",33)~ + T1DarLT16bye
END

IF ~~ T1DarLT16bye
  SAY ~As you wish.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16why
  SAY ~I feel that keeping a report on you was improper, despite my orders. You are a friend, and should be treated as such.~
  ++ ~Would you have treated an Avariel any differently?~ + T1DarLT16diff
  ++ ~Sounds like you aren't too sure what "friend" means.~ + T1DarLT16sure
  ++ ~You don't even know what a friend is, and I don't think there's a need any longer for you to consider me as such.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16trust
  SAY ~I do trust you. That is why I have decided to no longer keep a report.~
  ++ ~Well, thank you for your trust.~ + T1DarLT16thank
  ++ ~You don't even know what trust is, Darian.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16diff
  SAY ~For a long time, I would have. But you are an... equal, <CHARNAME>.~
  ++ ~You make that sound like a painful admission.~ + T1DarLT16pain
  ++ ~Coming from you, that's high praise indeed.~ + T1DarLT16praise
  + ~!Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarFlirtCount","GLOBAL",9)~+ ~I don't think that's all you see me as...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16flirt
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalLT("T1DarFlirtCount","GLOBAL",9)~+ ~I don't think that's all you see me as...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16romflirt
  + ~!Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarFlirtCount","GLOBAL",8)~+ ~I don't think that's all you see me as...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16highflirt
  + ~Global("T1DarRomanceActive","GLOBAL",2) GlobalGT("T1DarFlirtCount","GLOBAL",8)~+ ~I don't think that's all you see me as...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16highromflirt
  ++ ~Oh, please. You've always considered yourself my superior, and I don't think that's changed.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLT16burn
END

IF ~~ T1DarLT16burn
  SAY ~I should have trusted my instincts - to think I was ready to believe I could deal with a <PRO_RACE> as I could a Menel'Quessiri. I am a fool.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16pain
  SAY ~You've challenged many of my most basic principles, <CHARNAME>. I don't know a man for whom that would not be painful.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16praise
  SAY ~It was not my intention to be haughty or give the impression I considered you inferior. Far from it. And I apologize if I gave the wrong impression.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16flirt
  SAY ~I suppose you're attempting to display what your kind calls a silver tongue? Yours is badly tarnished.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16romflirt
  SAY ~Yes, you and I both know it extends a bit beyond that.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16highromflirt
  SAY ~Well, at least I know you're upholding your end of our relationship.~
  IF ~~ EXIT
END

IF ~~ T1DarLT16highflirt
  SAY ~Why do you continue to display such persistent... interest... in me?~
  ++ ~I like the strong, silent type.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~I have an overactive libido. You'll do.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~Because I really find you rather handsome, in an exotic way.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~You're a very composed, dignified man. That makes you incredibly fun to play with.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~You're and elf and you've got wings. Do I need any other reasons?~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~You know perfectly well why, and I'd wager you're just as interested, even if you are better at hiding it.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~You're the only decent-looking man in the party. Who else am I going to hit on?~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
  ++ ~You're really quite adorable when I embarass you.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT16interest
END

IF ~~ T1DarLT16interest
  SAY ~Oh, for the love of Aerdrie Faeyna...~
  IF ~~ EXIT
END

IF ~~ T1DarLT16sure
  SAY ~I do now. And that is why I'm no longer keeping a report on you.~
  ++ ~Thank you for your trust.~ + T1DarLT16thank
  ++ ~You have a lot to learn about what friendship is. And you won't learn it from me.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarLT16thank
  SAY ~Don't thank me. You earned my trust, and it was wrong of me to not grant it.~
  IF ~~ EXIT
END


// Lovetalk 17.
IF ~Global("T1DarLovetalk","GLOBAL",34)~ T1DarLovetalk17
  SAY ~<CHARNAME>, have you given any thought to what you will do, where you will go, after you resolve this... mess you've found yourself in?~
  ++ ~I intend to keep adventuring. I've come to enjoy the danger and the excitement of the road.~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17advent
  ++ ~I was hoping to settle down somehwere and find some peace, personally.~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17settle
  ++ ~I don't know, really. I've grown fond of the open road.~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17advent
  ++ ~I haven't given it much thought. Been too busy with the day-to-day struggle to survive.~ DO ~SetGlobal("T1DarLovetalk","GLOBAL",35) RealSetGlobalTimer("T1DarRomanceTimer","GLOBAL",2500)~ + T1DarLT17busy
END

IF ~~ T1DarLT17advent
  SAY ~But don't you feel the need to find a home, a safe place where you can settle down and be happy?~
  ++ ~I find my happiness in adventure, in exploration, in testing the limits of the world.~ + T1DarLT17limits
  ++ ~"Home" is a fleeting illusion - I learned that long ago, in a place called Candlekeep.~ + T1DarLT17illusion
  ++ ~I suppose I do, actually. As much fun as adventuring is, I do grow weary of a life on the road.~ + T1DarLT17settle
END

IF ~~ T1DarLT17settle
  SAY ~Then we have more in common than I had thought. I also hope to settle down someday, after I retire from my service as a Talon.~
  ++ ~That surprises me. I always had the impression you were happiest on a mission, fighting evil.~ + T1DarLT17mission
  ++ ~I'd be hapy to join you when that happens, if you would allow.~ + T1DarLT17join
  ++ ~I know the feeling. I just wish my circumstances made the possibility of settling down be a near-future possibility, rather than a distant one.~ + T1DarLT17perhaps
END

IF ~~ T1DarLT17busy
  SAY ~Heh. I can certainly understand that sentiment. Hmmm... would you settle down, though, given the chance?~
  ++ ~I don't think so. I've grown fond of the road and the thrill of adventure.~ + T1DarLT17advent
  ++ ~In a heartbeat.~ + T1DarLT17settle
END

IF ~~ T1DarLT17limits
  SAY ~Good - the limits of the world seem to be actively testing you, whether you seek it or not.~
  ++ ~I've been passing the tests so far.~ + T1DarLT17pass
  ++ ~You've been a great help through all of it, Darian.~ + T1DarLT17help
  ++ ~And a very handsome man's been at my side through most of it.~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarLT17sexy
END

IF ~~ T1DarLT17pass
  SAY ~Yes, but I'm worried about what will happen when you fail. No one wins forever, not even the gods.~
  ++ ~Relax, Darian. I'll cross that bridge when the time comes.~ + T1DarLT17bridge
  ++ ~But I've won, and I'll keep winning.~ + T1DarLT17win
  ++ ~Well, when I do stumble, I know I've got a good friend willing to lend a hand.~ + T1DarLT17stumble
END

IF ~~ T1DarLT17bridge
  SAY ~Yes... you will have to. And... if I'm present, I'll help you across that bridge.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17win
  SAY ~Your streak won't continue forever. I just hope I'm here to help you when you do fail.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17stumble
  SAY ~Yes... you do.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17help
  SAY ~It is help I give gladly.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17sexy
  SAY ~Er... I will help you through whatever the future has for you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17illusion
  SAY ~Just because your home was destroyed does not mean there is not a home out there for you.~
  ++ ~No, there is not. I walk alone.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLT17alone
  ++ ~Perhaps, but not in my near future.~ + T1DarLT17perhaps
  ++ ~Where? With you and your people?~ + T1DarLT17with
END

IF ~~ T1DarLT17alone
  SAY ~Then I pray you are content in that walk.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17perhaps
  SAY ~But someday...~
  IF ~~ EXIT
END

IF ~~ T1DarLT17with
  SAY ~Ah, no. That would be extremely inappropriate. But somewhere...~
  IF ~~ EXIT
END

IF ~~ T1DarLT17mission
  SAY ~I am. But my mission is to defend my home and my people. Having a home is generally prerequisite to defending one.~
  ++ ~Heh. I suppose it is at that. I'm not sure if I have a mission in life.~ + T1DarLT17life
  ++ ~Why, there is a hint of wit, even humor in your voice. All manner of strange things are happening - why not finding a home?~ + T1DarLT17humor
  ++ ~A home isn't a physical place - it's the people who make a home what it is. And my home is on the road.~ + T1DarLT17people
END

IF ~~ T1DarLT17life
  SAY ~Then I pray you will find one soon. Your life is in enough turmoil that I think a sense of purpose will bring peace to you.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17humor
  SAY ~Heh. Why not, indeed.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17people
  SAY ~As insightful as ever... do I really need to tell you that you've set me thinking again? (Grins)~
  IF ~~ EXIT
END

IF ~~ T1DarLT17join
  SAY ~I... I think I would enjoy that.~
  ++ ~Darian, are you blushing?~ + T1DarLT17blush
  ++ ~Careful, my good Talon - your veil is slipping.~ + T1DarLT17veil
  ++ ~Would you object if I kissed you now?~ + T1DarLT17kiss
END

IF ~~ T1DarLT17blush
  SAY ~Er... damn you...~
  IF ~~ EXIT
END

IF ~~ T1DarLT17veil
  SAY ~Thank you for your suggestion. I will correct the deficiency.~
  IF ~~ EXIT
END

IF ~~ T1DarLT17kiss
  SAY ~Ah... this really isn't a good time...~
  ++ ~Oh, I think it is. (Kiss Darian)~ + T1DarLT17kiss2
  ++ ~You don't know what you're missing...~ + T1DarLT17smirk
END

IF ~~ T1DarLT17kiss2
  SAY ~(You kiss Darian, and to his surprise if no one else's, he returns the gesture with passion. When you let go, he backs away, blushing furiously)~
  IF ~~ EXIT
END

IF ~~ T1DarLT17smirk
  SAY ~... I think I'll take your word for it.~
  IF ~~ EXIT
END  

IF ~~ T1DarLT17distant
  SAY ~Then perhaps we will find that time, together.~
  IF ~~ EXIT
END


// Spellhold Scene
IF WEIGHT #-2 ~Global("T1DarSpellholdTalk","GLOBAL",1)~ THEN BEGIN T1DarSpellholdTalk
  SAY ~By Aerdrie Faeyna, <CHARNAME>, what happened to you?!~
  ++ ~I... I think Irenicus took something from me. Something important.~ DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPtook
  ++ ~I'm... not sure. But something's missing.~ DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPtook
  ++ ~N-Nothing... I'll be fine.~ DO ~IncrementGlobal("T1DarSpellholdTalk","GLOBAL",1)~ + T1DarLTSPnothing
END

IF ~~ T1DarLTSPtook
  SAY ~Something about you changed while we were unconscious. I can't put my finger on it, but you've somehow become much darker - almost hollow, somehow.~
  ++ ~Darian... I think he took my soul.~ + T1DarLTSPsoul
  ++ ~It's my soul that's changed - I don't have mine anymore.~ + T1DarLTSPsoul
  ++ ~Or something's been brought to the surface. Darian, I think my soul's gone.~ + T1DarLTSPsoul
END

IF ~~ T1DarLTSPnothing
  SAY ~No, you won't be. I can see it in your eyes, hear it in your voice - you lost something. Something very important. You've changed, and not for the better.~
  ++ ~I think... I think he took my soul, Darian.~ + T1DarLTSPsoul
  ++ ~I'm not sure, but I think that ritual drained me of my soul.~ + T1DarLTSPsoul
END

IF ~~ T1DarLTSPsoul
  SAY ~Your... your soul? By Aerdrie Faeyna, why does fate keep punishing you?! You've done nothing to deserve this! If there is absolutely anything I can do to help you, I will do it.~
  ++ ~This isn't like you, Darian. Why are you so concerned about me?~ + T1DarLTSPcare
  ++ ~And here we go again. Just why do you care so much about what happens to me?~ + T1DarLTSPcare
  ++ ~Thank you, Darian, but... why are you so concerned about me?~ + T1DarLTSPcare
END

IF ~~ T1DarLTSPcare
  SAY ~Because I care about you, damn it! You've forced me to rethink a great many things, and I didn't want to admit I might have feelings for a <PRO_RACE>!~
  ++ ~Heh. It took me losing my soul to get you to admit you have feelings for me.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",2)~ + T1DarLTSPfeelings
  ++ ~Darian, I'm so sorry, but I think of you as a friend. A good friend, a steadfast friend to be sure, but nothing more.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLTSPfriend
  ++ ~Oh, this is fun. You're finally bending down to admit you care about me when I lose my soul? You really think I'm that desperate?~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLTSPburn
END

IF ~~ T1DarLTSPfriend
  SAY ~As... as you wish. I will stand by you if you need help, <CHARNAME>... from a friend.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSPburn
  SAY ~I... I think we've spoken enough.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSPfeelings
  SAY ~...Yes. You are the closest friend I have ever known. I would not have believed I could say such things to you, but here we are. Whatever happens, whatever comes, I'll be here for you, <CHARNAME>, no matter the cost to myself.~
  ++ ~I think that's actually the sweetest thing I've ever heard.~ + T1DarLTSPsweet
  ++ ~And I thank you for it. I just pray it won't be necessary.~ + T1DarLTSPpray
  ++ ~That's good enough for me. Let's get going.~ + T1DarLTSPgoing
END

IF ~~ T1DarLTSPsweet
  SAY ~There... there are times for such things.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSPpray
  SAY ~And I will pray for that as well.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSPgoing
  SAY ~As you wish.~
  IF ~~ EXIT
END


// Forest scene, after Underdark
IF WEIGHT #-2 ~Global("T1DarUnderExitTalk","GLOBAL",1)~ T1DarForestTalk
  SAY ~(As your eyes adjust to the sun again, you notice as Darian drops the invisibility wards on his wings and abruptly leaps into the air, his normally guarded composure a thing of the past. He seems extraordinarily thrilled to be out of the Underdark)~
  ++ ~Hehe. You sure look happy.~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ ~That's abnormal behavior, to say the least. What brought this on?~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ ~Who are you, and what have you done with Darian?~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ ~Darian, lay off the potions. They're clearly not good for you.~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ ~This has got to be the most inept doppleganger I have ever seen.~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
  ++ ~I don't think I've ever seen you look so happy, Darian.~ DO ~IncrementGlobal("T1DarUnderExitTalk","GLOBAL",1)~ + T1DarLTSURhappy
END

IF ~~ T1DarLTSURhappy
  SAY ~Ah... I'm deeply sorry for giving in to impulse like that. It simply feels wonderful to be back in the open air again after so long in the Underdark. I thought I would lose control if I was in there much longer.~
  ++ ~You're not the only one feeling a little impulsive today. (Kiss Darian)~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",3)~ + T1DarLTSURkiss
  ++ ~So the big winged elf isn't so tough, after all, eh?~ + T1DarLTSURtough
  ++ ~You know, it would have been rather amusing if you had.~ + T1DarLTSURamuse
  ++ ~Don't worry, I know how you feel.~ + T1DarLTSURtough
END

IF ~~ T1DarLTSURkiss
  SAY ~(Darian's face turns the most brilliant shade of red you have ever seen, but slowly and tenderly returns your kiss. As you part, his affection for you is plain to see)~
  IF ~~ EXIT
END

IF ~~ T1DarLTSURtough
  SAY ~Sigh... I'm extremely claustrophobic, like virtually all Menel'Quessir - I'm accustomed to flying above the land, not crawling under it. My training allowed me to keep it under control, but it just felt incredible to be back in the open air.~
  ++ ~Well, it is good to see you can relax from time to time.~ + T1DarLTSURrelax
  ++ ~Going crazy in the air is a good start. A little more work, and you'll be perfect.~ + T1DarLTSURcrazy
  ++ ~You can drop the tightrope act around me, Darian. I've seen your relaxed side.~ + T1DarLTSURact
END

IF ~~ T1DarLTSURrelax
  SAY ~Perhaps after we free your soul, we'll all be able to relax more often.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSURcrazy
  SAY ~You are insane, even for a <PRO_RACE>. But I suppose it's an insanity I'll have to get used to.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSURact
  SAY ~Even if we're now far outside the scope of my original mission, I'm still on assignment. Perhaps after we've gotten this over and done with...~
  IF ~~ EXIT
END

IF ~~ T1DarLTSURamuse
  SAY ~Yes, I'm sure it would have provided you with no end of entertainment.~
  ++ ~You're entertaining enough as it is, in a strange sort of way.~ + T1DarLTSURenter
  ++ ~Don't worry, I have plans enough for entertainment...~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",2)~ + T1DarLTSURplans
  ++ ~Then indulge me.~ + T1DarLTSURindulge
END

IF ~~ T1DarLTSURenter
  SAY ~Yes, you seem to find me quite entertaining. Why you do, I've given up all hope of ever understanding.~
  IF ~~ EXIT
END

IF ~~ T1DarLTSURplans
  SAY ~I'm not sure whether to shoot you or kiss you.~
  ++ ~Allow me to settle this one. (Kiss Darian)~ DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",3)~ + T1DarLTSURkiss
END

IF ~~ T1DarLTSURindulge
  SAY ~Oh, you'll probably get your wish at some point. Just not now.~
  IF ~~ EXIT
END


// Final Scene
IF WEIGHT #-2 ~Global("T1DarFinalTalk","GLOBAL",1)~ THEN BEGIN T1DarFinalTalk
  SAY ~<CHARNAME>, could you come with me?~
  ++ ~Sure, Darian. What is it you want?~ DO ~IncrementGlobal("T1DarFinalTalk","GLOBAL",1)~ + T1DarLTFINtalk
  ++ ~No, thank you. I know you have feelings for me, but really, now is not the best time. I hope you understand.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",5)~ + T1DarLTFINfriend
END

IF ~~ T1DarLTFINfriend
  SAY ~As... you wish.~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLTFINtalk
  SAY ~(You go with Darian, and soon find yourselves away from others, alone together on a grassy knoll. The forest is quiet, and the night calm) <CHARNAME>, do you know much of the elven tongue?~
  ++ ~Only a few words-most of the tomes at Candlekeep were either in common, or in various bizarre languages only a handful of scholars can read.~ + T1DarLTFINtongue
  + ~!Race(Player1,HUMAN)~ + ~Very little. I was always curious about my elven heritage, but there simply wasn't much opportunity to learn.~ + T1DarLTFINtongue
  ++ ~Can't say that I do. I was raised speaking common.~ + T1DarLTFINtongue
END

IF ~~ T1DarLTFINtongue
  SAY ~Heh. I was taught common, along with Auran, Draconic, and a few other languages as part of my training - better to learn the language of the enemy, so you can understand and destroy them more readily. It is still uncomfortable on my tongue, harsh and guttural.~
  ++ ~Would you be willing to teach me some of the elven language?~ + T1DarLTFINteach
  ++ ~I would like to learn some of the elven tongue, if you are willing.~ + T1DarLTFINteach
END

IF ~~ T1DarLTFINteach
  SAY ~Gladly. (He points at himself): Menel'Quessir.~
  ++ ~And that means "Elf"?~ + T1DarLTFINmenelwrong
  ++ ~Does that mean "Avariel"?~ + T1DarLTFINmenelright
  ++ ~"Man"?~ + T1DarLTFINmenelwrong
  ++ ~Do you mean "Talon"?~ + T1DarLTFINmenelwrong
END

IF ~~ T1DarLTFINmenelwrong
  SAY ~Not too far off. It is the name we, whom you call the Avariel, use for ourselves. A literal translation would be 'People of the Sky'. (He points at you): Edainme.~
  ++ ~"Woman"?~ + T1DarLTFINedainright
  ++ ~"Adventurer"?~ + T1DarLTFINedainwrong
  ++ ~"Heroine"?~ + T1DarLTFINedainwrong
  ++ ~"Godchild"?~ + T1DarLTFINedainwrong
END

IF ~~ T1DarLTFINmenelright
  SAY ~Corect. A literal translation would be 'People of the Sky' - it is the name we use for ourselves. (He points at you): Edainme.~
  ++ ~"Woman"?~ + T1DarLTFINedainright
  ++ ~"Adventurer"?~ + T1DarLTFINedainwrong
  ++ ~"Heroine"?~ + T1DarLTFINedainwrong
  ++ ~"Godchild"?~ + T1DarLTFINedainwrong
END

IF ~~ T1DarLTFINedainright
  SAY ~Yes. (This continues for some time, as Darian teaches you the elven words for the forest and much within it, time itself seemingly stopped as you sit together. Eventually, he lifts his gaze upwards to the tranquil, clear night sky) Tirion.~
  ++ ~Are you referring to the night itself?~ + T1DarLTFINtirion
  ++ ~The heavens?~ + T1DarLTFINtirion
  ++ ~Do you speak of the stars?~ + T1DarLTFINtirion
END

IF ~~ T1DarLTFINedainwrong
  SAY ~Not quite - 'edainme' is our word for "woman". (This continues for some time, as Darian teaches you the elven words for the forest and much within it, time itself seemingly stopped as you sit together. Eventually, he lifts his gaze upwards to the tranquil, clear night sky) Tirion.~
  ++ ~Are you referring to the night itself?~ + T1DarLTFINtirion
  ++ ~The heavens?~ + T1DarLTFINtirion
  ++ ~Do you speak of the stars?~ + T1DarLTFINtirion
END

IF ~~ T1DarLTFINtirion
  SAY ~Yes, but no. It is a constellation my people call the Watchtower - very rarely visible completely, but it is tonight. (He takes your hand in his, and traces the pattern of stars across the sky) When it is visible completely, it is said to be an omen of rebirth and revelation, analkimalqua amin.~
  ++ ~What does "analkimalqua amin" mean?~ + T1DarLTFINswan
  ++ ~That elven phrase you just said - what's it mean?~ + T1DarLTFINswan
  ++ ~What did you just say? "Analkimalqua amin"?~ + T1DarLTFINswan
END

IF ~~ T1DarLTFINswan
  SAY ~It means... my radiant swan.~
  ++ ~That's incredibly sweet of you, Darian. I didn't know you had it in you.~ + T1DarLTFINsweet
  ++ ~Such a beautiful phrase... I wasn't expecting something like that from you.~ + T1DarLTFINsweet
  ++ ~How touching... I couldn't have guessed you could be so poetic.~ + T1DarLTFINsweet
  ++ ~Kinda cheesy, but I appreciate the thought.~ + T1DarLTFINsweet
END

IF ~~ T1DarLTFINsweet
  SAY ~I'm worried, analkimalqua amin. I'm worried about you. We've purged the Realms of Bodhi, but Irenicus and your soul are still in question. A threat to myself, I can handle, but a threat to you... I would give anything, even my own life, to spare you from what has happened and what I fear is going to happen.~
  ++ ~I'm worried, too, Darian. What brought this on?~ + T1DarLTFINlove
  ++ ~For better or worse, things are switfly coming to an end.~ + T1DarLTFINswift
  ++ ~I'm confident in our ability to defeat Irenicus. We have no choice but to destroy him, so we shall.~ + T1DarLTFINconfident
  ++ ~Irenicus and his plans must be stopped, Darian - you know this.~ + T1DarLTFINstop
END

IF ~~ T1DarLTFINswift
  SAY ~Indeed they are, and all too swiftly. But... I do not want to see you be hurt any further by that, that uuvanimo!~
  ++ ~And that word, I do recognize. Irenicus is a monster, yes, but why are you reacting so badly now?~ + T1DarLTFINlove
  ++ ~We've fought him before, Darian. Why do you care so much about my well-being now?~ + T1DarLTFINlove
  ++ ~I cannot allow him to hurt others, and you know this. Why do I cause you such distress now?~ + T1DarLTFINlove
END

IF ~~ T1DarLTFINconfident
  SAY ~But... he has your soul. He fight with your strength, kills with your power! I have seen firsthand what you are capable of, and it frightens me. And I do not want you to be hurt in this final battle.~
  ++ ~We fight because we must, Darian. What makes this fight so special?~ + T1DarLTFINlove
  ++ ~It's a fight like any other, though granted, the stakes are far higher. Why are things so different now?~ + T1DarLTFINlove
  ++ ~As touching as this is, why are you so emotional?~ + T1DarLTFINlove
END

IF ~~ T1DarLTFINstop
  SAY ~I do. But I also know that I can't bear the thought of you being injured or worse in the storm that approaches.~
  ++ ~A storm it is, but a storm we must break. And why are you so concerned about me now?~ + T1DarLTFINlove
  ++ ~The storm front may be upon us, but why are you so distressed now?~ + T1DarLTFINlove
  ++ ~We will weather this storm together, as we have weathered so many others. What makes this coming battle so different?~ + T1DarLTFINlove
END

IF ~~ T1DarLTFINlove
  SAY ~Because amin... amin... amin mela Ile, <CHARNAME>. I love you. With all my heart, all my soul.~
  ++ ~I... I love you, too, Darian.~ + T1DarLTFINend
  ++ ~Took you long enough to say it. (Grin) And I love you, too.~ + T1DarLTFINend
  ++ ~Somehow, I know you'd be saying those words sooner or later. I've been deeply in love with you for some time.~ + T1DarLTFINend
  ++ ~I... I am so sorry, Darian. I care about you, but as a brother, not a lover.~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ + T1DarLTFINsorry
END

IF ~~ T1DarLTFINsorry
  SAY ~(Darian suddenly gets up and walks away, leaving you alone in the night)~
  IF ~~ EXIT
END

IF ~~ T1DarLTFINend
  SAY ~Mela... love... I've thought about that word for a long time. It, and you, have frightened me more than all the horrors of the Underdark. Yet it feels... right. I... I've never done this before, but...~
  = ~<CHARNAME>... melamin... would you stay with me tonight?~
  ++ ~I will, my love.~ + T1DarLTFINsex
  ++ ~I love you, but now is not the time.~ + T1DarLTFINrebuff
END

IF ~~ T1DarLTFINsex
  SAY ~(No more words pass between you. None have to.)~
  IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ T1DarLTFINrebuff
  SAY ~As you wish, melamin.~
  IF ~~ DO ~RestParty()~ EXIT
END


// ---------------------------------------
// Darian Flirts
// ---------------------------------------
// Light flirts (romanceactive = 4)
IF ~Global("T1DarTimeForFlirt","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",4)~ T1DarStartFlirt
  SAY ~(You pause in your travels momentarily)~
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
  SAY ~(Darian's eyes sweep over the party, ever-searching for signs of danger. His eyes linger on you for a moment, an apprehensive look on his features, then they travel onward, vigilant of potential danger)~
  IF ~~ EXIT
END

IF ~~ T1DarInitThoughtful
  SAY ~(You notice that as he walks, Darian's eyes seem clouded, lost in thought. Unconsciously, his eyes turn towards you, before he abruptly turns his head to keep his eyes on the road)~
  IF ~~ EXIT
END

IF ~~ T1DarInitStumble
  SAY ~(You stumble over a rock as you walk, but a hand is automatically on your shoulder, steadying your stride. However as soon as you turn to face him, Darian quickly withdraws his arm, his expression unreadable)~
  IF ~~ EXIT
END

IF ~~ T1DarInitWrite
  SAY ~(The party takes a short break, and you notice Darian's gaze on you as he writes in a small book. He seems unaware of your attention, occupied with whatever he is writing, and a look of puzzlement dawns on his face as he writes)~
  IF ~~ EXIT
END

IF ~~ T1DarInitSuspicion
  SAY ~(A sneaking suspicion you're being watched, you abruptly turn to face Darian. His expression is carefully guarded, but he can't entirely erase a hint of red to his features)~
  IF ~~ EXIT
END

IF ~~ T1DarInitMelody
  SAY ~(As you walk, Darian begins to softly sing an elven melody. Though you can't pick out more than a few words of the song, your ears distinctly notice your own name amongst the notes)~
  IF ~~ EXIT
END

IF ~~ T1DarInitNecklace
  SAY ~(Picking up your equipment after a brief rest, you find amongst your gear a beautiful necklace of feathers. You don't know how it got there, but although it is but a simple gift, you can tell if was carefully and tenderly made)~
  IF ~~ EXIT
END

IF ~~ T1DarInitBreeze
  SAY ~(The heat of the day bears down on you, but there is suddenly a cooling breeze. You look around, and notice Darian, his eyes closed in concentration)~
  IF ~~ EXIT
END

IF ~~ T1DarInitTickle
  SAY ~(You feel something light brush across your shoulder, almost tickling you. Looking around, you see Darian standing near you. Though his wings are still concealed, he seems to be stretching them, and he deliberately avoids your gaze.)~
  IF ~~ EXIT
END


// Heavy flirts (romanceactive = 2)
IF ~Global("T1DarTimeForFlirt","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ T1DarHeavyFlirtStart
  SAY ~(You pause in your travels momentarily)~
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
  SAY ~(Once again, you notice Darian's concerned gaze resting upon you. He doesn't need to say anything to let you know he's worried about you)~
  IF ~~ EXIT
END

IF ~~ T1DarInitWrack
  SAY ~(Your stride falters as your body is wracked by the emptiness of your soul. Before you can fall, Darian takes you in his arms and supports you until the attack passes)~
  IF ~~ EXIT
END

IF ~~ T1DarInitFeathers
  SAY ~(As the party pauses briefly, Darian walks over to you with a hint of a smile on his face. In his hand is a line of beautiful feathers, which he skillfully weaves into your hair. Although clearly uncomfortable with being so forward, he does not leave your side)~
  IF ~~ EXIT
END

IF ~~ T1DarInitCloak
  SAY ~(The air has been growing cold in the last few hours, but as you shiver slightly, Darian walks over and wraps his cloak around you, and you feel noticeably more warm. Whether from the cloak or the man, you're not sure.)~
  IF ~~ EXIT
END

IF ~~ T1DarInitWatching
  SAY ~(A feeling you're being watched, you turn to Darian. His eyes are distant, once again lost in thought, but when they meet your gaze, a smile touches his face)~
  IF ~~ EXIT
END

IF ~~ T1DarInitEngraving
  SAY ~(While scrounging in your pack, you are surprised to find something you don't recall seeing before-a beautiful piece of wood onto which has been engraved your likeness. The work isn't the best you've ever seen, but the ornate craftsmanship and elven marks leave little doubt as to who created it)~
  IF ~~ EXIT
END

IF ~~ T1DarInitInjured
  SAY ~(As you walk, you accidentally step on something sharp and make a soft sound of alarm. No sooner do you do so than Darian is at your side, assuming a protective position. He smiles as he applies a minor healing incantation to your foot)~
  IF ~~ EXIT
END

IF ~~ T1DarInitHold
  SAY ~(Darian's hand finds yours as you walk, and he abruptly draws you into his arms. There is strength in his embrace, but also a surprising gentleness. He holds you as though you are a priceless and delicate treasure, and as you relax into the embrace, his eyes search the horizon, determined to keep you safe.)~
  IF ~~ EXIT
END

END


// ---------------------------------------
// Darian Player initiated dialogue
// ---------------------------------------
APPEND ~T1DARJ~

IF ~IsGabber(Player1)~ THEN BEGIN T1DarDarianApproach
  SAY ~(You look at Darian, the Avariel warrior. He doesn't seem to be aware of your gaze)~
  ++ ~Can I ask you something about yourself?~ + T1DarTalkAsk
  + ~OR(3) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2) Global("T1DarRomanceActive","GLOBAL",5)~ + ~Darian, can we talk?~ + T1DarTalkSerious
  + ~OR(2) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ + ~(Draw closer to Darian)~DO ~IncrementGlobal("T1DarFlirtCount","GLOBAL",1)~ + T1DarTalkFlirt
  ++ ~(Silently back off)~ + T1DarTalkBack
END

IF ~~ T1DarTalkBack
  SAY ~(You back away from Darian, but he turns and looks at you warily as you do so)~
  IF ~~ EXIT 
END

IF ~~ T1DarTalkAsk
  SAY ~If you wish.~
  ++ ~(Ask Darian a silly question)~ + T1DarAskSilly
  ++ ~(Ask Darian a more serious question)~ + T1DarAskSomber
END

IF ~~ T1DarAskSilly
  SAY ~(Darian looks at you expectantly)~
  ++ ~What is your favorite color?~ + T1DarAskColor
  ++ ~What do you like to do in your spare time?~ + T1DarAskHobby
  ++ ~Do you know any poetry?~ + T1DarAskPoetry
  ++ ~Do you like to sing or dance at all?~ + T1DarAskSing
  ++ ~Did you ever have a pet back in Myrrhavin?~ + T1DarAskPet
  + ~Gender(Player1,"FEMALE")~ + ~Does this outfit make me look fat?~ + T1DarAskFat
  ++ ~How old are you?~ + T1DarAskAge
  ++ ~Are your wings ticklish at all?~ + T1DarAskTickle
  ++ ~Who's your favorite person in the world?~ + T1DarAskFavorite
  ++ ~Who's your least favorite person in the world?~ + T1DarAskLeast
END

IF ~~ T1DarAskSomber
  SAY ~(Darian looks at you expectantly)~
  ++ ~What is a Talon, exactly?~ + T1DarAskTalon
  ++ ~Do the Avariel practice bonding rituals like other elven races?~ + T1DarAskBond
  ++ ~I hope you don't mind me asking, but have you ever been in love before?~ + T1DarAskLove
  ++ ~What's your home city of Myrrhavin like?~ + T1DarAskMyrr
  ++ ~What are the most important things in life, to you?~ + T1DarAskValues
  ++ ~How do you measure the value of someone?~ + T1DarAskMeasure
  ++ ~What can change the nature of a man?~ + T1DarAskNature
END

IF ~~ T1DarAskTalon
  SAY ~The human equivalent of the Talon Order would be the order of nim-ohtari, I suppose. Paladins. However, we are not bound by rules of chivalry or honor. Our duty is to defend our people at any cost - including our conscience if need be.~
  IF ~~ EXIT
END

IF ~~ T1DarAskBond
  SAY ~Yes.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskLove
  SAY ~No.~
IF ~~ THEN EXIT
END

IF ~~ T1DarAskMyrr
  SAY ~Compared to a human city... you would find it sprawling, very open and airy, with no place you cannot stretch your wings. It is not only designed for beauty, however. Myrrhavin is extremely heavily fortified, and we will exact a terrible price for every inch of the city.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskValues
  SAY ~Duty, first and foremost. And for me, that duty is the defense of my people. Secondary to that come honesty, loyalty, perseverance. Do not expect anything profoundly insightful, <CHARNAME>. I am a simple man when it comes to my values.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskMeasure
  SAY ~I judge people by their actions. Not their thoughts, not their words, but their actions. A man can say anything he wants, but unless he is willing to put action to those words, they are without meaning.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskNature
  SAY ~I am not certain if a man's basic nature can be changed. But how one reacts to his nature can be shaped by many things. Anything can shape a man, so long as he is capable of believing in it. Belief is what changes a man.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskColor
  SAY ~Light blue, I think.~
IF ~~ THEN EXIT
END

IF ~~ T1DarAskHobby
  SAY ~I actually am fond of woodcarving of sorts in my spare time. It's an easy hobby to maintain while alone in the wild.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskPoetry
  SAY ~Poetry is beautiful, but nothing worth memorizing. I tend to have more practical things to spend my time on.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskSing
  SAY ~On occassion. And no, not in your presence.~
IF ~~ THEN EXIT
END

IF ~~ T1DarAskPet
  SAY ~No, the Menel'Quessir do not believe in imprisoning animals. However, many succeeding generations of sparrows nested in the eaves of my home, and I was fond of them.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskFat
  SAY ~I refuse to answer on the grounds you may kill me no matter how I answer.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskAge
  SAY ~Around a hundred and twenty one years of age. For a human, that is perhaps equivalent to being eighteen.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskTickle
  SAY ~That is none of your concern.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskFavorite
  SAY ~The person I hold in highest regard is my father, back home in Myrrhavin.~
  IF ~~ EXIT 
END

IF ~~ T1DarAskLeast
  SAY ~There is one entity in particular I have a poor history with-a powerful elemental entity called a tempest. Living storms, as they are more often called, are normally mindless, destructive entities, but this one was very intelligent, and enjoyed a privileged relationship with my superiors. Despite my best efforts, I was never able to determine the exact nature of that relationship, or why it was in Myrrhavin at all, let alone tolerated. However, it did make some things plain-it knew far more about me than it possibly could, and more than once it has appeared without warning to wreak havoc.~
  IF ~~ EXIT 
END

IF ~~ T1DarTalkFlirt
  SAY ~(Darian's eyes turn towards you. He appears to be waiting for you to take action.)~
  ++ ~(Try to catch Darian's gaze)~ + T1DarGazeFlirt
  + ~Global("T1DarRomanceActive","GLOBAL",1)~ + ~(Try to take Darian's hand)~ + T1DarHandLight
  + ~Global("T1DarRomanceActive","GLOBAL",2)~ + ~(Try to take Darian's hand)~ + T1DarHandHeavy
  ++ ~(Approach Darian more closely)~ + T1DarFlirtApproach
END

IF ~~ T1DarGazeFlirt
  SAY ~(Darian's eyes flicker in your direction. He's aware of your attention)~
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + ~(Grin mischieviously at him)~ + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + ~(Grin mischieviously at him)~ + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + ~(Grin mischieviously at him)~ + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + ~(Grin mischieviously at him)~ + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + ~(Grin mischieviously at him)~ + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + ~(Grin mischieviously at him)~ + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + ~(Blush at his attention)~ + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + ~(Blush at his attention)~ + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + ~(Blush at his attention)~ + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + ~(Blush at his attention)~ + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + ~(Blush at his attention)~ + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + ~(Blush at his attention)~ + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + ~(Make an easygoing smile)~ + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + ~(Make an easygoing smile)~ + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + ~(Make an easygoing smile)~ + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + ~(Make an easygoing smile)~ + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + ~(Make an easygoing smile)~ + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + ~(Make an easygoing smile)~ + T1DarGaze6
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,1)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(2,2)~ + ~(Pause for a moment, then reluctantly smile)~ + T1DarGaze6
END

IF ~~ T1DarGaze1
  SAY ~(Darian returns your gaze with a slight smile)~
  IF ~~ EXIT 
END

IF ~~ T1DarGaze2
  SAY ~(Darian turns away from you, but there is a tinge of red to his face)~
  IF ~~ EXIT 
END

IF ~~ T1DarGaze3
  SAY ~(Darian frowns, and turns away)~
  IF ~~ EXIT 
END

IF ~~ T1DarGaze4
  SAY ~(Darian seems puzzled, and frowns)~
  IF ~~ EXIT 
END

IF ~~ T1DarGaze5
  SAY ~(Darian smiles as he returns your gaze)~
  IF ~~ EXIT 
END

IF ~~ T1DarGaze6
  SAY ~(Darian blushes slightly as he smiles in return)~
  IF ~~ EXIT 
END

IF ~~ T1DarHandLight
  SAY ~(You take Darian's hand in yours, but there is a great deal of tension, and Darian's eyes narrow at you)~
  + ~RandomNum(5,1)~ + ~(Try to ease the tension)~ + T1DarEase1
  + ~RandomNum(5,2)~ + ~(Try to ease the tension)~ + T1DarEase2
  + ~RandomNum(5,3)~ + ~(Try to ease the tension)~ + T1DarEase3
  + ~RandomNum(5,4)~ + ~(Try to ease the tension)~ + T1DarEase4
  + ~RandomNum(5,5)~ + ~(Try to ease the tension)~ + T1DarEase5
  + ~RandomNum(5,1)~ + ~(Just hold his hand softly)~ + T1DarEase1
  + ~RandomNum(5,2)~ + ~(Just hold his hand softly)~ + T1DarEase2
  + ~RandomNum(5,3)~ + ~(Just hold his hand softly)~ + T1DarEase3
  + ~RandomNum(5,4)~ + ~(Just hold his hand softly)~ + T1DarEase4
  + ~RandomNum(5,5)~ + ~(Just hold his hand softly)~ + T1DarEase5
  + ~RandomNum(3,1)~ + ~(Move Darian's hand towards your body)~ + T1DarMove1
  + ~RandomNum(3,2)~ + ~(Move Darian's hand towards your body)~ + T1DarMove2
  + ~RandomNum(3,3)~ + ~(Move Darian's hand towards your body)~ + T1DarMove3
  + ~RandomNum(4,1)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze1
  + ~RandomNum(4,2)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze2
  + ~RandomNum(4,3)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze3
  + ~RandomNum(4,4)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze4
END

IF ~~ T1DarEase1
  SAY ~(Darian frowns as you try to make him more at ease, and wordlessly withdraws his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarEase2
  SAY ~(Darian's face remains opaque, but he does relax the tension ever-so-slightly)~
  IF ~~ EXIT 
END

IF ~~ T1DarEase3
  SAY ~(There is an almost imperceptible smile on Darian's face, and he slowly relaxes his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarEase4
  SAY ~(Darian doesn't respond, but nor does he withdraw his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarEase5
  SAY ~(A puzzled frown comes over Darian, but he does relax fractionally)~
  IF ~~ EXIT 
END

IF ~~ T1DarMove1
  SAY ~(As soon as you try to move his hand towards you, Darian snaps his hand away from you)~
  IF ~~ EXIT 
END

IF ~~ T1DarMove2
  SAY ~(Darian blushes as he realizes your intentions, and removes his hand before things go any further)~
  IF ~~ EXIT 
END

IF ~~ T1DarMove3
  SAY ~(Although Darian does a poor job of concealing his tension, he allows you to continue until you touch his hand to your skin, at which point he abruptly withdraws his hand and turns away from you, blushing)~
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze1
  SAY ~Very funny, <CHARNAME>. (Darian withdraws his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze2
  SAY ~(Darian sighs good-naturedly as he realizes your intentions, and lets you continue until the pressure grows painful, and withdraws his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze3
  SAY ~I suppose you are trying to be funny? You're not.~
  IF ~~ EXIT 
END

IF ~~ T1DarSqueeze4
  SAY ~Not amusing, <CHARNAME>.~
  IF ~~ EXIT 
END

IF ~~ T1DarHandHeavy
  SAY ~(You easily take Darian's hand in yours, and there is a hint of a smile on his face as he wonders what you're about to do)~
  + ~RandomNum(4,1)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze1
  + ~RandomNum(4,2)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze2
  + ~RandomNum(4,3)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze3
  + ~RandomNum(4,4)~ + ~(Grin and squeeze Darian's hand as hard as you can)~ + T1DarSqueeze4
  + ~RandomNum(3,1)~ + ~(Just hold his hand)~ + T1DarHold1
  + ~RandomNum(3,2)~ + ~(Just hold his hand)~ + T1DarHold2
  + ~RandomNum(3,3)~ + ~(Just hold his hand)~ + T1DarHold3
  + ~RandomNum(4,1)~ + ~(Move his hand towards your body)~ + T1DarMoveA
  + ~RandomNum(4,2)~ + ~(Move his hand towards your body)~ + T1DarMoveB
  + ~RandomNum(4,3)~ + ~(Move his hand towards your body)~ + T1DarMoveC
  + ~RandomNum(4,4)~ + ~(Move his hand towards your body)~ + T1DarMoveD
END

IF ~~ T1DarHold1
  SAY ~(Darian holds your hand with a surprising strength. His warm gaze confirms he is no longer afraid of his feelings for you)~
  IF ~~ EXIT 
END

IF ~~ T1DarHold2
  SAY ~(Darian's hand relaxes into yours, and you enjoy a brief, tranquil moment together.)~
  IF ~~ EXIT 
END

IF ~~ T1DarHold3
  SAY ~(Darian tenses for a moment, but smiles as he relaxes)~
  IF ~~ EXIT 
END

IF ~~ T1DarMoveA
  SAY ~(Darian flinches slightly as you move his hand to you, and his look is apprehensive, but he does not withdraw)~
  IF ~~ EXIT 
END

IF ~~ T1DarMoveB
  SAY ~(Though clearly uneasy with you being so physical, Darian allows you free reign to continue as you move his hand to your body and across it)~
  IF ~~ EXIT 
END

IF ~~ T1DarMoveC
  SAY ~(Darian quickly withdraws his hand as he realizes what you were about to do. He blushes heavily and smiles)~
  IF ~~ EXIT 
END

IF ~~ T1DarMoveD
  SAY ~I am sorry, but now is really not the best time for that. (Withdraws his hand)~
  IF ~~ EXIT 
END

IF ~~ T1DarFlirtApproach
  SAY ~(Darian doesn't say a word, but from his posture, he is clearly aware that you're up to something)~
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,1)~ + ~(Run your fingers through his hair)~ + T1DarHair1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,2)~ + ~(Run your fingers through his hair)~ + T1DarHair2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,3)~ + ~(Run your fingers through his hair)~ + T1DarHair3
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(4,4)~ + ~(Run your fingers through his hair)~ + T1DarHair4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,1)~ + ~(Run your fingers through his hair)~ + T1DarHair1
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,2)~ + ~(Run your fingers through his hair)~ + T1DarHair2
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,3)~ + ~(Run your fingers through his hair)~ + T1DarHair3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,4)~ + ~(Run your fingers through his hair)~ + T1DarHair4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(5,5)~ + ~(Run your fingers through his hair)~ + T1DarHair5 
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,1)~ + ~(Try to tickle his wings)~ + T1DarTickle1
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,2)~ + ~(Try to tickle his wings)~ + T1DarTickle2
  + ~Global("T1DarRomanceActive","GLOBAL",1) RandomNum(3,3)~ + ~(Try to tickle his wings)~ + T1DarTickle3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,1)~ + ~(Try to tickle his wings)~ + T1DarTickle1
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,2)~ + ~(Try to tickle his wings)~ + T1DarTickle2
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,3)~ + ~(Try to tickle his wings)~ + T1DarTickle3
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,4)~ + ~(Try to tickle his wings)~ + T1DarTickle4
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,5)~ + ~(Try to tickle his wings)~ + T1DarTickle5
  + ~Global("T1DarRomanceActive","GLOBAL",2) RandomNum(6,6)~ + ~(Try to tickle his wings)~ + T1DarTickle6
  + ~RandomNum(2,1)~ + ~(Run the tips of your fingers down his back)~ + T1DarBack1
  + ~RandomNum(2,2)~ + ~(Run the tips of your fingers down his back)~ + T1DarBack2
END

IF ~~ T1DarHair1
  SAY ~(Darian grows even more uneasy, but he does not interfere as you continue to run your fingers through his windblown hair)~
  IF ~~ EXIT 
END

IF ~~ T1DarHair2
  SAY ~(No sooner do your fingers touch his hair than Darian steps away, blushing slightly)~
  IF ~~ EXIT 
END

IF ~~ T1DarHair3
  SAY ~(Darian stops your hand before it even reaches his hair, and slowly walks away)~
  IF ~~ EXIT 
END

IF ~~ T1DarHair4
  SAY ~Don't even think about it, <CHARNAME>.~
  IF ~~ EXIT 
END

IF ~~ T1DarHair5
  SAY ~(You softly run your fingers through Darian's hair. The white-blue strands are disorderly, but it occurs to you that a being native to the skies probably cares little for the state of his hair)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle1
  SAY ~(The instant you touch his wings, Darian abruptly turns around to face you. There is a hint of red to his features as he walks away)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle2
  SAY ~(Sensing your motion, Darian quickly steps away as you approach.)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle3
  SAY ~(As soon as your fingers touch the feathery down on his back, Darian turns around and removes your hand, unaware that he's blushing heavily)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle4
  SAY ~(Darian flinches as you begin to tickle him, and he makes a strangled noise as you launch your attack. Judging by his laughing as you tickle his wings, you get the impression his wings are sensitive indeed, and press the assault)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle5
  SAY ~(You begin to tickle Darian's wings. He abruptly recoils as your fingers touch the base of his wings, and laughs. Grinning, he fully unfolds his wings and brushes the wingtips against your back, tickling you in return with great precision. You both begin to laugh, only to abruptly stop as you notice the rest of the party staring at you)~
  IF ~~ EXIT 
END

IF ~~ T1DarTickle6
  SAY ~<CHARNAME>, this really isn't the best time for something like that...~
  IF ~~ EXIT 
END

IF ~~ T1DarBack1
  SAY ~(Despite the tension, Darian allows you to proceed. You run the tips of your fingers across his skin, which is softer than you had expected. As your hands move down to his back, you are surprised to find a coat of fine feathers extending all the way to the base of his neck. The feathers are as white as freshly fallen snow, and very soft. However, as soon as you find his folded wings, Darian turns and stops you wordlessly)~
  IF ~~ EXIT 
END

IF ~~ T1DarBack2
  SAY ~(Darian very hesitantly refuses to react as you run your fingers across his back. His skin is soft and cool to the touch, though he shivers slightly as your touch. As your fingers move down his side, you find the hard line of an old scar. However, Darian abruptly steps away from you, ending your ruminations.)~
  IF ~~ EXIT 
END

IF ~~ T1DarTalkSerious
  SAY ~What do you wish, <CHARNAME>?~
  + ~Global("T1DarRelationshipTalk","GLOBAL",0) GlobalGT("T1DarLoveTalk","GLOBAL",12)  OR(2) Global("T1DarRomanceActive","GLOBAL",1) Global("T1DarRomanceActive","GLOBAL",2)~ + ~Darian, I think there's something you should know about my past relationships.~ + T1DarRelationshipTalk
  ++ ~Could you tell me about the Seldarine?~ + T1DarSeldarine
END

IF ~~ T1DarRelationshipTalk
  SAY ~What about it?~
  ++ ~Darian... I've never been in one before.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelVirgin
  ++ ~I've certainly dated and flirted, but I've never been in a real relationship before.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelDate
  ++ ~I think you should know I've been deeply in love before.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelLove
  ++ ~I am... or was, depending on how you look at it, betrothed to a man already.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelFiance
  ++ ~Darian, I'm married.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1) SetGlobal("T1DarCharMarr","GLOBAL",1)~ + T1DarRelMarried
  ++ ~I've never had feelings before... for a man.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelLesbo
  ++ ~As much as I've been told I'm loved, I've never felt an actual emotional attachment to a man.~DO ~SetGlobal("T1DarRelationshipTalk","GLOBAL",1)~ + T1DarRelSlut
END

IF ~~ T1DarRelVirgin
  SAY ~That's not what I expected. Have you honestly never even been in a semi-romantic relationship with anyone?~
  ++ ~No. I've always been a solitary person-never felt the urge to get close to anyone before.~ + T1DarRelVirLone
  ++ ~I was too shy as a girl. There was a boy or two I liked, but I've never been able to actually approach anyone before.~ + T1DarRelVirShy
  ++ ~Well, I once had a really big crush on a boy, but I could never work up the nerve to talk to him.~ + T1DarRelVirCrush
END

IF ~~ T1DarRelVirLone
  SAY ~That's understandable enough, but I hope you know what you're doing. A relationship is far more complex than your studies might indicate.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelVirShy
  SAY ~I find that hard to imagine. But I hope you're prepared for what may come-a relationship is not an easy thing.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelVirCrush
  SAY ~A first, youthful love. Amongst my people, it's seen as a good thing to get it out and over with, but apparently yours are different. I hope you're ready for the future-relationships are complicated things.~
IF ~~ THEN EXIT
END

IF ~~ T1DarRelDate
  SAY ~To be honest, neither have I. But was there something else you wanted to say?~
  ++ ~You're not like any boyfriend I've had before. You're very different.~ + T1DarRelDateDiff
  ++ ~As much as I liked to flirt, I never let myself get too close to anyone.~ + T1DarRelDateFlirt
  ++ ~No, but thanks for listening to me.~ + T1DarRelDateLis
END

IF ~~ T1DarRelDateDiff
  SAY ~As are you quite different from any women I've been friendly with before. It would appear the blind are leading the blind...~
  IF ~~ EXIT 
END

IF ~~ T1DarRelDateFlirt
  SAY ~Perhaps... perhaps you were simply awaiting the right person... perhaps I was, as well.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelDateLis
  SAY ~It was no problem.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelLove
  SAY ~I'm not surprised. Would you mind explaining?~
  ++ ~I was in love with a man once. We ended up going our separate ways, in the end.~ + T1DarRelLoveSep
  ++ ~I did love someone else, but I'm afraid he died.~ + T1DarRelLoveSep
  ++ ~As much as I might carry someone else's torch, Darian, I haven't seen him for a long time now.~ + T1DarRelLoveTorch
END

IF ~~ T1DarRelLoveSep
  SAY ~I am sorry to hear that. I... understand, if you don't wish to continue our relationship.~
  ++ ~Why would I want that? My past relationship has no bearing on ours.~ + T1DarRelLoveEnd
  ++ ~I like you, Darian, and I certainly don't want to end our relationship.~ + T1DarRelLoveEnd
  ++ ~Perhaps... that would be for the best.~ + T1DarRelEndWish
END

IF ~~ T1DarRelLoveEnd
  SAY ~I simply didn't want to reopen old emotional wounds. But if you insist, we continue, I suppose I'll oblige. (Darian grins)~
  IF ~~ EXIT 
END

IF ~~ T1DarRelEndWish
  SAY ~If that is truly your wish, I will honor it.~
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarRelLoveTorch
  SAY ~Then I apologize if I was... untoward. I did not wish to interfere with your love.~
  ++ ~Darian... I haven't seen him in a long time. I think I had best start anew.~ + T1DarRelLoveEnd
  ++ ~You did nothing wrong, but I would prefer if we keep things just friendly from here on out.~ + T1DarRelEndWish
END

IF ~~ T1DarRelFiance
  SAY ~You're... betrothed?~
  ++ ~I was. He... he died.~ + T1DarRelFiaDead
  ++ ~Yes, but it isn't a matter of love. It's a matter of convenience and practicality.~ + T1DarRelFiaNolove
  ++ ~But I haven't seen my fiancé for a long time, Darian. Not since Baldur's Gate.~ + T1DarRelFiaMiss
END

IF ~~ T1DarRelFiaDead
  SAY ~Then I will not intrude on your grief.~
  ++ ~No, Darian, I welcome your company.~ + T1DarRelFiaCom
  ++ ~It's quite alright. You've helped me come to terms with, and move past, my grief.~ + T1DarRelFiaGrief
  ++ ~Thank you.~ + T1DarRelFiaTerm
END

IF ~~ T1DarRelFiaCom
  SAY ~I am relieved. I didn't want to seem improper.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaGrief
  SAY ~I am glad I was able to help, <CHARNAME>, and I am glad you've moved past your grief.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaTerm
  SAY ~I will take my leave of you, then.~
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ T1DarRelFiaNolove
  SAY ~I am deeply sorry. Is there no recourse in the matter?~
  ++ ~I am afraid not.~ + T1DarRelFiaBurn
  ++ ~I do not know. I want to be with you, but...~ + T1DarRelFiaWant
  ++ ~It doesn't matter. We're here, together.~ + T1DarRelFiaTog
END

IF ~~ T1DarRelFiaBurn
  SAY ~Then I will not make a mess of things for you.~
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ T1DarRelFiaWant
  SAY ~Well, let's just see what comes, I suppose.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaTog
  SAY ~There is that. And together, I hope we'll remain.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelFiaMiss
  SAY ~I'm sorry for being improper, then.~
  ++ ~No harm, no foul.~ + T1DarRelMissEnd
  ++ ~I don't know where he is, but you're here. Now.~ + T1DarRelMissNow
  ++ ~If he hasn't returned yet... I don't think he ever will. But you are here.~ + T1DarRelMissHere
END

IF ~~ T1DarRelMissEnd
  SAY ~As you wish.~
  IF ~~ DO ~SetGlobal("T1DarRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ T1DarRelMissNow
  SAY ~As improper as this is, if you truly wish to continue, I will.~
  ++ ~Yes, Darian. Please.~ + T1DarRelMissHere
  ++ ~I don't think it's necessary.~ + T1DarRelEndWish
END

IF ~~ T1DarRelMissHere
  SAY ~If you are certain...~
  IF ~~ EXIT 
END

IF ~~ T1DarRelMarried
  SAY ~Then I apologize for being improper. (Begins to turn away from you)~
  ++ ~Darian, I'm... a widow.~ + T1DarRelFiaDead
  ++ ~It's not a true marriage, Darian. There's no love in it, no happiness.~ + T1DarRelMarrTrue
  ++ ~Yes, but I don't want to lose you, Darian.~ + T1DarRelMarrLose
  ++ ~It was no problem, but perhaps it is better if we discontinue our relationship.~ + T1DarRelEndWish
END

IF ~~ T1DarRelMarrTrue
  SAY ~I am deeply sorry. My... my people do not recognize human marriages, and if you wish to continue our... relationship, I would like to do so.~
  ++ ~I'd like that as well.~ + T1DarRelMarrLike
  ++ ~No, perhaps it would be for the best if we part ways.~ + T1DarRelEndWish
END

IF ~~ T1DarRelMarrLike
  SAY ~We'll see what tomorrow brings, then.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelMarrLose
  SAY ~You won't lose me, <CHARNAME>. As long as you wish me here, I will remain.~
  ++ ~I do wish you here, Darian.~ + T1DarRelMarrLike
  ++ ~Perhaps we should end our relationship. I think it's gone too far.~ + T1DarRelEndWish
END

IF ~~ T1DarRelLesbo
  SAY ~I beg your pardon?~
  ++ ~It's the truth, Darian. I always preferred my own gender until I met you.~ + T1DarRelLesSec
  ++ ~I've laid with another in bed before, yes, but with a woman, not a man.~ + T1DarRelLesSec
  ++ ~Darian... Imoen and I were lovers for a long time.~DO ~SetGlobal("T1DarImoenCharLove","GLOBAL",1)~ + T1DarRelLesSec
END

IF ~~ T1DarRelLesSec
  SAY ~I... I'm not sure what to say. The idea that you've... that's... that's something new.~
  ++ ~You don't need to worry about that, though. You've pulled strings in my heart in a way no woman could.~ + T1DarRelLesEnd
  ++ ~No need to be shy. Technically, I'm still a virgin when it comes to men.~ + T1DarRelLesEnd
  ++ ~It's a rather liberating perspective, but with you, being weighed down seems like a pleasant alternative.~ + T1DarRelLesEnd
END

IF ~~ T1DarRelLesEnd
  SAY ~The idea that you've... this is going to take some getting used to...~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlut
  SAY ~What are you implying?~
  ++ ~I've had many lovers, Darian, but I never felt close to any of them. They weren't even true relationships.~DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutLov
  ++ ~I've become quite proficient in the bedchamber over the years, Darian. It's really quite enjoyable.~DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutProf
  ++ ~I've always been able to use my looks and my body to get what I want.~DO ~SetGlobal("T1DarCharSlut","GLOBAL",1)~ + T1DarRelSlutCharm
END

IF ~~ T1DarRelSlutLov
  SAY ~You mean... you've slept with many men?~
  ++ ~That a problem?~ + T1DarRelSlutProb
  ++ ~Why do you care how many men I've slept with?~ + T1DarRelSlutCare
  ++ ~I'm no wide-eyed maiden, that's for sure.~ + T1DarRelSlutMaid
  ++ ~Aerdrie Faeyna's the goddess of fertility isn't she? If anything, I'd imagine you'd be supportive of me.~ + T1DarRelSlutFert
END

IF ~~ T1DarRelSlutProb
  SAY ~I don't like this at all, but... I suppose I do trust you.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutCare
  SAY ~The very concept is appalling to me, but... I do trust you, so I suppose I must accept it.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutMaid
  SAY ~You... I don't know why I still trust you. But I do.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutFert
  SAY ~Let's just   SAY that not even followers of Hanali Celanil embrace that particular aspect of fertility with such... enthusiasm.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutProf
  SAY ~Ah... I have no idea how to respond to that.~
  ++ ~Allow me to show you...~ + T1DarRelSlutShow
  ++ ~I don't know... responding properly might be a bit naughtier than you're ready for right now.~ + T1DarRelSlutNaughty
  ++ ~Just keep blushing till your face is red as a Thayvian wizard's robes.~ + T1DarRelSlutBlush
END

IF ~~ T1DarRelSlutShow
  SAY ~(Darian backs away nervously, blushing furiously)~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutNaughty
  SAY ~In that... you are probably correct.~
  IF ~~ EXIT 
END

IF ~~ T1DarRelSlutBlush
  SAY ~Ah... it would appear I have little choice in the matter.~
IF ~~ THEN EXIT
END

IF ~~ T1DarRelSlutCharm
  SAY ~As much as I would like to   SAY your charms are wasted on me... that wouldn't be entirely accurate.~
  IF ~~ EXIT 
END

IF ~~ T1DarSeldarine
  SAY ~A broad topic, but the Seldarine are the elven gods. Of them, however, the Menel'Quessir follow but one-Aerdrie Faeyna.~
  ++ ~Why don't you worship any others of the Seldarine?~ + T1DarSelOthers
  ++ ~Is there any particular reason you follow Aerdrie Faeyna?~ + T1DarSelAerdrie
  ++ ~Are the Talons a fighting order devoted to Aerdrie Faeyna, then?~ + T1DarSelTalon
  ++ ~Could you tell me more about Aerdrie Faeyna?~ + T1DarSelExplain
  ++ ~Can you tell me something of who each of the Seldarine is?~ + T1DarSelOverview
END

IF ~~ T1DarSelOthers
  SAY ~We do venerate the others of the Seldarine, but we do not follow them, as it were. During the collapse of our civilization, we prayed to all of the Seldarine for salvation. Of them, however, only Aerdrie Faeyna answered.~
  ++ ~Is that why you worship Aerdrie Faeyna alone of the Seldarine? She saved your race from destruction?~ + T1DarSelSaved
  ++ ~But what if the rest of the Seldarine were simply supporting Aerdrie Faeyna, and did in fact help save your people?~ + T1DarSelWhatif
  ++ ~Surely you nonetheless worship at least Corellon Lotharion, though?~ + T1DarSelNonetheless
END

IF ~~ T1DarSelSaved
  SAY ~Yes. We are her children, and she is the sole reason we survive yet.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelWhatif
  SAY ~The possibility occurred to the long-ago priests as well, but the other Seldarine gave no hint that they were even aware of our plight. If they did support Aerdrie Faeyna's work, they gave no sign, and hence we owe them nothing.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelNonetheless
  SAY ~We revere him as the father of the elven races, but there are no priests of Corellon Lotharian amongst the Menel'Quessir. For all we know, he passively condoned the annihilation of our people, and that has left a mark, <CHARNAME>, one even thousands of years will not erase.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelAerdrie
  SAY ~When our civilization collapsed long ago, the ancient Menel'Quessiri priests prayed to the Seldarine for salvation. Of them, only Aerdrie Faeyna answered.~
  ++ ~Is that why you worship Aerdrie Faeyna alone of the Seldarine? She saved your race from destruction?~ + T1DarSelSaved
  ++ ~But what if the rest of the Seldarine were simply supporting Aerdrie Faeyna, and did in fact help save your people?~ + T1DarSelWhatif
  ++ ~Surely you nonetheless worship at least Corellon Lotharion, though?~ + T1DarSelNonetheless
END

IF ~~ T1DarSelTalon
  SAY ~As you would understand it, yes. We are deeply devoted to the defense of the Menel'Quessir, but in our culture, dedication to our people is dedication to the Winged Mother.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelExplain
  SAY ~The Winged Mother is a goddess primarily concerned with air, the weather, and fertility. She is regarded as being whimsical and unpredictable, even by other members of the Seldarine, but she watches over the Menel'Quessir vigilantly.~
  ++ ~A fertility goddess? You're devoted to a fertility goddess?~ + T1DarSelFertility
  ++ ~Why do you follow her so? Her personality seems at odds with you and your people.~ + T1DarSelAerdrie
  + ~!Race(Player1,HUMAN) Global("T1DarRomanceActive","GLOBAL",1)~ + ~I've never really experienced praying to one of the Seldarine as an elf does... might I join you the next time you pray?~ + T1DarSelPray
  + ~!Race(Player1,HUMAN) Global("T1DarRomanceActive","GLOBAL",2)~ + ~I've never really experienced praying to one of the Seldarine as an elf does... might I join you the next time you pray?~ + T1DarSelPrayRom
  ++ ~Thank you for sharing that with me.~ + T1DarSelThank
END

IF ~~ T1DarSelFertility
  SAY ~Fertility is but one aspect of the Winged Mother, but in that aspect she has blessed the Menel'Quessir since our fall. It is not, however, the aspect I most venerate.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelPray
  SAY ~I am sorry, <CHARNAME>, but prayer is a private thing, and I will not share it with you.~
  IF ~~ EXIT 
END

IF ~~ T1DarSelPrayRom
  SAY ~If you wish to join me in my evening prayers, you are welcome to, but I do not know what you are expecting-prayer is not a spectator sport, as they say.~
IF ~~ THEN EXIT
END

IF ~~ T1DarSelThank
  SAY ~It was nothing.~
  IF ~~ EXIT
END

IF ~~ T1DarSelOverview
  SAY ~If you wish. The Seldarine consists of Corellon Lotharian, Angharradh, Erevan Illesere, Aerdrie Faeyna, Fenmarel Mestarine, Hanali Celanil, Labelas Enoreth, Rillifane Rallathil, Sehanine Moonbow, and Solonor Thelandira.~
  ++ ~Tell me about Corellon Lotharian.~ + T1DarSelCorLoth
  ++ ~Tell me about Angharradh.~ + T1DarSelAngharr
  ++ ~Tell me about Erevan Illesere.~ + T1DarSelEreIll
  ++ ~Tell me about Aerdrie Faeyna.~ + T1DarSelExplain
  ++ ~Tell me about Hanali Celanil.~ + T1DarSelHanCel
  ++ ~Tell me about Labelas Enoreth.~ + T1DarSelLabEno
  ++ ~Tell me about Rillifane Rallathil.~ + T1DarSelRilRal
  ++ ~Tell me about Sehanine Moonbow.~ + T1DarSelSehMoo
  ++ ~Tell me about Solonor Thelandria.~ + T1DarSelSolThe
END

IF ~~ T1DarSelCorLoth
  SAY ~Corellon Lotharian is the creator of the elven races, who sprung from his very blood. He is the ruler of the Seldarine, and patron of the other elven races as a whole.~
  ++ ~Could you tell me more about him?~ + T1DarSelCorMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelCorMore
  SAY ~Corellon Lotharian is a god of both magic and war, though he sat idly by as the Menel'Quessir were destroyed, despite his supposed patronage. Henceforth, we revere Aerdrie Faeyna alone as our savior.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelAngharr
  SAY ~Angharradh is a composite goddess-she is the Queen of Arvandor, but she is three separate deities as well-Aerdrie Faeyna, Hanali Celanil, and Sehanine Moonbow. Angharradh seldom acts as a single goddess.~
  ++ ~Could you tell me more about her?~ + T1DarSelAngMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelAngMore
  SAY ~The Menel'Quessir do worship Angharradh, in a way, for Aerdrie Faeyna is a part of her. But we do not worship Angarradh as a unified whole, for her other aspects have left their rifts between themselves and the Menel'Quessir.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelEreIll
  SAY ~Erevan Illesere is the most unpredictable of the Seldarine-he is the patron of thieves, revelers, mischief-makers, and their ilk. As you might expect, the Menel'Quessir accord him little reverence.~
  ++ ~Could you tell me more about him?~ + T1DarSelEreMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelEreMore
  SAY ~Unpredictable and dangerous though he may be, Erevan Illesere remains fiercly devoted to the other elven races, and always returns when he is needed, save for the fall of the Menel'Quessir.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelHanCel
  SAY ~Hanali Celanil is the goddess of beauty, love, and joy. She is vain, flirtatious, and short-sighted, was responsible for driving Fenmarel Mestarine away from the Seldarine, and seldom knows when it is best not to interfere.~
  ++ ~Could you tell me more about her?~ + T1DarSelHanMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelHanMore
  SAY ~As you might have guessed from what I said, I have no reverence for the Heart of Gold. She is a meddler by nature, always attempting to foster love in elven hearts, even when such is not a wise course of action.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelLabEno
  SAY ~Labelas Enoreth is the god of time and history. He is a calm and patient deity, and his clergy tend to be philosophers, scholars, and teachers, passing knowledge on to the next generation.~
  ++ ~Could you tell me more about him?~ + T1DarSelLabMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelLabMore
  SAY ~The Menel'Quessir no longer particularly revere the Lord of the Continuum, but we heed his lessons well. In truth, if there is any other member of the Seldarine we worship, it would be Labelas Enoreth.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelRilRal
  SAY ~Rillifane Rallathil is perhaps the most serious-minded of the Seldarine, being the deity concerned first and foremost with nature in its entirety, not merely an aspect like the other Seldarine.~
  ++ ~Could you tell me more about him?~ + T1DarSelRilMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelRilMore
  SAY ~The Leaflord is said to be one of the oldest of the Seldarine-perhaps older even than Labelas Enoreth. He is mainly served by druids, which are virtually interchangable with clerics in most clergies.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelSehMoo
  SAY ~The Lady of Dreams is the most powerful goddess in the Seldarine, said to have had an important role in creating the elves. She is the goddess of illusions, the stars, and death.~
  ++ ~Could you tell me more about her?~ + T1DarSelSehMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelSehMore
  SAY ~Sehanine Moonbow is a truly enigmatic goddess-she is powerful and loyal to the other elven races, especially the moon elves, but little definite is known, even by her equally secretive clergy.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelSolThe
  SAY ~Solonor Thalandira is the god of hunting, archery, and survival in the wilderness. He is revered primarily by scouts and those whom you would rangers, but has relatively little worship by other elves.~
  ++ ~Could you tell me more about him?~ + T1DarSelSolMore
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

IF ~~ T1DarSelSolMore
  SAY ~I know little of Solonor Thelandria, to be honest. He was never an important deity to the Menel'Quessir, and remains little more than another of the Seldarine in our culture.~
  ++ ~Can I ask you about a different deity?~ + T1DarSelOverview
  ++ ~Thank you for sharing that.~ + T1DarSelThank
END

END

I_C_T2 NALIAJ 200 dariancommentnaliaentry
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Light on details, but it seems a sound enough plan for now. I'm almost impressed.~
END

I_C_T2 NALIAJ 201 dariancommentnaliapassage
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~A secret passage to your dungeon is located on an upper level of the bastion? Human architecture is even stranger than I had thought.~
END

I_C_T AERIE 3 dariancommentaeriereveal
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Wait. This one looks... different from a normal elf. The differences are minute, and she lacks wings, but could this be the source of the rumors?~
== AERIE ~W-what rumors?~
== T1DarJ ~One of the Menel'Quessir imprisoned here. Judging by the stumps I can see on your back, the rumors were correct. However, this one is no longer of the Menel'Quessir. <CHARNAME>, my mission here appears to have been for nothing. What to do with her, I leave to you.~
== AERIE ~So... will you help me?~
END

I_C_T NALIAJ 224 dariancommentnaliafather
== T1DarJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Nalia.~
== NALIAJ ~What?!~
== T1DarJ ~I do not understand your anger or your sorrow. Your father rests with whatever deity you worship, does he not?~
== NALIAJ ~Is that supposed to be comforting?~
== T1DarJ ~It is to the Menel'Quessir. Then again, what was I thinking, expecting a sensible reaction from a human?~
END

// Aran
I_C_T ARAN 1 t1dar_aran
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~A trade? How many strings do your 'services' come with, I wonder.~
END

I_C_T ARNBOY01 0 t1dar_arnboy
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~That's to your credit, n'tel'quess. Not to your master's, however.~
END

// Anomen
I_C_T ANOMENJ 186 t1dar_anomenj
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Indeed. Pity those who actually have ill mothers, due to vermin like this.~
END

// Bodhi
I_C_T BODHI 1 t1dar_bodhi1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~I hope even you can sense that this thing is a malign creature. Give the word and I will strike it down.~
END

I_C_T BODHI 6 t1dar_bodhi2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~I strongly advise we kill this thing *now*, <CHARNAME>. You can't seriously be thinking about trusting it.~
END

I_C_T2 BODHI 18 t1dar_bodhi3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~I seriously doubt this is a remotely good idea, <CHARNAME>, but it is your call.~
END

I_C_T BODHI 45 t1dar_bodhi4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~I don't think there are *any* good deeds to be done in this creature's service. Only lesser evils.~
END

// Brat 3
CHAIN IF
~See("t1dar")
InParty("t1dar")
!StateCheck("t1dar",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("brat3darian","AR0700",0)~
THEN BRAT3 t1dar_brat3
~Ye don't look like any elf I ever seen, mister. How'd ye get so pale?~
DO ~SetGlobal("brat3darian","AR0700",1)~
== T1DARJ ~It's normal where I'm from.~
== BRAT3 ~Really? Where ye from?~
== T1DARJ ~You've never heard of it. Trust me.~
EXIT

// Bodhi part deux
I_C_T C6BODHI 0 t1dar_bodhi5
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Did you think you could hide from us here? Vermin do so love to retreat underground...~
END

// Elhan
I_C_T C6ELHAN2 28 t1dar_elhan
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Either your leaders are incompetent or Irenicus is far more dangerous than I thought, if he could take your city. I'm not sure which troubles me more.~
END

I_C_T C6ELHAN2 35 t1dar_elhan2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~...And it never occurred to you that such a thing is more a danger than a help? (sigh)~
END

I_C_T C6ELHAN2 42 t1dar_elhan3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Meaning he's also competent, judging by your report of the situation.~
END

I_C_T C6ELHAN2 74 t1dar_elhan4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~We will. You can be sure of that.~
END

INTERJECT C6ELHAN2 82 t1dar_elhan5
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Walk with reverence? Look at this city, <CHARNAME>. It isn't contested - it's *lost*. These elves may only be my cousins, but there is only one fate for these... these monsters. And that fate is oblivion.~
END
  ++ ~Darian, I don't think I've ever heard you sound so angry before.~ EXTERN t1darj t1dar_sul
  ++ ~Easy, Darian. You'll leave permanent grip marks on your weapon if you stay like that.~ EXTERN t1darj t1dar_sul
  ++ ~Then we will let none survive.~ EXTERN t1darj t1dar_sul

INTERJECT C6ELHAN2 83 t1dar_elhan6
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Do not tarry? Look at this city, <CHARNAME>. It isn't contested - it's *lost*. These elves may only be my cousins, but there is only one fate for these... these monsters. And that fate is oblivion.~
END
  ++ ~Darian, I don't think I've ever heard you sound so angry before.~ EXTERN t1darj t1dar_sul
  ++ ~Easy, Darian. You'll leave permanent grip marks on your weapon if you stay like that.~ EXTERN t1darj t1dar_sul
  ++ ~Then we will let none survive.~ EXTERN t1darj t1dar_sul

CHAIN T1DARJ t1dar_sul
~I try not to succumb to outright anger and hatred. It's unprofessional. But seeing this... there's always time for exceptions.~
DO ~ActionOverride("SUELFW1",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW2",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW9",EscapeAreaObject("DOOR01"))
ActionOverride("SUELFW10",EscapeAreaObject("DOOR01"))
ActionOverride("C6ELHAN",EscapeAreaObject("DOOR01"))~
EXIT


I_C_T2 DASLAVE1 7 t1dar_slave1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Even armed, their escape won't be easy, but you've given them a fighting chance, <CHARNAME>. I salute you.~
END

/*
I_C_T DRUSH 0 t1dar_drush
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~An ogre... but one interested in parleying. I suppose hearing him out couldn't hurt.~
END  */

I_C_T FIRKRA01 3 t1dar_firkraag1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~That is why most lords have military forces, which I gather you do not. You are either painfully naive or simply incompetent.~
END

I_C_T FIRKRA02 0 t1dar_firkraag2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~By the Winged Mother... this was not what I expected to see during my mission...~
END

I_C_T2 FIRKRA02 21 t1dar_firkraag3
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Your sense is admirable... but are we really going to let it live because of one charitable whim? Don't be fooled by its poisonous tongue, <CHARNAME>.~
END

I_C_T2 FIRKRA02 25 t1dar_firkraag4
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~The Menel'Quessir are no longer your prey, dragon! For our fallen nation, for Myrrhavin, and for Aerdrie Faeyna, I will strike you down!~
END

I_C_T GAAL 4 t1dar_gaal
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Humans continue to surprise me. Your kind makes some very odd decisions about what to worship as a deity.~
END

I_C_T2 GAAL 23 t1dar_gaal2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Your god has fallen. You are next.~
END

I_C_T2 GAELAN 66 t1dar_gaelan
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Shadow Thieves? I'm guessing by the name that this is not a group renowned for their selflessness and heroism.~
END

I_C_T GORDEMO 1 t1dar_gordemo
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~There is something very, very old here. I... am not sure if I want to know what it is.~
END

I_C_T HENDAK 1 t1dar_hendak
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~It is not my place to interfere with human affairs, but I don't think I can condone what's happening here.~
END

I_C_T HENDAK 18 t1dar_hendak2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~I'm not sure this is a wise idea. Humans evidently make an industry from slavery. Purge this infestation, another will arise. Humans are a lost cause.~
END

I_C_T KALAH 1 t1dar_kalah
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Call one of my kind a beast again, and you forfeit your head's affinity for your shoulders.~
END

I_C_T MESSEN 5 t1dar_messen
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Your town probably deserves the attacks, in all likelihood. Let's move on, <CHARNAME>.~
== MESSEN ~Erm, well, what do you say?~
END

I_C_T2 NALIA 45 t1dar_nalia
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~This one calls herself Nalia. She's been accosting everyone with a sword or looks like they can cast a spell, babbling about trolls or some such. Not my concern, however.~
END

I_C_T PPAPHRIL 4 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN ~Fascinating, if obviously detrimental to one's sanity.~
END

I_C_T PPAPHRIL 5 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN ~Fascinating, if obviously detrimental to one's sanity.~
END

I_C_T PPAPHRIL 6 t1dar_aphril
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID) !Global("t1dar_aphril","GLOBAL",1)~ THEN ~Fascinating, if obviously detrimental to one's sanity.~
END

I_C_T2 PPSAEM 14 t1dar_saemon
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Ugh. It's utterly impossible to properly stretch one's wings on a ship. And I need a bath. Now.~
END

I_C_T2 PPSAEM 53 t1dar_saemon1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Ugh. It's utterly impossible to properly stretch one's wings on a ship. And I need a bath. Now.~
END

INTERJECT RENFELD 6 t1dar_renfield
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~What's the hurry? Surely someone here has a cure poison spell or potion available.~
== RENFELD ~It is...no use, I am afraid.  I have already attempted to neutralize the poison inside me.  I...do not know...what has been done to me.  Please...I must go to my friends...~
COPY_TRANS RENFELD 4

I_C_T SUAVATAR 6 t1dar_suavatar
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Not that it wasn't already obvious, but Irenicus needs to die, and soon. If he's aiming to join the Seldarine... we cannot let this happen.~
END

I_C_T SUDEMIN 11 t1dar_sudemin
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~No kidding.~
END

INTERJECT SUDEMIN 26 t1dar_sudemin1
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~So after nearly wiping out your civilization and corrupting the Tree of Life in an attempt at godhood, when your people defeated him and Bodhi, you LET THEM GO?!~
= ~Worse, your queen invoked divine power to curse them... by removing their immortality? Rather than, say, removing their magic, imprisoning them, or something else that could, oh, STOP THEM FROM DOING IT AGAIN?! Or simplest of all, you didn't simply execute them?! I don't mean to rub it in, but... words do not exist to describe how *stupid* this is.~
= ~Now if you'll excuse me, my head hurts from trying to understand all this.~
== SUDEMIN ~We had hoped this would turn out better.  The Exile has found a way to restore himself, has made pacts with our most despised enemies, and has resumed his original plot.~
COPY_TRANS SUDEMIN 27

I_C_T TIRDIR 2 t1dar_tirdir
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~To be buried alive... that never occurred to me as a way to be killed. I don't think I'm happier with that bit of learning.~
END

I_C_T TOLGER 80 t1dar_tolgerias
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Valygar is a better man than you, wizard. You're both human so that doesn't mean much, but the principle stands.~
END

I_C_T2 UDPHAE01 161 t1dar_phaerie
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~You drow really don't live up to your reputation as cunning masterminds...~
END

I_C_T UDSILVER 0 t1dar_silver
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~A dragon, down here of all places? Silvers aren't supposed to be as malevolent as their chromatic kin, for whatever that's worth.~
END

I_C_T UDSILVER 53 t1dar_silver2
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~This sort of magic would have made my mission into Athkatla much easier. Thank you, wyrm... I think.~
END

I_C_T2 UHMAY01 35 t1dar_mayor
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~Congratulations, <CHARNAME>. These hill folk seem to be decent people, for humans.~
END

I_C_T DRAGBLAC 0 t1dar_blackdragon
== T1DARJ IF ~InParty("t1dar") !StateCheck("t1dar",CD_STATE_NOTVALID)~ THEN ~At this point, I don't think Irenicus can surprise me with his depravity anymore, even bringing a damn dragon into the city...~
END

I_C_T Player1 5 T1dar_transform
  == T1DARJ IF ~InParty("t1dar")~ THEN
  ~By the Winged Mother! What the hell did Irenicus do to you?! We need to get you out of here, and soon.~
END

// Trademeet Gypsy
EXTEND_BOTTOM TRGYP02 2
  IF ~!InPartySlot(LastTalkedToBy,0) Name("T1Dar",LastTalkedToBy)~ EXTERN TRGYP02  T1DarGypsy_0
END

APPEND TRGYP02
IF ~~ T1DarGypsy_0
  SAY ~You find dignity and pride in your suffering, elf, but you still suffer. Let go of your quest for a martyr's crown.~
  IF ~~ EXTERN T1DarJ T1DarGypsy_1
END
END

APPEND T1DarJ
IF ~~ T1DarGypsy_1
  SAY ~You know nothing of me or my people, human. Nor shall you ever.~
  IF ~~ EXIT
END
END

// In Hell
I_C_T PLAYER1 25 T1Dar_Hell
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~You are simply incapable of letting someone have an honorable death, aren't you? If it's not resurrection, it's... this.~
END

// Irenicus in Hell (insulting him)
I_C_T HELLJON 7 T1Dar_Iren
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Ellesime's folly lay in letting you live because of the feelings she had for you. She was too weak to do what was necessary. It is time to correct her mistake.~
END

I_C_T HELLJON 8 T1Dar_Iren1
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Ellesime's folly lay in letting you live because of the feelings she had for you. She was too weak to do what was necessary. It is time to correct her mistake.~
END

I_C_T HELLJON 9 T1Dar_Iren2
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Ellesime's folly lay in letting you live because of the feelings she had for you. She was too weak to do what was necessary. It is time to correct her mistake.~
END

I_C_T HELLJON 10 T1Dar_Iren3
  == T1DarJ IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID)~ THEN ~Ellesime's folly lay in letting you live because of the feelings she had for you. She was too weak to do what was necessary. It is time to correct her mistake.~
END

// Tree of Life
EXTEND_BOTTOM PLAYER1 33
IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarTreeofLife","GLOBAL",0) !Global("T1DarRomanceActive","GLOBAL",2)~
EXTERN PLAYER1 T1DarToL
IF ~InParty("T1Dar") InMyArea("T1Dar") !StateCheck("T1Dar",CD_STATE_NOTVALID) Global("T1DarTreeofLife","GLOBAL",0) Global("T1DarRomanceActive","GLOBAL",2)~
EXTERN PLAYER1 T1DarToL_rom
END

CHAIN PLAYER1 T1DarToL
~Darian, the Avariel warrior, has never made a secret of his reservations about you and your people. Yet long after any sensible person would have declared his debt to you fulfilled, he has stood unwavering at your side.~
END
  ++ ~Darian, you're an Avariel. You have your own people, your own life to return to. This hasn't ever been your fight, least of all now.~ DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_1
  ++ ~You fulfilled your debt to me a long time ago, Darian. You don't need to take it this far.~ DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_2
  ++ ~This isn't going to be easy, Darian, and I need you more than ever. Are you ready?~ DO ~SetGlobal("T1DarTreeofLife","GLOBAL",1)~ EXTERN T1DarJ T1DarToL_3

CHAIN PLAYER1 T1DarToL_rom
~You look to Darian, the duty-bound Avariel with whom you have against all odds built a relationship with. He notices your gaze, and stops you before you can speak.~
DO ~SetGlobal("T1DarTreeOfLife","GLOBAL",1)~
== T1DARJ ~There is a time for talking, melamin, but this isn't that time. Not to rebel against the poets, but I believe we should save your soul and the world first, exchange emotional declarations and confessions later.~
COPY_TRANS PLAYER1 33

APPEND T1DarJ
  IF ~~ T1DarToL_1
    SAY ~There was a time you would have had a point, <CHARNAME>. But that time is long in the past. I will stand by you to the end.~
    COPY_TRANS PLAYER1 33
  END

  IF ~~ T1DarToL_2
    SAY ~To put it bluntly, if I left now I don't think I could look myself in the mirror again. Duty if nothing else does demand I take it this far.~
    COPY_TRANS PLAYER1 33
  END

IF ~~ T1DarToL_3
    SAY ~I am. Irenicus will not walk away from us this time.~
    COPY_TRANS PLAYER1 33
  END

END
