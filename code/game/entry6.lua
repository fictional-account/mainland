--Entry 6. Gameplay rooms: 4

entry6 = diary {
   nam          = "September 15th, 1746"--"15 сентября 1846 года"
  ,enter        = music_("paper")
  ,dsc          = [[My condition worsens by the day. I pray this will pass as the will in me diminishes by the hour. My leg is lame, the wound did not heal properly. 
  ^I do not believe it worthwhile to explore the ship again until the storm has ceased, but this leaves me confined me to the cabin. The captain rests just outside the door...
  ^My erratic mind encourages me at times. I am so close to the colonies, and plantations where compatriots might send word to London. I launch the dinghy in my fantasy, such a short distance to salvation.
  ^If only I can get that craft into the water.]]--[[Состояние мое ухудшается с каждым днем, и надежды на то, что эта островная лихорадка пройдет сама собой, остается у меня все меньше. Да и нога продолжает болеть, рана никак не затягивается, а все, что я могу делать -- это менять повязки.^^  Наверное, не стоило мне спускаться с корабля во время ливня -- однако тогда я большую часть времени проводил бы здесь, в духоте, точно наказывая себя за какие-то грехи добровольным заключением в чужой каюте.^^ Однако плохое самочувствие лишь сильнее подталкивает меня к мысли, что надо как-нибудь убираться с этого острова. Я уверен -- поблизости должны быть другие острова, с колониями и плантациями, с моими соотечественниками, и, быть может, если я смогу туда добраться, то уже через несколько дней отправлюсь домой, в Лондон. Тот остров, который я десятки раз разглядывал через подзорную трубу... Ведь до него всего лишь несколько тысяч ярдов! Даже я смог бы доплыть туда на лодке и, возможно, именно это ничтожное расстояние и отделяет меня от спасения.^^ Я долго думал о том, как спустить на воду шлюпку. Кажется, шлюпка у бизань-мачты достаточно мала для того, чтобы я смог с ней справиться в одиночку. Правда, мне придется просто столкнуть ее в воду, а здесь совсем мелко. Да и шлюпка может попросту перевернуться. Однако у меня нет другого шанса.]]
  ,next         = walk_("maindeck2")
}

captaincabin = scene {
   nam          = _"In the captain's cabin"--_"В каюте капитана"
  ,obj          = { 
                     "captaincabin_itself"
                    ,"captaincabin_painting"
                    ,"captaincabin_desk"
                    ,"knife2"
                    ,"captaincabin_journal"
                    ,"captaincabin_bed"
                    ,"captaincabin_goout"
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("maindeck2")
  ,TurnAround   = [[There is no one here but me.]]--[[В каюте нет никого, кроме меня.]]
  ,Wait         = [[It is best not to wait.]]--[[Дождь может скоро начаться. Лучше не терять времени.]]
}

captaincabin_itself = item {
   nam          = _"cabin"--_"каюта"
  ,dsc          = [[The situation is the same in the cabin, quiet and macabre...]]--[[Обстановка в этой каюте мне знакома уже до самых мелочей. Я запомнил даже грубоватые мазки на картине с парусником, хотя  никогда не любил ее разглядывать. Сегодня в капитанской каюте довольно душно, и мне не слишком хочется здесь задерживаться. Хотя если пойдет дождь, мне все равно придется сюда вернуться.]]
  ,Exam         = [[Nothing has changed, it is the refuge that saves me and ruins me.]]--[[Не стоит мне терять время.]]
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

captaincabin_painting = item {
   nam          = _"painting"--_"картина"
  ,Exam         = [[I admire the painter's skill, but the image is too familiar. It elicits such raw emotions, those I felt as the sea carried us into harm's way. I do not enjoy looking at it...]]--[[У меня нет времени любоваться этой картиной. Да и смотреть-то особенно не на что.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = redirect_("Move", "captaincabin_desk")
  ,Cut          = [[The imagery, the brushstrokes, the color... they consume me.]]--[[Да уж, эта картина и правда начинает сильно раздражать меня, раз такие мысли приходят мне в голову.]]
  ,KnifeCut     = redirect_("Cut", "captaincabin_painting")
}

captaincabin_desk = item {
   nam          = _"table"--_"стол"
  ,Exam         = [[The ship's logbook is still, full of the captain's daily account.]]--[[За этим столом я веду бортовой журнал "Майского цветка", точно и правду став капитаном разбившегося корабля.]]
  ,SitAt        = [[There is no rest to be had sitting at the desk.]]--[[Сейчас не время делать записи в журнале.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = [[The desk is too large.]]--[[Сейчас не время заниматься этим.]]
  ,Ascend       = redirect_("Move", "captaincabin_desk")
  ,Climb        = redirect_("Move", "captaincabin_desk")
  ,ClimbIn      = redirect_("Move", "captaincabin_desk")
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

knife2 = item {
   nam          = _"paper cutter"--_"нож для бумаг"
  ,dsc          = [[There is a decorative letter opener laying on the desk. It has a pearl handle.]]--[[^На письменном столе лежит нож для бумаг.]]
  ,Exam         = [[It is quite attractive.]]--[[Нож для бумаг с красивой рукояткой и тонким лезвием.]]
  ,Take         = chain_ { take_("knife2"),[[I pick up the tool.]]--[[ "Я взял со стола нож для бумаг."]] }
  ,Throw        = [[Am I a swordsman? Perhaps a rogue?]]--[[Зачем мне выбрасывать нож для бумаг?]]
  ,withKnifeCut = true
}

captaincabin_journal = item {
   nam          = _"logbook|~log|~Diary"--_"бортовой журнал|~журнал|~дневник"
  ,dsc          = [[The logbook is open, awaiting the captain's pen.]]--[[Мой бортовой журнал открыт -- так, словно я отошел лишь на пару минут и собираюсь вскоре вновь продолжить свои записи.]]
  ,Exam         = [[The first line reads:
  ^<i>...punishing himself for some sins freely arrived in another cabin.</ i>.
  ^What thoughts were tormenting the man?]]--[[Я невольно читаю первую попавшуюся на глаза строчку: <i>...наказывая себя за какие-то грехи добровольным заключением в чужой каюте</i>.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,KnifeCut     = [[I cut away some blank pages.]]--[[Я уже разрезал все страницы в журнале.]]
  ,Take         = [[There is no need to carry the log book with me.]]--[[Нет нужды носить с собой бортовой журнал.]]
}

captaincabin_goout = item {
   nam          = _"deck"--_"палуба"
  ,Walk         = redirect_("Exit", "captaincabin")
  ,DescendOn    = redirect_("Exit", "captaincabin")
  ,Climb        = redirect_("Exit", "captaincabin")
}

captaincabin_bed = item {
   nam          = _"In|~Bed"--_"постель|~кровать"
  ,Lie          = [[I lie down in the captain's bed and the rain strengthens.]]--[[Лучше попробовать спустить лодку, пока не пошел дождь.]]
  ,Sit          = redirect_("Lie", "captaincabin_bed")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = [[The bed frame is solid oak, much too heavy for me to move.]]--[[Постель слишком тяжелая, к тому же у меня нет времени этим заниматься.]]
  ,Ascend       = redirect_("Lie", "captaincabin_bed")
  ,Climb        = redirect_("Lie", "captaincabin_bed")
  ,ClimbIn      = redirect_("Lie", "captaincabin_bed")
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

maindeck2 = scene {
   nam          = _"On deck"--_"На палубе"
  ,enter        = music_("reachingout", 0)
  ,obj          = { 
                     "maindeck2_itself"
                    ,"maindeck2_parus"
                    ,"maindeck2_mast"
                    ,"maindeck2_mast2"
                    ,"maindeck2_boat"
                    ,"maindeck2_cover"
                    ,"maindeck2_hold"
                    ,"maindeck2_cabin"
                    ,"maindeck2_boxes"
                    ,"maindeck2_ship"
                    ,"maindeck2_shore"
                  }
  ,Wait         = [[Hope is fleeting. I need to deal with the dinghy soon.]]--[[Дождь может скоро начаться. Лучше не терять времени и попробовать спустить лодку. У меня почему-то возникает такое чувство, что если я не попытаюсь сделать это сейчас, то уже никогда не смогу покинуть этот остров. Как если бы у меня остался последний шанс, последняя возможность.]]
  ,TurnAround   = [[I look around the deck. Nothing seems out of order.]]--[[Я на палубе один.]]
}

maindeck2_itself = item {
   nam          = _"deck"--_"палуба"
  ,dsc          = [[I stand on the deck, aware that I might have only an hour before the sky lets free the rain clouds, which so often transform noon to midnight since my ship's arrival.]]--[[Я стою на палубе. Небо сегодня снова пасмурное, однако дождя пока еще нет. Возможно, у меня есть всего лишь час или два до тех пор, пока вновь не начнется ливень на несколько дней -- такой, что не отличишь даже полдень от сумерек.^]]
  ,Sit          = [[I have no time to rest.]]--[[У меня нет времени этим заниматься, скоро может пойти дождь. Лучше попробовать передвинуть лодку, а не рассиживаться на палубе.]]
  ,Lie          = [[I have no desire to lie down on the hard deck.]]--[[Я еще не окончально выжил из ума, чтобы лежать на палубе.]]
  ,Exam         = [[The smallest of the two dinghies waits near the mizzenmast.]]--[[Я осматриваюсь. Шлюпка у бизань-мачты -- самая маленькая. Если у меня и есть шанс спустить хоть какую-нибудь шлюпку на воду, то это именно она.]]
  ,WalkOn       = [[I walk around the boat and study its mooring.]]--[[Я прошелся по палубе, решая, как мне поступить.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

maindeck2_parus = item {
   nam          = _"sail"--_"парус"
  ,dsc          = [[The sail hangs quietly. It longer mimics a sail flying to some new land.]]--[[Парус на центральной мачте отяжелел от воды и грузно свисает вниз -- его уже не раздувает ветер, как раньше, когда казалось, что потерпевший крушение корабль продолжает гордо плыть по волнам.]]
  ,Exam         = [[This place is death. The Mayflower will never sail again. I will never see London. Lisa will be alone from now on...]]--[[Когда смотришь на этот безвольно повисший парус, начинаешь понимать, что корабль действительно мертв. "Майский цветок" никогда больше не отправится в плавание. И, наверное, я уже никогда не увижу Лондон, Лизу... Но нет, не нужно сдаваться. Ведь всего в нескольких тысячах ярдах от меня могут быть поселения. Просто шторм прибил нас не к тому острову.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Ascend       = [[There is nothing to climb here.]]--[[Лезть на парус сейчас не имеет смысла.]]
  ,Climb        = redirect_("Ascend", "maindeck2_parus")
  ,Jump         = [[It is too high to jump and reach.]]--[[Не думаю, что смогу прыгнуть так высоко.]]
  ,KnifeCut     = [[I cannot reach the sail with the blade.]]--[[До паруса мне все равно не дотянуться, к тому же ума не приложу, зачем бы мне потребовалось делать это.]]
}

maindeck2_mast = item {
   nam          = _"mast|~mainmast"--_"мачта|~грот-мачта"
  ,Exam         = [[I would not dare attempt it with my leg in such a state.]]--[[Я вспоминаю, как поднимался на грот-мачту несколько дней назад. Сейчас, со своей больной ногой, я бы уже не решился это  сделать.]]
  ,Ascend       = [[It would be pointless to climb again.]]--[[Нет, делать это бессмысленно. К тому же я даже не уверен, что смогу подняться.]]
  ,Jump         = [[Before the injury I could reach it without jumping.]]--[[Вряд ли это в человеческих силах.]]
  ,Climb        = redirect_("Ascend", "maindeck2_mast")
  ,Move         = [[I am afraid I move nearer to insanity with every passing day.]]--[[Сама мысль эта кажется мне безумной.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

maindeck2_mast2 = item {
   nam          = _"~mizzen mast"--_"~бизань-мачта"
  ,Exam         = [[The sail on the mizzen mast flutters and sags.]]--[[Кормовая мачта корабля, парус на которой тоже не опущен.]]
  ,Move         = redirect_("Move", "maindeck2_mast")
  ,Jump         = redirect_("Jump", "maindeck2_mast")
  ,Ascend       = [[There is no need to climb the mizzenmast.]]--[[Нет никакого смысла подниматься на бизань-мачту.]]
  ,Climb        = redirect_("Ascend", "maindeck2_mast2")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

maindeck2_boat = item {
   _untie       = false --Boat is untied
  ,_unload      = false --Boat is unloaded
  ,_cover       = false --Cover is off
  ,nam          = name_ {
                     ["default"] = _"boat|~Boat"--_"шлюпка|~лодка"
                    ,["cut"] = _"rope on the boat"--["разрубить"] = _"веревки на шлюпке"
                    ,["hack"] = _"rope on the boat"--["рубить"] = _"веревки на шлюпке"
                    ,["cut through"] = _"rope on the boat"--["перерубить"] = _"веревки на шлюпке"
                    ,["sever"] = _"rope on the boat"--FIXME ["перерезать"] = _"веревки на шлюпке"
                    ,["cut"] = _"rope on the boat"--FIXME ["разрезать"] = _"веревки на шлюпке"
                    ,["shear"] = _"rope on the boat"--FIXME ["резать"] = _"веревки на шлюпке"
                    ,["decouple"] = _"rope on the boat"--["отвязать"] = _"веревки на шлюпке"
                    ,["unleash"] = _"rope on the boat"--["развязать"] = _"веревки на шлюпке"
                  }
  ,dsc          = choose_ {
                     ["default"] = [[The smaller boat is lashed to the runners beneath it.]]--[[Небольшая шлюпка, которую я приметил еще несколько дней назад, привязана к деревянным шпалам у бизань-мачты.]]
                    ,["maindeck2_boat._untie and not maindeck2_boat._cover"] = 
                        [[It will be a fight, but I may be able to move it.]]--[[У бизань-мачты стоит небольшая шлюпка. Выглядит она так, как если бы ее вполне мог сдвинуть один человек.]]
                    ,["maindeck2_boat._cover"] = [[The smaller boat is next to the mizzenmast.]]--[[У бизань-мачты стоит небольшая шлюпка.]]
                  }
  ,Exam         = choose_ {
                     ["default"] = 
                        [[If I can leverage one end, then I can push it toward the middle of the deck. I have no crew, but my wits are still about me. The water on the starboard side is shallow, but port side is pure treachery. Jagged rocks and waves, nothing I should entertain.]]--[[Шлюпка стоит на шпалах у самого фальшборта, достаточно будет отвязать ее и немного сдвинуть к грот-мачте, и тогда я могу попытаться столкнуть ее на воду. Не уверен, что у меня получится. Шлюпка хоть и невелика, но явно очень тяжелая. Обычно такие шлюпки спускают несколько человек. К тому же вода с этой стороны борта неглубокая и много камней, а с другой стороны корабля -- скалы.]]
                    ,["maindeck2_boat._untie and not maindeck2_boat._unload and not maindeck2_boat._cover"] = 
                        [[I just need to move it toward the mainmast, then over the bulwark and into the water. I have no crew, but my wits are still about me. The water on the starboard side is shallow, but port side is pure treachery. Jagged rocks and waves, nothing I should entertain.]]--[[Шлюпка стоит на шпалах у самого фальшборта, достаточно лишь немного сдвинуть ее к грот-мачте, и тогда я могу попытаться столкнуть шлюпку на воду. Не уверен, что у меня получится. Шлюпка хоть и не велика, но явно очень тяжелая. Обычно такие шлюпки опускают несколько человек. К тому же вода с этой стороны борта неглубокая и много камней, а с другой стороны корабля -- скалы.]]
                    ,["maindeck2_boat._untie and maindeck2_boat._unload"] = 
                        [[I must get the smaller dinghy into the sea. I have no crew, but my wits are still about me. The water on the starboard side is shallow, but port side is pure treachery. Jagged rocks and waves, nothing I should entertain.]]--[[Мне нужно просто столкнуть эту шлюпку на воду. Но я не уверен, что у меня получится. К тому же вода с этой стороны борта  неглубокая и в ней много камней, а с другой стороны корабля -- скалы.]]
                    ,["maindeck2_boat._cover and not maindeck2_boat._unload"] = 
                        [[I cannot budge it loaded with supplies.]]--[[У фальшборта, рядом с бизань-мачтой, стоит небольшая шлюпка, доверху загруженная тяжелыми ящиками с галетами. Вряд ли у меня получится сдвинуть шлюпку хоть на дюйм, пока она загружена всеми этими припасами.]]
                  }
  ,Untie        = choose_ {
                     ["default"] = 
                        [[The lashing is tied into one massive knot, which as I try to loosen seems to tighten more and more.]]--[[Я пытаюсь развязать веревки, которыми шлюпка привязана к деревянным шпалам, однако у меня ничего не получается. Все веревки точно связаны мертвым узлом, и чем больше я пытаюсь ослабить этот узел, тем сильнее он затягивается. Вряд ли у меня получится развязать эти веревки. Надо что-нибудь придумать.]]
                    ,["maindeck2_boat._untie"] = [[I use the cleaver. Nothing more is needed.]]--[[Я уже и так разрубил все веревки топором, отвязывать больше ничего не нужно.]]
                  }
  ,Cut          = use_ {
                    ["axe"] = 
                      choose_ {
                         ["default"] = 
                            chain_ { 
                              set_("maindeck2_boat._untie"), 
                              [[The cleaver is quite effective. The boat is free, and the ropes are destroyed.]]--[[Разрубить веревки топориком оказалось совсем несложно. Шлюпка теперь освобождена от деревянных шпал.]] 
                            }
                        ,["maindeck2_boat._untie"] = [[I cut the ropes with the cleaver.]]--[[Я уже разрубил все веревки топором.]]
                      }
                  }
  ,KnifeCut     = use_ {
                    ["knife2"] = 
                      choose_ {
                         ["default"] = [[I try to cut the ropes with the letter opener, but it is not sharp enough.]]--[[Я пытаюсь перерезать веревки ножом для бумаг, но у меня ничего не получается. Вряд ли этот нож подходит для чего-то, кроме разрезания страниц.]]
                        ,["maindeck2_boat._untie"] = [[I have already split the ropes with the cleaver.]]--[[Я уже разрубил все веревки топором.]]
                      }
                  }
  ,Move         = choose_ {
                     ["default"] = [[It must be made of lead. I cannot move it at all.]]--[[Я наваливаюсь на лодку всем весом, однако у меня не получается сдвинуть ее ни на дюйм. Лодка слишком тяжелая, что можно подумать, будто бы она нагружена доверху ящиками со свинцом.]]
                    ,["not maindeck2_boat._untie"] = [[It is tied to a frame on the deck.]]--[[Шлюпка привязана к деревянным пазам, так ее сдвинуть точно не получится.]]
                    ,["maindeck2_boat._untie and maindeck2_boat._cover and not maindeck2_boat._unload"] = [[There are heavy crates inside. I need to unload them.]]--[[У меня не получается сдвинуть лодку даже на дюйм. Нужно сначала достать из лодки все эти ящики.]]
                    ,["maindeck2_boat._untie and maindeck2_boat._unload"] = 
                      choose_ {
                         ["default"] = walk_("maindeck2_fin")
                        ,["not shoes._off"] = [[My rain filled boots slide on the deck as I try to dislodge the boat from its frame.]]--[[Я пытаюсь сдвинуть шлюпку с места, однако у меня ничего не получается. Мои ноги в ботинках лишь скользят по гладкой, омытой многодневными дождями палубе.]]
                      }
                  }
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Climb        = redirect_("ClimbIn", "maindeck2_boat")
  ,Ascend       = redirect_("ClimbIn", "maindeck2_boat")
  ,ClimbIn      = [[I should put the boat in the water before climbing in.]]--[[Надо бы сначала спустить лодку на воду.]]
  ,withGet      = true
}

maindeck2_cover = item {
   nam          = name_ {
                     ["default"] = _"canvas"
                     ,["decouple"] = _"ropes on the canvas"
                     ,["unleash"] = _"ropes on the canvas"
                     ,["sever"] = _"ropes on the canvas"
                     ,["slash"] = _"ropes on the canvas"
                     ,["saw"] = _"ropes on the canvas"
                     ,["cut"] = _"ropes on the canvas"
                     ,["cut through"] = _"ropes on the canvas"
                     ,["hack"] = _"ropes on the canvas"
					 --[[
                     ["default"] = _"парусина"
                    ,["отвязать"] = _"веревки на парусине"
                    ,["развязать"] = _"веревки на парусине"
                    ,["перерезать"] = _"веревки на парусине"
                    ,["разрезать"] = _"веревки на парусине"
                    ,["резать"] = _"веревки на парусине"
                    ,["разрубить"] = _"веревки на парусине"
                    ,["перерубить"] = _"веревки на парусине"
                    ,["рубить"] = _"веревки на парусине"]]
                  }
  ,dsc          = [[The canvas cover was once bright white, now spotted with filth.]]--[[Шлюпка затянута плотной парусиной, которая когда-то была светлой, но теперь вся почернела от грязи и непрекращающихся дождей.]]
  ,Exam         = [[Thick canvas, lashed with rope across the span of the dinghy.]]--[[Толстая и плотная парусина, которая привязана веревкой к кольцам по бортам шлюпки.]]
  ,TakeOff      = [[The canvas is tied down to the metal rings on all sides.]]--[[Парусина привязана к металлическим кольцам по бортам шлюпки. Надо бы сначала развязать веревки.]]
  ,Untie        = chain_ {
                    set_("maindeck2_boat._cover"),
                     [[I untie the ropes and remove the cover. Inside are crates full of supplies, a cache perhaps taken from another ship.
					 ^I stand for a few moments looking over them.]]--[[Я развязал веревки по бортам лодки и стянул парусиновое покрывало. Внутри шлюпки оказалось множество ящиков с припасами, как  если бы кто-то устроил здесь тайник или попросту перенес все эти ящики сюда из других шлюпок.^ Я несколько минут стою, рассматривая ящики. Прежде чем пытаться передвигать шлюпку, нужно будет ее разгрузить. На лицо мне падают  первые капли дождя.]]
                  }
  ,KnifeCut     = use_ {
                    ["knife2"] = [[I cannot cut rope with a dull blade.]]--[[Перерезать веревки ножом для бумаг у меня никак не получается.]]
                  }
  ,Cut          = use_ {
                    ["axe"] = 
                      chain_ {
                        set_("maindeck2_boat._cover"),
                        [[I swing the cleaver down into one of the ropes, and it sinks into the wood of the gunwale beneath as the canvas covering falls away.
						^There are boxes full of supplies in the bow, a cache perhaps removed from another boat. 
						^I stand for a few moments looking over the crates.]]--[[Я аккуратно разрубил веревки, которыми парусина была привязана к кольцам на бортах лодки, и заглянул внутрь. В шлюпке оказалось множество ящиков с галетами, как если бы кто-то устроил здесь тайник или попросту перенес все эти ящики сюда из других шлюпок.^ Я несколько минут стою, рассматривая ящики. Прежде чем пытаться передвигать шлюпку, нужно будет достать из нее все эти ящики. На лицо мне падают первые капли дождя.]]
                      } 
                  }
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,cnd          = not_("maindeck2_boat._cover")
}

maindeck2_hold = item {
   nam          = _"hold"--_"трюм"
  ,dsc          = [[^I can descend into the cargo hold from here.]]--[[^С палубы я могу спуститься в трюм или]]
  ,WalkIn       = walk_("hold2coridor")
  ,DescendTo    = walk_("hold2coridor")
  ,ClimbIn      = walk_("hold2coridor")
}

maindeck2_cabin = item {
   nam          = _"captain's cabin"--_"каюта капитана"
  ,dsc          = [[^I might investigate the captain's cabin ahead.]]--[[подняться в каюту капитана.]]
  ,WalkIn       = walk_("captaincabin")
  ,GetIn        = redirect_("WalkIn", "maindeck2_cabin")
  ,ClimbIn      = redirect_("WalkIn", "maindeck2_cabin")
}

maindeck2_boxes = item {
   nam          = _"crates"--_"ящики с галетами"
  ,dsc          = choose_ {
                    ["maindeck2_boat._unload"] = [[The wooden crates from the dinghy remain where I stacked them against the mizzenmast.]]--[[Рядом с бизань-мачтой свалены деревянные ящики с галетами.]]
                  }
  ,Exam         = [[Massive wooden crates. One is broken so that the contents are visible.
  ^Charcoal... or perhaps biscuits.]]--[[Массивные деревянные ящики с галетами, единственной положительной стороной которых является то, что храниться они могут практически вечно. Правда, по вкусу эти галеты похожи на куски жженой древесины и есть их можно, пожалуй, только под страхом голодной смерти.]]
  ,Take         = [[The crates are too large to carry. I must leave them on the deck.]]--[[Нет смысла таскать с собой эти ящики, к тому же они довольно тяжелые. Лучше просто выгрузить их прямо здесь, на палубу.]]
  ,Pick         = redirect_("Take", "maindeck2_boxes")
  ,Get          = use_ {
                    ["maindeck2_boat"] =
                      choose_ {
                         ["default"] = 
                            chain_ {
                              set_("maindeck2_boat._unload"),
                              [[It begins to rain again as I remove the crates one by one, tumbling onto the deck.]]--[[Один за другим я достаю все ящики из шлюпки. Проходит немало времени, прежде чем весь этот груз оказывается на палубе. Начинает крапать дождь.]]
                            }
                        ,["maindeck2_boat._unload"] = [[All the crates are out.]]--[[Я уже и так достал все ящики из лодки.]]
                      }
                  }
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("maindeck2_boat._unload"),
                          [[It begins to rain again as I remove the crates one by one, tumbling onto the deck.]]--[[Один за другим я достаю все ящики из шлюпки. Проходит немало времени, прежде чем весь этот груз оказывается на палубе. Начинает крапать дождь.]]
                        }
                    ,["maindeck2_boat._unload"] = [[The crates are already stacked on the deck.]]--[[Не вижу смысла двигать ящики по палубе.]]
                  }
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
  ,cnd          = if_("maindeck2_boat._cover")
}

maindeck2_ship = item {
   nam          = _"ship to"--_"корабль"
  ,Descend      = [[I need to get the dinghy into the water. The far island awaits...]]--[[Достаточно прогулок по острову, надо, наконец, попробовать спустить эту шлюпку на воду.]]
  ,Fire         = [[Setting the boat on fire will do me no good.]]--[[Я еще не сошел с ума, чтобы поджигать корабль.]]
  ,FireOff      = nilfn
  ,Move         = redirect_("Move", "maindeck2_mast")
  ,Clean        = nilfn
  ,Cut          = [[I do not know what I am thinking...]]--[[Мой рассудок и правда помутился, как такое вообще могло прийти мне в голову?]]
  ,KnifeCut     = redirect_("Cut", "maindeck2_ship")
}

maindeck2_shore = item {
   nam          = _"Beach"--_"берег"
  ,Walk         = redirect_("Descend", "maindeck2_ship")
  ,DescendOn    = redirect_("Descend", "maindeck2_ship")
}

hold2coridor = scene {
   nam          = _"In the hold"--_"В трюме"
  ,obj          = { 
                     "hold2coridor_itself"
                    ,"hold2coridor_godeck"
                    ,"hold2coridor_windows"
                    ,"hold2coridor_gocubrick"
                    ,"hold2coridor_dust"
                    ,"hold2coridor_gocambus"
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("maindeck2")
}

hold2coridor_itself = item {
   nam          = _"hold"-- _"трюм"
  ,Exam         = [[The cargo hold is like a crypt.]]--[[Я немного боюсь заходить сюда, как если бы верил в то, что призраки скончавшихся матросов обитают где-то здесь, в темном трюме корабля и, стоит мне сойти сюда с палубы, как я оказываюсь в их безраздельной власти.]]
  ,dsc          = [[I stand in the cargo hold.]]--[[Я стою в трюме,]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2coridor_godeck = item {
   nam          = _"deck"--_"палуба"
  ,dsc          = [[I stand near the stairs.]]--[[рядом с выходом на палубу.]]
  ,Walk         = walk_("maindeck2")
  ,Climb        = walk_("maindeck2")
  ,Ascend       = walk_("maindeck2")
}

hold2coridor_windows = item {
   nam          = _"portholes|~window"--_"иллюминаторы|~окна"
  ,dsc          = [[I raise the blinds over the portholes without much effect. This is a tomb...]]--[[Я поднял заслонки на всех иллюминаторах в трюме и теперь здесь уже не так сумеречно как раньше, однако у меня все равно возникает такое чувство, словно я оказался в склепе.]]
  ,Exam         = [[Openings to the outside that allow dusty rays of light.]]--[[Небольшие прямоугольные окна едва пропускают свет, впрочем, сегодня солнечного света совсем немного.]]
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2coridor_gocubrick = item {
   nam          = _"cubrick"--_"кубрик"
  ,dsc          = [[A long corridor leads me to the entrance of the bridge. The smell of death is unbearable here.]]--[[Передо мной длинный коридор, который ведет в кубрик.]]
  ,WalkIn       = [[The captain and two of his sailors rest inside. If only I could bury them...]]--[[Идти в кубрик мне сейчас совершенно не хочется. Там по-прежнему лежат тела капитана и двух матросов, с которыми мы оказались  на этом острове. Я так и не похоронил их.]]
  ,ClimbIn      = redirect_("WalkIn", "hold2coridor_gocubrick")
  ,DescendTo    = redirect_("WalkIn", "hold2coridor_gocubrick")
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2coridor_dust = item {
   nam          = _"dust"--_"пыль"
  ,dsc          = [[The air in the hold is heavy and damp, with bits of dust that catch in my throat.]]--[[В трюме душно и дышать довольно тяжело, при каждом вздохе легкие точно пропитываются висящей в воздухе пылью.]]
  ,Exam         = [[Specks of dust flicker in the light.]]--[[Мелкие пылинки поблескивают на свету.]]
}

hold2coridor_gocambus = item {
   nam          = _"Galley"--_"камбуз"
  ,dsc          = [[There is a massive wooden door that leads to the galley.]]--[[Справа от меня виднеется массивная дверь в камбуз.]]
  ,WalkIn       = walk_("hold2cambus")
  ,ClimbIn      = walk_("hold2cambus")
  ,GetIn        = walk_("hold2cambus")
}

hold2cambus = scene {
   nam          = "Galley"--"Камбуз"
  ,obj          = { 
                     "hold2cambus_itself"
                    ,"hold2cambus_tables"
                    ,"hold2cambus_dishes"
                    ,"hold2cambus_dust"
                    ,"axe"
                    ,"hold2cambus_gocoridor"
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("hold2coridor")
}

hold2cambus_itself = item {
   nam          = _"Galley"--_"камбуз"
  ,dsc          = [[It is impossible to breathe the air for long.]]--[[В камбузе практически невозможно дышать, весь воздух вокруг точно раскален и пропитан странным тяжелым запахом.]]
  ,Exam         = [[I recall so many days when the voices of the sailors rang out over the din of cookery. I often ate with the captain, and the men in these quarters looked upon me with suspicion. Now it seems ages past, part of another man's life, a man younger than me.]]--[[Я хорошо помню те дни, когда здесь кипела жизнь, стоял гул от голосов, звенела небьющаяся посуда. Обычно я трапезничал вместе с капитаном, но несколько раз заходил на камбуз в обед, искал кого-то, я уже не помню, зато помню, как моряки смотрели на меня с недоверием, точно я явился лишь для того, чтобы следить за ними и подслушивать их пересуды. Сейчас, глядя на этот запыленный камбуз, кажется, что все это было много лет назад, в другой жизни, на другом краю этой необъятной Земли, но ведь прошло в действительности совсем немного времени. Как будто я постарел на десятилетия за несколько недель.]]
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2cambus_tables = item {
   nam          = _"tables"--_"столы"
  ,dsc          = [[The long wooden tables stretch the length of the floor.]]--[[На длинных деревянных столах]]
  ,Exam         = [[No longer for food and laughter, they resemble sarcophagi.]]--[[Когда-то за этими столами сидели матросы. А теперь здесь только пыль.]]
  ,Clean        = redirect_("Clean", "hold2cambus_dust")
  ,Move         = [[I see no reason to move the tables, even if I could.]]--[[Не вижу смысла передвигать столы.]]
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2cambus_dishes = item {
   nam          = _"dishes|~pans|~pots"--_"посуда|~кастрюли|~мятые кастрюли"
  ,dsc          = [[A mountain of pots and utensils remain piled against the wall.]]--[[свалены горой мятые кастрюли и аллюминиевая посуда.]]
  ,Exam         = [[It unnerves me to touch implements of the living, tainted by death and pestilence.]]--[[Я боюсь даже прикасаться ко всему, что здесь лежит -- сам не знаю почему.]]
  ,Take         = [[They will do me no good, nor will curses from the afterlife.]]--[[Вряд ли кастрюли и тарелки мне сейчас пригодятся.]]
  ,Clean        = redirect_("Clean", "hold2cambus_dust")
  ,Move         = [[I do not want to touch them.]]--[[Я не хочу даже притрагиваться к этой посуде.]]
  ,Clean        = nilfn
  ,Cut          = nilfn
  ,KnifeCut     = nilfn
}

hold2cambus_dust = item {
   nam          = _"dust"--_"пыль"
  ,dsc          = [[The last service finished prematurely.]]--[[Можно подумать, что совсем недавно судовой кок готовил здесь на весь экипаж едва съедобный обед, однако, приглядевшись, замечаешь,  что все вокруг покрыто толстым слоем пыли.^]]
  ,Exam         = [[Dust has settled on every surface.]]--[[Видимо, это из-за пыли так тяжело дышать.]]
  ,Clean        = [[It is unnecessary c  to clean.]]--[[У меня сейчас нет времени убираться здесь, к тому же на этой уйдет несколько часов.]]
}

axe = item {
   nam          = _"axe"--_"топор"
  ,dsc          =  [[There is a cleaver hanging on the wall.]]--[[На стене, у входа, висит небольшой топорик.]]
  ,Exam         = [[It is sturdy, with a sharp blade.]]--[[Небольшой и крепкий топорик, к тому же хорошо заточенный. Таким несложно разрубить веревку.]]
  ,Take         = chain_ { take_("axe"), [[I take the cleaver.]]--[["Я снял со стены топор."]] }
  ,Throw        = [[I throw the cleaver and it sticks in the door.]]--[[Не для того я брал этот топорик, чтобы бросать его здесь.]]
  ,withCut      = true
}

hold2cambus_gocoridor = item {
   nam          = _"corridor"--_"коридор"
  ,dsc          =  [[I can go back through to the cargo hold.]]--[[Здесь есть выход в основной коридор трюма.]]
  ,WalkIn       = walk_("hold2coridor")
  ,ClimbIn      = walk_("hold2coridor")
}

maindeck2_fin = scene {
   nam          = nilfun
  ,enter        = music_("rain")
  ,dsc          = [[The boat is still heavy, yet I manage to move her off the frame onto the deck, bearing down with all my weight. I cannot give up.
  ^Slowly, in small advancements, I push her to the edge. The silence is broken with a clap of thunder. I raise my eyes to meet the subsequent torrent of water, the force of which I have yet to experience during my time here. <i>I am tempted to escape to the captain's cabin until the storm passes.</ i>.]]--[[Лодка по-прежнему слишком тяжелая, и у меня с огромным трудом получается двигать ее по палубе. Я наваливаюсь на лодку всем весом, босые ноги мои упираются в палубу, а лодка лишь едва заметно сдвигается, точно ее держит невидимая сила, в десятки раз превышающая мою. Однако я не сдаюсь. Медленно, небольшими рывками я подталкиваю лодку к самому краю. Пусть даже это займет у меня несколько часов!^ Я вдруг чувствую себя так, словно меня ничто не сможет остановить, и я обязательно спущу сегодня эту лодку на воду.^ Однако, когда лодка уже совсем недалеко от края, в небе вдруг раздается громовой раскат. Я поднимаю голову, и в ту же секунду на меня изливаются потоки воды -- начинается ливень такой силы, какой я еще ни разу не видел на этом острове. Мне не остается ничего  другого как <i>вернуться в каюту капитана</i>.]]
  ,verbs        = {
                    { "Return", "go~|~back|~up|~return"--[["~идти|~вернуться|~подняться"]], "in"--[["в"]], "cabin"--[["каюту"]] } 
                  }
  ,Return       = chain_ { drop_("axe"), drop_("knife2"), drop_("matches2"), drop_("spyglass2"), drop_("jacket"), drop_("shoes"), drop_("pants"), walk_("entry7") }
}
