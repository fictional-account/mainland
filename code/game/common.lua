hero = obj {
  nam           = "myself",--"себя",
  Exam          = function(s)
                    if deref(here()) == "dream" then
                      return [[Dressed to receive Her Majesty. Just a bit ragged perhaps.]];
                    elseif entry8._open then
                      return [[I have no desire to look at myself.]] --[[У меня сейчас нет желания разглядывать себя.]];
                    else
                      return inventory(s);
                    end
                  end
}

mainland = obj {
	nam			= "mainland"
}

stead.savename = function(s)
  if mainland._episode == nil then
    return txtb("Mainland");
  else
    return mainland._episode;
  end
end

function wearall()
  jacket._off = false;
  shoes._off = false;
end

pants = item {
   nam          = _"pants"--_"потертые брюки"
  ,dress        = true
  ,TakeOff      = [[That's a flawed plan.]]--[[Не думаю, что снимать брюки -- это хорошая идея.]]
  ,Throw        = [[I mustn't roam about like a native.]]--[[Не стоит мне это делать.]]
  ,ThrowIn      = redirect_("Throw", "pants")
  ,withPure     = true
}

kerchief = item {
   _drink       = false --handkerchief is in drink
  ,_dirty       = true
  ,nam          = _"kerchief"--_"платок"
  ,Exam         = choose_ {
                     ["default"] = [[A crumpled silk handkerchief with my initials embroidered on the corner.]]--"Носовой платок, на котором вышиты мои инициалы, весь измятый и грязный, как будто им протирали обувь."
                    ,["kerchief._drink and not spyglass2._taken"] = [[It harbors the smell of cheap whiskey.]]
                        --"От носового платка сильно пахнет спиртным, у меня даже начинает слегка кружиться голова."
                    ,["kerchief._drink and spyglass2._taken"] = [[My handkercheif with my initials, and the faint smell of whiskey.]]--"Измятый носовой платок, на котором вышиты мои инициалы. От платка все еще исходит легкий запах спиртного."
                  }
  ,Clean        = choose_ {
                     ["default"] = [[I should launder it back in civilization one day.]]--[[Надо бы сполоснуть его в воде, но сейчас некогда этим заниматься.]]
                    ,["not kerchief._dirty"] = [[It looks clean enough.]]--[[Платок и так достаточно чистый.]]
                  }
  ,Throw        = [[I don't want to throw a keepsake away. It would appear to be nothing before the eyes of Her Majesty the Queen, but it reminds me of London, and my father.]] --[[Мне не хочется выбрасывать свой платок. Выглядит он, конечно, не очень, но все же... Этот платок напоминает мне о Лондоне, о моем отце.]]
  ,ThrowIn      = [[What would make me think of doing that?]]--[[Зачем? К тому же платок все равно слишком легкий, я не смогу его добросить.]]
  ,Wear         = [[I could tie it around my neck to spite the wind. However it's rather filthy.]]
  ,Wet          = choose_ {
                     ["default"] = chain_ { set_("kerchief._drink"), 
					 [[I pour a bit of whiskey into the silk, hopefully enough to kill the smell.]]
					 --[[Я вылил немного виски на платок. Надеюсь, это поможет перебить запах в трюме.]]}
                    ,["kerchief._drink"] = [[It absorbs the alcohol.]] --[[От платка и так уже несет виски.]]
                  }
  ,Wash         = [[I'm afraid seawater might ruin it.]] --[[Мне кажется, соленая вода окончательно испортит мой платок.]]
  ,withClean    = true
  ,withPure     = true
  ,withBant     = true
}

jacket = item {
   _off         = false --jacket is taken off
  ,dress        = true
  ,nam          = _"jacket"--_"камзол"
  ,Clean        = use_ {
                     ["kerchief"] = [[I spit into my handkerchief and rub the exterior of the jacket, but truth be told I know it cannot help much. It is thoroughly soiled.]]
                    ,["jacket"] = [[I rub both halves at the hem together, but it accomplishes nothing. The filth is beyond me.]]
                  }
  ,Exam         = choose_ {
                     ["have(kerchief)"] = [[Heavy with grime, it keeps out the wind and rain. Unfortunately most of the buttons are missing, and it's threadbare in places. There's a gaping hole in the right sleeve.]]
                        --[[Этот камзол, уже отяжелевший от грязи, защищает меня от ветра и дождя, но, к несчастию, он уже весь износился -- 
                          большинство пуговиц отвалились, манжеты обвисли, да и правый рукав порвался.]]
                       
                    ,["default"] = 
                        chain_ {
                          take_("kerchief"), [[Heavy with dirt and grime, the jacket protects from the harrowing wind and rain of the tropics. Unfortunately most of the buttons are missing, and the right sleeve is torn. 
						  ^Checking my pockets I feel the paranoia of an immigrant on the streets of London, where a man is never sure of his possessions.
							^In the chest pocket is my crumpled silk handkerchief.]] --[[Этот камзол, отяжелевший от грязи, защищает меня от ветра и дождя, но, к несчастию, он уже весь износился -- 
                            большинство пуговиц отвалились, манжеты обвисли да и правый рукав порвался. Хорошо хоть, что карманы еще не худые --
                            но все равно у меня почему-то возникает неприятное давящее чувство, будто бы я забыл или потерял что-то очень важное.^
                            Я проверил камзол и нащупал в нагрудном кармане шелковый кулёк -- это оказался мой смятый носовой платок.]]
                        }
                  }
  ,TakeOff      = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("jacket._off"),
                          location_ {
                             ["default"] = [[I let the jacket slip from my shoulders.]] --[[Я снимаю свой тяжелый засаленный камзол.]]
                            ,["cliff"] = [[I take off my jacket. Blasts of freezing rain feel like a hundred icy javelins tossed from the depths by Triton.]] --[[Я снимаю камзол и перекидываю его через плечо. Вряд ли я смогу долгу простоять так здесь, на утесе. С каждым порывом ветра меня пронизывает холодом.]]
                          }
                        }
                    ,["jacket._off"] = [[I've already taken off my jacket.]] --"Я уже снял камзол."
                  }
  ,Wear         = choose_ {
                     ["default"] = [[I'm wearing my jacket.]] --"Камзол и так на мне."
                    ,["jacket._off"] = 
                        chain_ {
                          unset_("jacket._off"),
                          location_ {
                             ["default"] = [[I'm wearing my jacket.]] --[[Я надеваю свой камзол.]]
                            ,["cliff"] = [[Without this jacket I'd be a poorer man.]] --[[Я надеваю свой камзол -- он хоть немного защищает от этого резкого ветра.]]
                          }
                        }
                  }
  ,Throw        = [[I have no desire to freeze while outdoors.]] --[[Я не привык выбрасывать одежду.]]
  ,ThrowIn      = redirect_("Throw", "jacket")
  ,Wash         = [[I can't get it clean, but I can't get it any more wet than it already is either.]] --[[Мне совсем не хочется мочить свою куртку.]]
  ,withClean    = true
  ,withPure     = true
}

spyglass2 = item {
   _taken       = false --Spyglass is taken
  ,nam          = _"spyglass"--_"подзорная труба"
  ,Exam         = [[This telescope belonged to the captain. It's remarkably small, with an elegant telescoping mechanism and gilded brass fittings. On the bottom are engraved the letters "TM". Perhaps it came into his possession as a gift, or an inheritance from another sailing man in his family. He maintained a very strong fondness for it, as if it carried a greater value than its worth as a tool.]]  --[[Я видел эту подзорную трубу у капитана всего несколько раз. Подзорная труба совсем небольшая, с телескопическим механизмом, и, кажется, позолоченная. У основания есть гравировка - "Т. М.", но капитана звали Патрик. Быть может, она досталась ему от кого-то в наследство или же он просто купил ее в лавке старьевщика? Но капитан очень берег свою подзорную трубу, точно она представляла для него особую, теперь уже неисследумую ценность.]]
  ,Take         = chain_ { drop_("rope"), drop_("flask"), drop_("candle"), set_("spyglass2._taken"), take_("spyglass2"), unset_("shoes._off"), unset_("jacket._off"), wearall, walk_("entry3") }
  ,Throw        = [[It will most likely be of some use to me.]] --[[Я не собираюсь выбрасывать подзорную трубу.]]
  ,ThrowIn      = redirect_("Throw", "spyglass2")
  ,Use          = location_ {
                     ["cliff2"] = function() return reu_cliff2island end
                    ,["othershore_ocean"] = function() return reu_othershoreocean end
                    ,["cliff3"] = 
                        choose_ {
                           ["default"] = function() return reu_cliff3spyglass end
                          ,["cliff3._vessel"] = function() return reu_cliff3vessel end
                        }
                  }
  ,withExamWith = true
}

shoes = item {
   _off         = false --Boots are taken off
  ,dress        = true
  ,nam          = _"shoes"--_"ботинки"
  ,Exam         = location_ {
                     ["default"] =[[My battered shoes. When we left the great city they shined as if prepared to carry me to the grandest of balls.]] --[[Мои истоптанные ботинки. Когда мы только отплывали из Лондона, они сверкали так, словно я вырядился на бал. Теперь же моя обувь выглядит как у бездомного.]]
                    ,["dream"] = [[Polished leather held taut by waxed laces.]] --[[Мои новенькие лакированные ботинки.]]
                  }
  ,Clean        = use_ {
                     ["kerchief"] = chain_ { set_("kerchief._dirty"), [[I wipe them with my handkerchief. Not much effect, and now the handkerchief is soiled.]] --"Я протер ботинки платком -- сильно это их вид не улучшило, а платок совсем запачкался."}
                    ,["jacket"] = [[I can't clean them with my sleeve.]] --"Я не буду чистить ботинки камзолом."
                  }
  ,Throw        = [[I'll need these shoes.]] --[[Не думаю, что стоит выбрасывать свои ботинки.]]
  ,ThrowIn      = redirect_("Throw", "shoes")
  ,TakeOff      = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("shoes._off"),
                          location_ {
                             ["default"] = [[I remove my shoes and stand barefoot.]] --"Я снял ботинки. Теперь я стою босиком."
                            ,["cliff"] = [[My feet react to the stones and my teeth begin to quake.]] --[[Я снял ботинки и встал босиком на холодные камни утеса. Вскоре меня начал бить озноб от холода.]]
                            ,["maindeck"] = [[The soles of my feet burn against the cold planks of the ship's deck.]]
                          }
                        }
                    ,["shoes._off"] = [[I've taken off my shoes.]] --"Я уже снял ботинки."
                  }
  ,Wear         = choose_ {
                     ["default"] = [[I'm wearing shoes.]] --"Ботинки и так на мне."
                    ,["shoes._off"] =
                        chain_ {
                          unset_("shoes._off"), [[I quickly lace them. I should not remain barefoot out of doors for long.]] --"Я быстро натянул свои ботинки -- вряд ли мне стоит разгуливать босиком."
                        }
                  }
  ,Wash         = [[Washing them could ruin the leather.]] --[[Так я только испорчу свои и без того растрепанные ботинки.]]
}
}

cmn_floor = item {
   nam          = _"floor"--_"~пол"
  ,Exam         = [[Nothing on the floor piques my interest.]] --[[Я осматриваю пол и не замечаю ничего интересного.]]
  ,Lie          = [[I'm too restless to lie down.]] --[[У меня нет желания ложиться на пол.]]
  ,Sit          = [[I prefer not to sit here.]] --[[Я бы предпочел не сидеть на полу.]]
  ,Fire         = [[It crosses my mind to set fire to the room. What is happening to me?]] --[[Не уверен, что у меня получится поджечь пол, да и зачем мне делать это?]]
  ,FireOff      = [[The floor won't burn.]] --[[Пол не горит.]]
  ,Clean        = [[I shouldn't be cleaning right now.]] --[[У меня нет желания заниматься уборкой.]]
  ,Wet          = [[I'd rather it remain dry.]] --[[Зачем мне пачкать пол?]]
  ,WalkOn       = [[I walk around a bit.]] --[[Я прошелся по полу.]]
  ,withThrow    = true
  ,withPure     = true
}

cmn_dirt = item {
   nam          = _"~dirt"--_"~земля"
  ,Exam         = [[It is dirty.]] --[[Я не нашел на земле ничего интересного.]]
  ,Sit          = [[Too dirty there.]]--[[Я не настолько устал, чтобы садиться на землю.]]
  ,Lie          = [[I won't lie down on the dirty floor.]]--[[У меня нет желания лежать на земле.]]
  ,WalkOn       = [[My tired feet leave clumsy prints behind me.]] --[[Я немного прошелся по земле, точно отмеряя что-то своими неловкими уставшими шагами.]]
  ,withThrow    = true
}