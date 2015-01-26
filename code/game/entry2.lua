--Entry 2. Gameplay rooms: 9

entry2 = diary {
   nam          = "September 5th, 1846" --"5 сентября 1846 года"
  ,enter        = music_("paper")
  ,dsc          = [[I don't bother counting the days. Days that vanish, days that draw closer to nothing and nowhere, despite hope that prudence, pedantry, and routine entries in my diary will shortly carry me home. My heart beats weakly, and consumption moves deeper into my chest after each torrential rain.
  ^I've yet to find medicine on the ship, and the climate is no healer. It's not unlike England in that regard, especially with so many ventures out of doors. One day's clear respite is followed by a week of relentless tempests. My father warned of the foul weather, that even a banal and common malady at home would here leave a man incapacitated, his weaknesses amplified tenfold. Even the stoutest ethnographer should require substantial mooring. So here I sit huddled, damp, and freezing, at the mercy of threatening skies.
  ^Yet it is not the cold or the rain, but the groans of my fellows. Our captain, gaunt and bloodless, exited long before he took his last breath, leaning against the gunwale as his empty eyes stared out over the water.
  ^Perhaps it was divine punishment for some offense in his youth, but then God must find great fault with our entire lot. 
  ^We removed the first of the sick to private quarters, but I feared it was too late even then. The ship's medic provided relief, until he began to show signs himself. I am left no comrades or crew. Survival is no blessing.
  ^This I vow -- I will return, to find my Liza still waiting. She must imagine my work going well, perhaps that the natives are more enchanting than I imagined in our sitting room. I can hear her telling the neighbors of my father's unfinished research...
  ^For so long I was certain she should follow, and put roots into this damned soil. My God, it would cost my sanity were she to suffer here.]] 
  --[[Я продолжаю исправно считать дни, как если бы спокойная расчетливость и педантичность -- а также ежедневные записи в бортовом журнале "Майского цветка" -- могли неведомым образом приблизить мое спасение. Хандра моя продолжает усиливаться, и теперь меня мучает сильный чахоточный кашель, а я даже не могу найти на этом корабле хоть какую-нибудь микстуру. Впрочем, неудивительно, что здоровье мое подорвано. Здешний климат вовсе не располагает к частым пешим прогулкам -- особенно, в этот клятый сезон дождей, когда на один солнечный день выпадает неделя ливней. Отец, который бывал на островах раньше, часто рассказывал о здешних дождях, и я, помнится, даже шутил, что отважному этнографу надо первым делом не забыть прихватить с собой зонтик, а не то вся исследовательская миссия окажется под угрозой из-за обычной простуды, которой, по всей видимости, страдаю теперь и я.
  ^^ Однако погубила нас вовсе не простуда. До сих пор мне иногда слышатся крики матросов, я вижу капитана с бледным, точно не живым лицом, который едва стоит на ногах, опираясь на самодельную деревянную клюку, и смотрит сквозь меня черными, запавшими глазами. Это было подобно каре Господней, но только за что Он покарал нас? Первого же заболевшего матроса мы перенесли в отдельную каюту, но было уже поздно. А потом слег сам врач... Иногда я думаю -- то, что я единственный остался в живых, это дар Господень или же наказание?  Но я дал себе обещание -- я должен вернуться. Лиза ждет меня. Прошло еще не так много времени, и сейчас она, наверное, думает, что я занимаюсь исследованием туземцев на островах, пишу труд, который не успел написать мой отец. Раньше, еще до отплытия, мне казалось, что Лиза будет сниться мне каждую ночь, однако я не видел ни одного сна с тех пор, как "Майский цветок" покинул воды Англии.]] 
  ,next         = chain_ { 
                    music_("crypticsorrow", 0), 
                    walk_("maindeck", [[I'm blind without a telescope... there must be another on the ship. Either on the person of the captain or that sailor who deftly climbed the rigging each day. 
					^To find a replacement would bolster me greatly.]] --[[Без подзорной трубы я чувствую себя слепым. И как я мог потерять ее? Но наверняка же на всем этом корабле должна быть хоть какая-то подзорная труба. Я вспоминаю, что видел одну в руках у капитана. Да и матрос, который поднимался на смотровую площадку на грот-мачте... Кажется, я не раз замечал в его руках подзорную трубу. Кто знает, быть может, она до сих пор осталась там, на вершине мачты, хотя мне самому слабо верится в это.]]  
                        ) 
                  }
}


------------------------------------------------------------------------------------------
-- maindeck
------------------------------------------------------------------------------------------

maindeck = scene {
   nam          = "On the deck"--"На палубе"
  ,obj          = { 
                     "maindeck_itself"
                    ,"maindeck_boat"
                    ,"maindeck_mast"
                    ,"maindeck_mast2"
                    ,"maindeck_sky"
                    ,"maindeck_sail"
                    ,"rope"
                    ,"maindeck_gocabin"
                    ,"maindeck_gohold"
                    ,"maindeck_ship"
                    ,"maindeck_shore"
                  }
  ,enter        = function(s)
                    if have("candle") and candle._fire then
                      candle._fire = false;
                      s._tmpdsc = [[A sudden draft extinguishes my candle.]]--[[Ветер задул свечу.]];
                    end
                  end
}

maindeck_itself = item {
   nam          = --_"палуба"
                  name_ {
                     ["default"] = "deck"
                    ,["Lie"] = "on the deck"
                    ,["Walk"] = "across the deck"
                  }
  ,Exam         = [[Our ship was surely equipped for this voyage, dinghies fore and aft still waiting in their oiled slots. The captain's cabin as well as the cargo hold are accessible from here.]] --[[Палуба корабля не очень большая. В носовой части и на корме стоят на деревянных пазах небольшие шлюпки. С палубы можно подняться в каюту капитана или спуститься в трюм.]]
  ,Walk         = [[I walk the deck alone...]] --[[Я и так на палубе.]]
  ,Lie          = [[It's cold, and I cannot sleep.]] --[[У меня нет никакого желания лежать на грязной палубе.]]
  ,Sit          = [[I sit and lean my back against the mainmast to look up at the sagging sails, drifting against the murky sky. 
  ^I stand again, only a moment of rest is prudent.]] --[[Я сажусь на палубу рядом с грот-матчой и некоторое время смотрю на поднятый парус. Ветер приносит запах горечи и соли. Пусть сейчас на небе нет ни облака, но наверняка в конце дня пойдет дождь. Я чувствую это. ^Наконец я встаю на ноги.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withThrow    = true
}

maindeck_boat = item {
   nam          = --_"шлюпки"
                  name_ {
                     ["default"] = "dinghies|~boats"
                  }
  ,Exam         = [[It's no easy task to pull even the small one to water on my own. Perhaps the one near the mizzenmast would be manageable.]] --[[Спустить их на воду в одиночку не так-то просто, если вообще возможно. Впрочем, одна шлюпка -- та, что привязана к деревянным пазам сразу за бизань-мачтой -- давно уже привлекает мое внимание. Но для начала неплохо бы найти себе новую подзорную трубу.]]
  ,Move         = [[I have not the energy or the plan.]] --[[Я не думаю, что у меня сейчас есть силы заниматься этим.]]
  ,Fire         = [[Setting it alight would be unwise. It may prove useful.]] --[[Сжигать свою последнюю надежду убраться с этого острова? Ну уж нет.]]
  ,FireOff      = nilfn
  ,Ascend       = [[There's no reason to board it here.]] --[[У меня нет желания залезать в какую-либо из этих шлюпок.]]
  ,Climb        = redirect_("Ascend", "maindeck_boat")
  ,ClimbIn      = redirect_("Ascend", "maindeck_boat")
  ,Clean        = nilfn
}

maindeck_mast = item {
   nam          = --_"мачта|~грот-мачта"
                  name_ {
                     ["default"] = "mast|~mainmast"
                  }
  ,dsc          = [[I stand on the deck near the mainmast.]] --[[Я стою на палубе своего корабля, рядом с грот-мачтой.]]
  ,Exam         = [[Above me is the crow's nest. The sail trembles in the breeze.
  ^The spryest sailor would climb to the top several times each day. What was his name? Sam, perhaps. Despite his refuge above the damned, and with a flask of rum to clear his throat, he was among the first to die.]] --[[Это самая высокая мачта со смотровой площадкой наверху. Парус на мачте все еще поднят и колышется на ветру. На эту мачту часто забирался тот матрос... Как же его звали? Сэм? Он умер одним из первых. Поговаривали, что у него там, на смотровой площадке, есть секретная заначка, фляжка рома или еще какого крепкого, раздирающего глотку пойла. Видно, так он согревался от пронизывающего океанического холода, когда стоял наверху, открытый всем ветрам.]]
  ,Descend      = [[I must cling tightly.]] --[[Я и так не на мачте.]]
  ,Ascend       = choose_ {
                     ["not shoes._off"] = [[I remember marveling at that sailor's technique. He would remove both his shoes, beginning a bit unnaturally as he was quite a tall figure. His long arms would pull him higher and higher overhead. I doubt my resolve, and I cherish my shoes...]] --[[Я помню, как Сэм залезал на эту мачту -- он карабкался быстро и ловко, цепляясь руками и босыми ногами за кольца из грубой холщовой веревки, которыми обтянута вся мачта. Было в его движениях что-то от животного, какая-то неестественная для здоровенного взрослого мужчины кошачья сноровка. Сомневаюсь, что я смогу подняться на эту мачту в своих тесных башмаках.]]
                    ,["shoes._off and not jacket._off"] = [[Climbing on, trying to move like the man I studied, that sailor who must've spent much of his life like the tip of a metronome, ticking back and forth over the open water.
					^My jacket restricts the movement of my arms and they grow tired with each hold.]] --[[Я начинаю забираться по мачте, стараясь двигаться так же, как и Сэм -- моряк, который был на корабле смотровым. Однако цепляться за кольца на мачте совсем не просто, к тому же тесный камзол всерьез стесняет мои движения. Я быстро устаю и спускаюсь вниз.]] --FIXME, NEEDS A TIMER OR CONDITION FOR TRYING AGAIN LATER
                    ,["shoes._off and jacket._off"] = walk_("mast")
                  }
  ,Climb        = redirect_("Ascend", "maindeck_mast")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = [[I must be going mad...]] --[[Кажется, я медленно схожу с ума, раз такие мысли приходят мне в голову.]]
  ,Clean        = nilfn
}

maindeck_mast2 = item {
   nam          = --_"~бизань-мачта"
                  name_ {
                    ["default"] = "mizzenmast"
                  }
  ,Exam         = [[The mizzenmast has two dinghies stored next to it.]] --[[Кормовая мачта корабля, которая поддерживается растяжками. Рядом с мачтой стоят несколько шлюпок.]]
  ,Descend      = [[I've yet to climb up.]]--[[Я и так не на мачте.]]
  ,Ascend       = [[It's impractical.]]--[[Не вижу смысла подниматься на эту мачту.]]
  ,Climb        = redirect_("Ascend", "maindeck_mast2")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = redirect_("Move", "maindeck_mast")
  ,Clean        = nilfn
}

maindeck_sky = item {
   nam          = "sky"--_"небо"
  ,dsc          = [[The sky is pale and sullen.]] --[[Небо сегодня чистое, бледного невыразительного цвета, точно выгоревшее на солнце, однако меня все равно знобит -- быть может, из-за порывистого ветра, который поднялся с самого утра.]]
  ,Exam         = [[There hasn't been a clear sky for many days.]]--[[Нечасто здесь увидишь такое ясное небо.]]
}

maindeck_sail = item {
   nam          = --_"парус"
                  name_ {
                     ["default"] = "sail"
                  }
  ,Exam         = [[I can't lower the sail. It trembles in the wind, as though the ship is still being blown along through these hardships, venturing further toward madness. Liza stands on the pier and waves at me.]] --[[Я так и не смог опустить парус, и его по-прежнему раздувает ветер. Когда смотришь вверх, на самую вершину мачты, то кажется, будто бы корабль все еще плывет по волнам -- мы только что покинули порт и вышли в океан. Впереди у нас -- тысяча миль пути.  Через ураганы и ливни, через безумные течения и ветра. Я все еще вижу перед глазами Лизу, как она стоит на пристани и машет мне рукой. Мы расстались совсем недавно, но я уже начинаю скучать.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Ascend       = [[It's no simple challenge, but the mainmast promises a reward.]] --[[Забраться на парус будет непросто, и я не очень понимаю, зачем нужно делать это. С другой стороны -- может, стоит попробовать подняться на смотровую площадку на грот-мачте?]]
  ,Climb        = redirect_("Ascend", "maindeck_sail")
}

rope = item {
   nam          = --_"верёвка с крюком"
                  name_ {
                    ["default"] = "rope with a hook"
                  }
  ,dsc          = [[There's a length of rope with an iron hook attached hanging on the starboard gunwale.]] --[[У правого фальшборта лежит длинная веревка с железным крюком на конце.]]
  ,Exam         = [[It might be useful for climbing.]] --[[Длинная веревка с массивным железным крюком на конце, с помощью которой я забираюсь на корабль.]]
  ,Throw        = use_ {
                     ["default"] = [[Without it I may not be able to climb down.]]--[[Если я потеряю эту веревку, то не смогу даже спуститься с корабля.]]
                    ,["mast_square"] = walk_("square",
                      [[I swing the hook and let it fly toward the yard where it catches hold.]]--[[Я подкинул веревку вверх, и она зацепилась крюком за перекладину над смотровой площадкой. Медленно, стараясь не смотреть вниз, я поднялся по веревке на смотровую площадку.]]
                        )
                  }
  ,ThrowIn      = use_ {
                     ["default"] = [[I may need it to get back down.]] --[[Если я потеряю эту веревку, то не смогу даже спуститься с корабля.]]
                    ,["mast_square"] = walk_("square",
                      [[I swing the hook and let it fly toward the yard where it catches hold.]] --[[Я подкинул веревку вверх, и она зацепилась крюком за перекладину над смотровой площадкой. Медленно, стараясь не смотреть вниз, я поднялся по веревке на смотровую площадку.]]
                        )
                  }
  ,Take         = chain_ {
                    take_("rope"),
                    [[I take the rope and the hook in hand.]] --[[Я подобрал веревку с крюком на конце.]]
                  }
  ,Pick         = redirect_("Take", "rope")
  ,withOpen     = true
}

maindeck_gocabin = item {
   nam          = --_"каюта капитана"
                  name_ {
                    ["default"] = "captain's cabin"
                  }
  ,dsc          = [[I might investigate the captain's quarters.]] --[[С палубы можно подняться в каюту капитана]]
                  
  ,WalkIn       = walk_("cabin")
  ,GetIn        = walk_("cabin")
  ,ClimbIn      = walk_("cabin")
}

maindeck_gohold = item {
   nam          = --_"трюм"
                  name_ {
                     ["default"] = "hold"
                  }
  ,dsc          = [[I might go down into the cargo hold.]]--[[или спуститься вниз, в трюм.]]
  ,WalkIn       = walk_("hold")
  ,DescendTo    = walk_("hold")
  ,ClimbIn      = walk_("hold")
}

maindeck_ship = item {
   nam          = --_"корабль"
                  name_ {
                     ["default"] = "ship"
                    ,["Descend"] = "from the ship"
                  }
  ,Exam         = [[Such a stalwart ship having managed a harrowing journey now sits condemned atop a reef.]]--[["Майский цветок", корабль, который достался мне в наследство от отца и которому суждено было завершить свое первое плавание здесь, на рифах.]] 
  ,Descend      = [[I must find another spyglass.]]--[[Лучше сначала найти подзорную трубу.]] 
  ,Fire         = [[Am I not going mad?]]--[[Я еще не сошел с ума, чтобы поджигать корабль.]] 
  ,FireOff      = nilfn
  ,Move         = redirect_("Move", "maindeck_mast")
}

maindeck_shore = item {
   nam          = --_"берег"
                  name_ {
                     ["default"] = "shore"
                    ,["Descend"] = "to the shore"
                    ,["Walk"] = "to the shore"
                  }
  ,Walk         = redirect_("Descend", "maindeck_ship")
  ,DescendOn    = redirect_("Descend", "maindeck_ship")
}


------------------------------------------------------------------------------------------
-- mast
------------------------------------------------------------------------------------------

mast = scene {
   nam          = "On the mainmast"--"На мачте"
  ,dsc          = [[I begin unsure of my footing. It's impossible to move as quickly as Sam. My body quakes as I put each hand over hand. The railing is so far away.]]--[[С большим трудом, цепляясь за кольца из веревок руками и ногами, я поднимаюсь на верх мачты. Силы мои почти на исходе, я чувствую, как все тело мое дрожит от усталости -- все-таки здоровье мое за последние дни сильно пошатнулось, и это явно не морская болезнь.^  До смотровой плошадки остается совсем немного, однако веревочных колец на мачте больше нет, а я никак не могу дотянуться до деревянного козырька у меня над головой.]] 
  ,newdsc       = [[I press my face against the pole, shivering uncontrollably. It is but a few feet now, but I see no rings by which to leverage myself, and the yard is well below the nest.]]--[[Я стою, упираясь босыми ногами в кольцо из веревки и обхватив руками скользский промасленный ствол мачты. Все тело мое дрожит от усталости. До смотровой плошадки остается совсем немного, однако веревочных колец на мачте больше нет, а я никак не могу дотянуться до деревянного козырька у меня над головой.]] 
  ,obj          = { 
                     "mast_itself"
                    ,"mast_square"
                    ,"mast_rings"
                    ,"mast_hold"
                  }
  ,TurnAround   = [[I cannot bear to look at the deck.
  ^My eyes find their way and I am frozen.]]--[[Я обернулся, затем посмотрел вниз. Да, я действительно поднялся очень высоко.]] 
  ,Wait         = [[The longer I wait the more I risk not moving again.]]--[[Не вижу смысла долго висеть на этой мачте -- руки мои уже начинают ныть от усталости.]] --FIXME perhaps a timer with a consequence, such as falling or hypothermia
}

mast_itself = item {
   nam          = --_"мачта"
                  name_ {
                    ["default"] = "mast"
                  }
  ,Exam         = [[This is the tallest pole on the ship.]]--[[Самая большая мачта на этом корабле. Мне не верится, что я смог подняться так высоко. До смотровой площадки осталось совсем немного.]] 
  ,Descend      = walk_("maindeck", 
                      [[I cannot force myself to go further... I must return to the deck.]]--[[Я так и не смог подняться на смотровую площадку. Мне ничего не оставалось как спуститься вниз, на палубу.]]
                      )
  ,Ascend       = [[I don't see any rings or fittings.]]--[[Я поднялся уже почти на самый верх, колец из веревки больше нет.]]
  ,Climb        = redirect_("Ascend", "mast_itself")
  ,Move         = [[I mock myself.]]--[[Это попросту невозможно.]]
  ,JumpFrom     = [[It's too far to jump into the water.]]--[[Не стоит прыгать отсюда, я наверняка разобьюсь.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
}

mast_square = item {
   nam          = --_"смотровая площадка"
                  name_ {
                    ["default"] = "viewdeck"
                  }
  ,Exam         = [[Sam, standing on this narrow platform, gripping the mast with one arm, his eyes on the horizon until the Sun was well past the yardarm. But how did he reach the peak after all? Surely he didn't leap!^]] --[[Я вспоминаю, как Сэм, покойный моряк, стоял на этой узенькой смотровой площадке, обхватив мачту одной рукой и вперив свой взгляд в океан, прикрываясь одной рукой от солнца. Но вот вспомнить, как именно он забирался на этот узенький козырек, я совсем не могу. Дотянуться до смотровой площадки у меня никак не получается. Неужели единственная возможность -- это прыгать?]]
  ,Jump         = [[I reflect on the situation, more dire than I ever presumed, and in the quiet my eyes find their way down to the surface where men should live and work. What purpose has my tribulation served, should God now take me?
  ^I lack the strength to throw myself toward the perch above.]]--[[Несколько секунд я раздумываю о том, чтобы попробовать допрыгнуть до смотровой площадки, но потом невольно роняю взгляд вниз... Нет, я забрался так высоко! А что, если я сорвусь? Вряд ли у меня хватит сил допрыгнуть.]]
  ,Ascend       = redirect_("Jump", "mast_square")
  ,Climb        = redirect_("Jump", "mast_square")
  ,Descend      = [[I must reach the top.]] --[[Чтобы спуститься со смотровой площадки, нужно сначала на нее залезть.]]
  ,Move         = redirect_("Move", "mast_itself")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
  ,withThrow    = true
  ,withThrowIn  = true
}

mast_rings = item {  
   nam          = --_"кольца из веревки"
                  name_ {
                     ["default"] = "rope loops"
                  }
  ,Exam         = [[Are there no handles attached to the mast to let me onto the platform. I'm deathly afraid, yet this journey is bound to test my mettle still more.]] --[[На мачте есть кольца из веверки, по которым матросы обычно поднимаются вверх. Кольца расположены примерно на одинаковом расстоянии друг от друга, однако над моей головой кольца нет.]]
  ,Jump         = [[There's no other way...]] --[[У меня над головой нет колец из веверки.]]
  ,Ascend       = redirect_("Jump", "mast_rings")
  ,Climb        = redirect_("Jump", "mast_rings")
  ,Descend      = walk_("maindeck", [[I must admit my weakness before the eyes of God.]] --"Я так и не смог подняться на смотровую площадку. Мне ничего не оставалось как спуститься вниз, на палубу."
  )
  ,JumpFrom     = redirect_("JumpFrom", "mast_itself")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,withPure     = true
}

mast_hold = item {
   nam          = --_"палуба"
                  name_ {
                    ["default"] = "deck"
                  }
  ,DescendOn    = redirect_("Descend", "mast_rings")
}

square = scene {
   _flask       = false --Flask is found
  ,nam          = "On top of the world"--"На смотровой площадке"
  ,obj          = { 
                     "square_itself"
                    ,"square_mast"
                    ,"square_bag"
                    ,"flask" 
                    ,"square_gohold"
                  }
  ,TurnAround   = [[The platform is so narrow I cannot make myself turn and look about in the opposite direction.]] --[[Площадка такая узкая, что мне сложно даже обернуться.]]
  ,Wait         = [[I must not loiter. The rain is sure to return, and even a small gust would remove me.]] --[[Мне совсем не хочется задерживаться здесь. А вдруг пойдет дождь или поднимется ураганный ветер? Кажется, что одного сильного порыва достаточно, чтобы я сорвался с этой узенькой смотровой площадки. К тому же у меня начинает кружиться голова.]]
}

square_itself = item {
   nam          = --_"смотровая площадка"
					name_ {
						["default"] = "lookout"
					}
  ,dsc          = [[It's a narrow wooden viewing platform.]] --[[Я стою на узкой смотровой площадке.]]
  ,Exam         = [[I must keep my chest pressed against the mast.]]--[[Смотровая площадка совсем узкая, и мне приходится стоять, почти прижавшись спиной к мачте. ]]
  ,Ascend       = [[I'm as high up as possible.]]--[[Я и так на смотровой площадке.]]
  ,Climb        = redirect_("Ascend", "square_itself")
  ,Descend      = walk_("maindeck", [[I adjust the rope and carefully lower myself back onto the ladder. My feet swing as I hang, reaching out for the security of the mast.]]) --[[Я отцепил веревку с крюком от мачты и осторожно слез со смотровой площадки -- мне пришлось повиснуть на руках, раскачаться и ухватиться ногами за ствол мачты. Потом, прижавшись к мачте всем телом, я соскользнул вниз, на палубу.]]
  ,Move         = [[The platform is fixed in place.]]--[[Каким образом я буду передвигать смотровую площадку?]]
  ,Sit          = [[I sit down, holding fast to the pole with one arm, remembering that sailor hanging on through stormy weather and all.
  ^I pull myself to my feet, grasphing for my dignity.]]--[[Я сажусь на узкий деревянный козырек, по-прежнему крепко держась одной рукой за мачту. Я чувствую, как все сжимается у меня внутри, а босые ноги  холодеют от страха. А ведь тот матрос забирался сюда даже во время шторма, когда корабль нещадно бросало на волнах.^Я медленно поднимаюсь на ноги.]]
  ,Lie          = [[It's too narrow to lie down.]]--[[Лечь здесь не получится.]]
  ,JumpFrom     = redirect_("JumpFrom", "mast_itself")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = [[I'm more concerned with staying atop it than keeping it clean.]]--[[Меня больше беспокоит, как бы не сорваться отсюда.]]
  ,Walk         = [[There's barely room to stand, much less walk about.]]--[[Здесь едва хватает места, чтобы стоять.]]
  ,WalkOn       = redirect_("Walk", "square_itself")
  ,WalkTo       = redirect_("Walk", "square_itself")
  ,withPure     = true
}

square_mast = item {
   nam          = _"mast"--_"мачта"
  ,dsc          = [[Even now the wind could put me over either side. I feel a spell of vertigo, and clench the mast, squeezing my eyelids closed.
  ^Opening them to the sky I see a small canvas bag fastened just overhead.]]--[[Теперь я понимаю, почему матрос, который забирался сюда, всегда обхватывал мачту одной рукой. Даже сейчас ветер такой сильный, что едва не сбивает с ног. К тому же от высоты  у меня начинает кружиться голова. Лучше не смотреть вниз. ^К мачте привязан веревкой какой-то холщовый мешок.]]
  ,Exam         = [[If it were not for this rope, I would've never made it.]]--[[Ствол мачты довольно скользский, за него почти невозможно ухватиться. Если бы не кольца из веревки, то я бы никогда не смог подняться сюда.]]
  ,Ascend       = [[I can't go any higher.]]--[[Лезть дальше вверх по мачте на имеет смысла.]]
  ,Climb        = redirect_("Ascend", "square_mast")
  ,Descend      = redirect_("Descend", "square_itself")
  ,Move         = [[It's attached to the ship quite sturdily.]]--[[Это невозможно сделать.]]
  ,JumpFrom     = redirect_("JumpFrom", "mast_itself")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
}

square_bag = item {
   nam          = "bag"--"мешок"
  ,Exam         = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("square._flask"),
                           [[Inside the canvas bag is a small flask. I open it and sniff, my nose collecting the sting of cheap whiskey.]]--[[В мешке оказалась небольшая фляга. В ней еще что-то есть. Я открыл флягу и принюхался. В нос мне ударил резкий запах дешевого виски.  Я положил флягу обратно в мешок.]]
                        }
                    ,["have(flask)"] = [[There's nothing else in the bag.]]--[[В мешке больше ничего нет.]]
                  }
  ,Take         = [[I don't need the bag, and it's well-attached to the mast.]]--[[Мне не нужен этот мешок, да и отвязать его от мачты будет совсем не просто.]]
  ,Move         =  [[There's no reason to bother with competent knotwork.]]--[[Отвязать мешок от мачты будет совсем не просто, и главное -- не ясно, зачем делать это.]]
  ,Untie        = redirect_("Move", "square_bag")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,withPure     = true
}

flask = item {
   _drink       = false
  ,nam          = name_ {
					["default"] = _"flask"
                     ,["pour"] = _"out whiskey"
                     ,["empty"] = _"out whiskey"
                     ,["drain"] = _"out whiskey"
                     ,["wet"] = _"with whiskey"
                     ,["dampen"] = _"with whiskey"
                     ,["gulp"] = _"whiskey"
                     ,["drink"] = _"whiskey"
					 --[[
                     ["default"] = _"фляга"
                    ,["вылить"] = _"виски"
                    ,["налить"] = _"виски"
                    ,["лить"] = _"виски"
                    ,["намочить"] = _"виски"
                    ,["смочить"] = _"виски"
                    ,["пить"] = _"виски"
                    ,["выпить"] = _"виски"]]
                  }
  ,Exam         = [[A small flask of Sam's private whiskey.]]--[[Маленькая фляжка с дешевым виски -- наверное, секретная заначка моряка, который забирался на грот-мачту.]]
  ,Take         = chain_ {
                    take_("flask"),
                    [[I take the flask, sure to find it a good and proper application.]]--[[Я забрал себе фляжку с виски -- наверняка я найду ей применение.]]
                  }
  ,Pure         = use_ {
                     ["default"] = [[I shouldn't pour out whiskey, even mere swill such as this.]]--[[Не стоит выливать сюда виски.]]
                    ,["candle"] = [[I can't come up with a good reason to douse the candle.]]--[[Ума не приложу, зачем мне может потребоваться выливать виски на свечу.]]
                    ,["matches"] = [[I shouldn't ruin my matches.]]--[[Так я просто испорчу все спички.]]
                    ,["jacket"] = [[Lost, frozen, and smelling of alcohol is not a description I wish to embody.]]--[[Мне не хочется заливать свой камзол спиртным.]]
                    ,["pants"] = [[Perhaps in another time and place I would want whiskey in my pants, but not here and not today.]]--[[Не понимаю, зачем мне может потребоваться пачкать свои брюки.]]
                    ,["kerchief"] = 
                        choose_ {
                           ["default"] = chain_ { set_("kerchief._drink"), [[I pour a drop of whiskey on my handkerchief and hold it over my nose, hoping to subdue the smell of the place.]]--[[Я вылил немного виски на платок. Надеюсь, это поможет перебить запах в трюме.]] }
                          ,["kerchief._drink"] = [[The handkerchief soaked up my allowance.]]--[[От платка и так уже несет виски.]]
                        }
                    ,["cabin_bed"] = [[I still wish to sleep here.]]--[[Не стоит выливать виски на постель, где я сплю.]]
                    ,["cabin_journal"] = [[I won't deface a man's legacy.]]--[[Я не собираюсь портить свой журнал.]]
                    ,["cabin_carpet"] = [[I pour out a dram for the homeland.]]--[[Залить ковер виски? Зачем?]]
                    ,["cabin_painting"] = [[I don't like the painting, but dousing it in swill would be childish.
					^I fill my cheeks and spray a fine mist across the surface instead.]]--[[Картина мне, конечно, не нравится, но заливать ее виски -- это варварство.]]
                  }
  ,Drink        = choose_ {
                     ["default"] = chain_ { set_("flask._drink"), [[I sip it, then quickly regret my decision. It feels like it might put a hole through my stomach.]]--[[Я пригубил немного виски и едва сдержал кашель. Это крепкое пойло обожгло мне все горло.]] }
                    ,["flask._drink"] = [[No, I shouldn't partake. Sam must've been a foolhardy man.]]--[[Нет, пить это пойло мне больше не хочется.]]
                  }
  ,Throw        = [[I won't throw it away just yet, not while some remains.]]--[[Фляга мне еще пригодится, не стоит ее выбрасывать.]]
  ,ThrowIn      = redirect_("Throw", "flask")
  ,cnd          = if_("square._flask")
  ,withWet      = true
}

square_gohold = item {
   nam          = _"deck"--_"палуба"
  ,DescendOn    = redirect_("Descend", "square_itself")
}


------------------------------------------------------------------------------------------
-- hold
------------------------------------------------------------------------------------------

hold = scene {
   nam          = "Hold"--"Трюм"
  ,obj          = { 
                     "hold_air"
                    ,"hold_gocambus"
                    ,"hold_gocubrick"
                    ,"hold_godeck"
                    ,"hold_dusty"
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("maindeck", [[I emerge from the suffocating hold and take several deep breaths doubled over with my hands on my knees.]]--[[Я вышел из душного трюма и несколько раз глубоко вдохнул свежий солоноватый воздух.]])
}

hold_air = item {
   nam          = _"air|hold"--_"воздух|трюм"
  ,dsc          = [[A cramped space full of supplies and luggage.]]--[[В трюме довольно сумрачно, и воздух весь пропитан пылью.]]
  ,Exam         =  [[Staying below deck for too long would begin to mark years off one's life.]]--[[Можно подумать, что здесь не было ни одной человеческой души уже не поменьшей мере сотню лет.]]
}

hold_dusty = item {
   nam          = _"dust"--_"пыль"
  ,Exam         = [[The dust makes it difficult to breathe.]]--[[Из-за этой пыли здесь сложно дышать.]]
}

hold_gocambus = item {
   nam          = _"galley"--_"камбуз"
  ,dsc          =  [[I avoid this place, only to take products.]]--[[Последние дни я стараюсь как можно реже спускаться сюда -- да и то лишь заглядываю в камбуз, чтобы взять продукты.]]
  ,WalkIn       = walk_("hold_cambus")
  ,ClimbIn      = walk_("hold_cambus")
}

hold_gocubrick = item {
   nam          = _"cubrick"--_"кубрик"
  ,dsc          = [[The bodies of two sailors lay alongside the captain, whom I moved here.]]--[[Тела двух матросов и капитана, которые были еще живы, когда мы потерпели крушение, я отнес в кубрик внизу и с тех пор ни разу туда не заходил.]]
  ,WalkIn       = walk_("hold_cubrick")
  ,ClimbIn      = walk_("hold_cubrick")
  ,DescendTo    = redirect_("WalkIn", "hold_gocubrick")
}

hold_godeck = item {
   nam          = _"deck"--_"палуба"
  ,dsc          = [[Standing alone, inhaling the horrid air, I must make my way to the surface quickly.]]--[[Но даже когда я просто стою здесь, невольно прикрывая лицо рукой, точно весь воздух в трюме пропитан ядом, мне хочется поскорее выбраться на палубу.]]
  ,Walk         = redirect_("Exit", "hold")
  ,Ascend       = redirect_("Exit", "hold")
  ,Climb        = redirect_("Exit", "hold")
}

hold_cambus = scene {
   nam          = _"Galley"--_"Камбуз"
  ,obj          = {
                     "cambus_itself"
                    ,"cambus_dishes"
                    ,"cambus_dust"
                    ,"cambus_axe"
                    ,"cambus_gocoridor" 
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("hold")
}

cambus_itself = item {
   nam          = _"galley"--_"камбуз"
  ,dsc          = [[The galley is in complete disarray, even by its own standards.]]--[[Здесь царит настоящий бедлам.]]
  ,Exam         = [[There's nothing worth eating.]]--[[Не думаю, что здесь есть то, что мне нужно.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
}

cambus_dishes = item {
   nam          = _"crockery"--_"посуда"
  ,dsc          = [[Dirty dishes are piled against the wall.]]--[[На деревянных столах свалена грязная посуда.]]
  ,Exam         =  [[I can barely look at them, covered in putrid remnants of unfinished meals.]]--[[Посуда лежит здесь уже много дней. По какой-то причине мне совсем не хочется к ней прикасаться.]]
  ,Take         =  [[I don't need anything here.]]--[[Мне здесь ничего не нужно.]]
  ,Move         = [[I want to avoid touching anything.]]--[[Мне не хочется здесь ничего трогать.]]
  ,Clean        = redirect_("Move", "cambus_dishes")
}

cambus_dust = item {
   nam          = _"dust"--_"пыль"
  ,dsc          = [[Light is dim in the galley, and the dust hangs quietly in the air.]]--[[Свет в камбузе тоже совсем тусклый, и в воздухе витает пыль.]]
  ,Exam         = [[I involuntarily cough.]]--[[Я с трудом сдерживаю приступ кашля.]]
}

cambus_axe = item {
   nam          = _"axe"--_"топор"
  ,dsc          = [[I look around. There's a cleaver on the wall.]]--[[Я осматриваюсь. На стене у входа висит небольшой топорик.]]
  ,Exam         = [[It's a butcher's tool, sharp and sturdy.]]--[[Небольшой, с виду острый топорик. Я уже и не помню, для чего он использовался.]]
  ,Take         = [[I take the cleaver. A good blade is often useful.]]--[[Вряд ли мне сейчас пригодится топор.]]
  ,Move         = [[I move the cleaver to another hook.]]--[[Зачем? Пусть топор висит на стене. По крайней мере так я не забуду, куда положил его, если он мне вдруг потребуется.]]
}

cambus_gocoridor = item {
   nam          = _"corridor"--_"коридор"
  ,WalkIn       = redirect_("Exit", "hold_cambus")
  ,ClimbIn      = redirect_("Exit", "hold_cambus")
}

hold_cubrick = scene {
   _turn        = false --I turned around
  ,nam          = "cubrick"--"Кубрик"
  ,obj          = { 
                     "cubrick_itself"
                    ,"cubrick_captain"
                    ,"cubrick_gocoridor" 
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("hold")
  ,TurnAround   = choose_ {
                    ["not hold_cubrick._turn"] = 
                        chain_ {
                          set_("hold_cubrick._turn"),
                          [[Something rustles behind the bodies...]]--[[Мне показалось, что я слышу какой-то шорох. Я вздогнул и обернулся, но никого за моей спиной не было.]]
                        }
                  }
}

cubrick_itself = item {
   nam          = _"cubrick"--_"кубрик"
  ,dsc          = choose_ {
                     ["default"] = 
                        [[There's no light coming in, and such a terrible smell I can barely hold back nausea. I hold my nose, but the stench of decomposing flesh invades and I have to escape.]]--[[Здесь совсем нет света и стоит такой чудовищный запах, что я с трудом сдерживаю тошноту. Я зажимаю нос платком, но это не помогает перебить жуткую вонь разлагающихся тел. Я больше не могу находиться здесь ни секунды.]]
                    ,["kerchief._drink and (not have(candle) or not candle._fire)"] = 
                         [[I hold my nose with my whiskey-soaked handkerchief. It's too dark to make any assessment of the room.]]--[[Я зажал нос платком, и резкий запах виски перебил стоящий в трюме смрад. Однако здесь совсем темно, я ничего  не могу рассмотреть.]]
                    ,["not kerchief._drink and have(candle) and candle._fire"] = 
                        [[I catch my breath every time the flame flickers against the foreboding walls. The smell is too much. Vomiting, I run from the bridge and close the door.]]--[[Вздрагавающее при каждом моем вздохе пламя свечи освещает голые стены, однако в кубрике по-прежнему стоит такой  запах, что я едва могу здесь находиться. Платок не помогает, надо как-нибудь перебить запах.]]
                    ,["kerchief._drink and have(candle) and candle._fire"] = 
                        [[The somber flame of the candle scarcely illuminates the low arches and beams of the stowage compartment. Corpses rest in the shadows.]]--[[Бледное пламя свечи едва освещает низкие своды кубрика. В этом судорожном и немощном свете кажется, что весь трюм заполнен человеческими трупами.]]
                  }
  ,Exam         =  [[Those bodies I wished to take ashore to bury, as God demands it, but it simply isn't in my constitution to throw them overboard and ferry them along the rocky coast, through the thickets of breadfruit trees. Perhaps, when I am returned to full health... I hope the Lord will have mercy on me.]]--[[Все тела умерших я отнес в кубрик. Поначалу я думал как-то спустить их на берег и похоронить в земле по христианскому обычаю, но мне пришлось бы перебрасывать тела за борт, в воду, а потом тащить их по каменистому берегу к зарослям хлебных деревьев, у которых можно  вырыть могилу. Я бы просто не смог. По крайней мере, не в моем нынешнем состоянии. Быть может, потом, когда мне станет лучше...  Надеюсь, Господь смилостивится надо мной.]]
  ,Clean        =  [[I'm too afraid to touch anything here.]]--[[Я боюсь прикасаться здесь хоть к чему-либо.]]
}

cubrick_captain = item {
   nam          = _"captain's body"--_"тело капитана"
  ,dsc          = [[The captain's body, resting on the floor against the wall, his head bowed solemnly.]]--[[Я замечаю тело капитана -- капитан сидит на полу у стены, склонив голову. Кажется, что он спит.]]
  ,Exam         = choose_ {
                     ["default"] = 
                        chain_ {
                          take_("key"),
                          [[I notice around his neck a small pouch hanging from a chain. I carefully lift it and check the contents to find an ornate brass key.]]--[[Я обыскиваю тело. На шее у капитана висит небольшой кисет. В нем я нахожу маленький ключ с фигурной головкой. Слава Богу, я не ошибся! Я забираю ключ с собой.]]
                        }
                    ,["have(key)"] = [[There's nothing else in the pouch.]]--[[Мне больше ничего не нужно. Лучше убраться отсюда поскорее.]]
                  }
  ,cnd          = if_("have(candle) and candle._fire and kerchief._drink")
  ,Move         = [[It is better not to disturb the body any more than necessary. I cannot stomach the proximity much longer.]]--[[Лучше не трогать тело капитана.]]
  ,Take         = redirect_("Move", "cubrick_captain")
  ,Pick         = redirect_("Move", "cubrick_captain")
}

key = item {
   nam          = _"key"--_"ключ"
  ,Exam         = [[Small and decorative, possibly to a jewelry box or some other personal keepsake.]]--[[Маленький ключ с фигурной головкой. Скорее всего, это ключ от ящика стола в каюте капитана.]]
  ,withPure     = true
  ,withOpen     = true
}

cubrick_gocoridor = item {
   nam          = _"corridor"--_"коридор"
  ,dsc          = [[The corridor would be a relief from the atmosphere in this room.]]--[[^Мне хочется поскорее выйти отсюда в коридор.]]
  ,WalkIn       = redirect_("Exit", "hold_cubrick")
  ,ClimbIn      = redirect_("Exit", "hold_cubrick")
}


------------------------------------------------------------------------------------------
-- cabin
------------------------------------------------------------------------------------------

cabin = scene {
   nam          = "The captain's cabin"--"Каюта капитана"
  ,obj          = { 
                     "cabin_panes"
                    ,"cabin_carpet"
                    ,"cabin_bed"
                    ,"cabin_painting"
                    ,"cabin_box"
                    ,"candle"
                    ,"cabin_desk" 
                    ,"cabin_drobe"
                    ,"cabin_godeck"
                    ,"cabin_window"
                    ,"cabin_deskboxes_all"
                    ,"cmn_floor"
                  }
  ,Exit         = walk_("maindeck")
  ,TurnAround   = [[I presume there's no one following me, despite my ever increasing paranoia while aboard.]]--[[Я здесь один.]]
}

cabin_panes = item {
   nam          = _"carved panels|~panel"--_"резные панели|~панели"
  ,dsc          =  [[The cabin is furnished like an office of Westminster, the walls carved mahogany, and gold filigree all around.]]--[[Каюта капитана обставлена как чей-то роскошный кабинет в викторианском стиле. Стены украшены резными панелями из красного дерева,]]
  ,Exam         = [[It reminds me of my father's study, a warm laquered stage upon which he toiled silently. I would sneak to watch him scribble with his quill and madly sort through stacks of paper.]]--[[Обстановка здесь напоминает мне кабинет отца. Помню, как заходил к нему в детстве, когда он работал у себя за столом и даже не замечал меня. Мне тогда казалось, что я оказался внутри лакированной деревянной шкатулки.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
}

cabin_carpet = item {
   nam          = _"carpet|~Persian carpet"--_"ковер|~персидский ковёр"
  ,dsc          = [[A finely woven Persian carpet is stretched across the floor.]]--[[пол застелен персидским ковром,]]
  ,Exam         = [[The woven patterns are beginnning to fade and the edges fraying.]]--[[Ковер уже слегка поистрепался -- узоры немного поблекли, а бахрома по краям частично вылезла.]]
  ,Fire         = [[Lighting the carpet on fire would mean the ship itself.]]--[[Вряд ли я смогу поджечь этот ковер. Да если и смогу -- зачем это делать?]]
  ,Move         = [[There's no reason to move it.]]--[[Мне нравится, как ковер лежит сейчас, не вижу смысла его трогать.]]
  ,Sit          = [[I decide to rest on the foot of the bed for a moment instead.]]--[[Лучше уж сесть на постель или за стол.]]
  ,Lie          = [[The carpet is too dusty and worn to be suitable for resting.]]--[[Ковер довольно пыльный, и мне не хочется на нем лежать, особенно, когда рядом есть удобная постель.]]
  ,Take         = [[I can't take the rug with me.]]--[[И зачем мне забирать с собой персидский ковер?]]
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
}

cabin_bed = item {
   nam          = _"bed|~Bed"--_"кровать|~постель"
  ,dsc          = [[The bed is comfortable for such quarters.]]--[[а над широкой кроватью]]
  ,Exam         = [[I've grown accustomed to it.]]--[[На этой кровати я провожу каждую ночь.]]
  ,Sit          = [[It's only the middle of the day, but I feel exhausted, as though a week has passed since morning. If I allow myself to sleep now, these difficulties I face will only grow stronger.
  ^^I overcome the urge to stretch out on the bed, then rise to my feet.]]--[[Я присаживаюсь на постель. Еще только середина дня, а я чувствую себя измотанным, словно уже целую неделю на ногах. Но нет, не  время отдыхать. Мне кажется, если я начну спать среди дня, то лишь сильнее разболеюсь. Нельзя сдаваться.^ Поборов в себе желание растянуться на постели, я поднимаюсь на ноги.]]
  ,Move         =  [[Why, it's just too heavy.]]--[[Зачем мне передвигать постель? К тому же она слишком тяжелая, один я не справлюсь.]]
  ,Lie          = walk_("bedroom")
  ,Climb        = walk_("bedroom")
  ,ClimbIn      = walk_("bedroom")
  ,Clean        = nilfn
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,withPure     = true
}

cabin_painting = item {
   nam          = _"painting"--_"картина"
  ,dsc          = [[A painting hangs within a massively overwrought frame, depicting a single masted sailing ship climbing the crest of an enormous wave.]]--[[висит картина в массивной и слегка безвкусной раме -- одномачтовый парусник, который взбирается на гребень ненатуральной маслянистой волны.]]
  ,Exam         =  [[I doubt it was painted by anyone of note. The brush strokes are rather fussy and affected, with an unnatural quality to the sea. I've considered removing it from the wall.]]--[[Сомневаюсь, что эту картину нарисовал известный живописец -- есть в ней какая-то аляповатость и наигранность. Море не слишком похоже на море, а парусник кажется игрушечным корабликом, который вот-вот взмоет над волнами под дуновением ветра. Я даже подумывал о том, чтобы снять эту картину со стены.]]
  ,Move         = [[It doesn't seem right to rearrange the living space of a man so recently deceased. I treat my stay here as but a guest.]]--[[Картину и правда стоило бы убрать отсюда, однако я почему-то все никак не решаюсь это сделать. Как если бы жду, что покойный капитан когда-нибудь вернется и затребует права на свою каюту. Пусть я и на необитаемом острове, я здесь -- всего-лишь гость.]]
  ,Fire         =  [[That would be an affront to the captain's memory.]]--[[Хоть эта картина мне и не нравится, сжигать ее у меня намерений нет.]]
  ,FireOff      = nilfn
  ,Take         =  [[I really don't like the painting.]]--[[У меня нет желания таскать с собой эту картину, пользы от нее никакой не будет.]]
  ,withPure     = true
}

cabin_box = item {
   nam          = _"table"--_"тумбочка"
  ,dsc          = choose_ {
                     ["default"] = [[Next to the bed is a wobbly nightstand with a single drawer and candle balanced atop.]]--[[Рядом с кроватью стоит небольшая кряжистая тумбочка, на которой можно заметить свечу в подсвечнике.]]
                    ,["have(candle)"] = [[Next to the bed is a small nightstand with a compartment.]]--[[Рядом с кроватью стоит небольшая кряжистая тумбочка.]]
                  }
  ,Exam         = choose_ {
                     ["default"] = chain_ { take_("matches"), [[I slide the drawer out and find a box of matches. These will be useful, I'm sure.]]--[[Я осмотрел тумбочку и нашел в одном из ее ящиков коробок со спичками. Спички мне пригодятся. Я кладу их в карман.]] }
                    ,["have(matches)"] = [[There's nothing else useful inside the drawer.]]--[[В тумбочке больше нет ничего полезного.]]
                  }
  ,Sit          = [[It's unlikely this nightstand can hold much weight.]]--[[Вряд ли эта тумбочка хорошо подходит для того, чтобы на ней сидеть.]]
  ,Ascend       = redirect_("Sit", "cabin_box")
  ,Climb        = redirect_("Sit", "cabin_box")
  ,ClimbIn      = [[The cabinet is so small, I cannot fit even a shoe.]]--[[Сомневаюсь, что я смогу залезть в тумбочку.]]
  ,Open         = [[The drawer is open.]]--[[Тумбочка не закрыта.]]
  ,Move         = [[I move the nightstand away from the wall, then return it to its original place the captain left it.]]--[[Сам не понимая, зачем, я отодвинул тумбочку от стены, но потом вновь поставил ее на прежнее место.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,withPure     = true
}

matches = item {
   nam          = _"matches"--_"спички"
  ,Exam         =  [[Phosphorus matches, almost a full box.]]--[[Обычные фосфорные спички, почти полная коробка.]]
  ,Fire         = use_ {
                    ["matches"] = [[I should save as many matches as I can, and use them only when necessary.]]--[[Спички мне еще пригодятся, зачем их сжигать?]]
                  }
  ,FireOff      = [[They aren't lit.]]--[[Ни одна из спичек сейчас не горит.]]
  ,Throw        = [[I should keep the matches. One never knows when something civilization takes for granted will be needed outside it.]]--[[Спички мне наверняка пригодятся, не стоит их выбрасывать.]]
  ,ThrowIn      = redirect_("Throw", "matches")
  ,withPure     = true
  ,withFire     = true
}

candle = item {
   _fire        = false --Fire is on
  ,nam          = _"candle"--_"свеча"
  ,Exam         =  [[The candle is covered in an inanimate cascade of wax.]]--[[Это уже даже и не свеча, а огарок, весь покрытый застывшими слезами воска. Однако несколько минут она еще точно погорит.]]
  ,Take         = chain_ { take_("candle"), [[I take the candle.]]--[[Я взял свечу.]] }
  ,FireDirect   = choose_ {
                     ["default"] = chain_ { set_("candle._fire"), [[I light the candle.]]--[[Я зажег свечу.]] }
                    ,["candle._fire"] = [[The wick is already lit.]]--[[Свеча уже и так горит.]]
                  }
  ,Fire         = use_ {
                    ["matches"] = 
                        location_ {
                           ["cabin"] = redirect_("FireDirect", "candle")
                          ,["desk"] = redirect_("FireDirect", "candle")
                          ,["hold"] = redirect_("FireDirect", "candle")
                          ,["hold_cambus"] = redirect_("FireDirect", "candle")
                          ,["hold_cubrick"] = redirect_("FireDirect", "candle")
                          ,["default"] = [[I light the candle, but the wind blows it out.]]--[[Я зажег свечу, но ее тут же погасил ветер.]]
                        }
                  }
  ,FireOff      = choose_ {
                     ["default"] = [[The candle is out.]]--[[Свеча и так не горит.]]
                    ,["candle._fire"] = chain_ { unset_("candle._fire"), [[I put out the flame.]]--[[Я потушил свечу.]] }
                  }
  ,withPure     = true
}

cabin_godeck = item {
   direction    = true
  ,nam          = _"deck"--_"палуба"
  ,dsc          = [[I sit at the desk in the captain's chair and my mind begins to weigh the gravity of the situation...]]--[[^Я могу сесть за стол, где я веду журнал "Майского цветка" вместо капитана, лечь на постель или спуститься на палубу.]]
  ,Walk         = walk_("maindeck")
  ,DescendOn    = walk_("maindeck")
}

cabin_drobe = item {
   nam          = _"wardrobe|~oak wardrobe"--_"шкаф|~дубовый шкаф"
  ,dsc          = [[Behind the door looms a massive oak wardrobe with heavy brass handles.]]--[[А у самой двери подпирает потолок огромный дубовый шкаф с позолоченными круглыми ручками.]]
  ,Exam         = [[I open the wardrobe and get the impression the captain hoarded everything he came across at ports of call. Perhaps also a whisky lover beyond moderation, judging by the bottles.]]--[[Я осматриваю содержимое шкафа. Складывается впечатление, что у капитана здесь была свалка ненужных вещей, хотя я был почти уверен, что он прячет в шкафу спиртное. Я и правда замечаю большую бутылку из-под скотча, однако бутылка пустая.]]
  ,Open         = [[I open the wardrobe and get the impression the captain hoarded everything he came across at ports of call. Perhaps also a whisky lover beyond moderation, judging by the bottles.]]--[[Я осматриваю содержимое шкафа. Складывается впечатление, что у капитана здесь была свалка ненужных вещей, хотя я был почти уверен, что он прячет в шкафу спиртное. Я и правда замечаю большую бутылку из-под скотча, однако бутылка пустая.]]
  ,Sit          = [[I can't fit inside, and it's too tall to climb upon.]]--[[Сесть на шкаф у меня вряд ли получится.]]
  ,Move         = [[It's incredibly heavy.]]--[[Шкаф слишком тяжелый, к тому же я не вижу никакого смысла его двигать.]]
  ,Ascend       = [[There's no way to get on top of the wardrobe.]]--[[Мне кажется, что залезать на шкаф -- не самая лучшая идея.]]
  ,Climb        = redirect_("Ascend", "cabin_drobe")
  ,ClimbIn      = [[I can't fit inside the wardrobe.]]--[[Я не испытываю большого желания сидеть в шкафу.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
}

cabin_deskboxes_all = item {
   nam          = _"~drawers"--_"~ящики стола"
  ,Exam         = redirect_("Open", "cabin_desk")
  ,Open         = redirect_("Open", "cabin_desk")
}

cabin_desk = item {
   nam          = _"table"--_"стол"
  ,dsc          = [[Near the window is the captain's desk.]]--[[Чуть дальше, у окна, расположился широкий письменный стол.]]
  ,Exam         = [[Here I maintain entries in the ship's log, details of the epidemic on the ship, perhaps for the sake of my dear Lisa...
  ^There are several small boxes upon the desk, one of which has a lock.]]--[[Теперь это мой рабочий стол, здесь я веду бортовой журнал "Майского цветка" вместо капитана. У стола есть несколько ящиков, один из которых запирается на ключ.  Совсем недавно я <i>сидел за этим столом</i> и писал об эпидемии на корабле, о Лизе... Иногда мне кажется, что, если бы не бортовой журнал, я давно бы лишился рассудка от одиночества.]]
  ,SitAt        = walk_("desk")
  ,Sit          = [[There's a large leather chair for sitting.]]--[[Я не собираюсь сидеть на столе, когда рядом есть стул.]]
  ,Ascend       = redirect_("Sit", "cabin_desk")
  ,ClimbIn      = [[There's no way to enter the desk.]]--[[У меня нет желания залезать в стол.]]
  ,Open         = [[I slide out the drawers and shuffle through odds and ends and empty bottles of scotch.]]--[[Осматривать ящики стола стоя неудобно, лучше мне сесть за стол.]]
  ,Clean        = nilfn
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         =  [[I push the desk a bit closer to the window, accomplishing nothing really.]]--[[Ума не приложу, зачем бы мне потребовалось передвигать стол, который сейчас стоит очень удачно, у самого окна.]]
  ,withPure     = true
}

cabin_window = item {
   nam          = _"window"--_"окно"
  ,Exam         = [[The weather is remarkably clear. I should take advantage of it.]]--[[Погода сегодня на удивление ясная. Совсем не хочется проводить время в этой душной каюте.]]
  ,Open         = [[The window is sealed shut.]]--[[По-моему это окно не открывается.]]
  ,Clean        = choose_ {
                     ["kerchief"] = [[I use my handkerchief to buff the glass, as more light enters to brighten the cabin.]]--[[Я протер оконное стекло своим измятым платком -- кажется, в каюте даже стало чуть светлее.]] 
					 --FIXME possibly needs an effect, once more light comes into the room the player can find something hidden in a corner...
                    ,["jacket"] = [[I awkwardly wipe the glass with my sleeve, to no real effect.]]--[[Протирать окно камзолом не слишком удобно.]]
                  }
}

desk = scene {
   nam          = "At the table"--"За столом"
  ,obj          = { 
                     "desk_itself"
                    ,"cabin_deskboxes"
                    ,"cabin_closedbox"
                    ,"cabin_journal" 
                  }
  ,TurnAround   = [[Sometimes sitting at the desk filling out the ship's log I get the sense that someone stands over my shoulder, reading my words.]]--[[Порою, когда я сижу за столом и делаю записи в журнал "Майского цветка", у меня возникает такое чувство, словно кто-то незримый стоит позади меня и пристально смотрит на то, что я пишу из-за плеча. Нередко я даже оборачиваюсь -- лишь чтобы убедиться в том, что в каюте нет никого, кроме меня.]]
  ,Wait         = [[I sit and stare at the captain's entries and suddenly feel the enormous distance of time and space between me and my father's house, between myself and Lisa, like a thread stretched thinner and weaker with every second, every inch.
  ^Panic surfaces within me, and I grip the desk as I begin to sweat and shake.]]--[[Я какое-то время сижу, уставившись на бортовой журнал. В такие секунды я начинаю физически ощущать то чудовищное расстояние, которое отделяет меня от дома -- словно бы внутри меня болезненно натягивается пронзительная струна. Еще чуть-чуть, и я не  выдержу, поддамся панике, сойду с ума... Но надо держать себя в руках.]]
  ,Exit         = walk_("cabin")
}

desk_itself = item {
   nam          = _"table"--_"стол"
  ,SitAt        = [[I'm already sitting at the desk.]]--[[Я уже и так сижу за столом.]]
  ,Exam         = [[It's carved of wood, with various boxes scattered across the top, and drawers on either side.]]--[[Большой стол из резного дерева, который можно, скорее, ожидать увидеть в кабинете известного романиста. У стола есть несколько ящиков с фигурными медными ручками.]]
  ,StandAtFrom  = redirect_("Exit", "desk")
  ,ClimbIn      = [[I cannot fit inside the drawers.]]--[[Сомневаюсь, что я помещусь в каком-либо из ящиков этого стола.]]
  ,Ascend       =  [[I have no reason to clear the desk in order to mount it.]]--[[У меня совсем нет желания забираться на стол.]]
  ,Sit          = redirect_("Ascend", "desk_itself")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Move         = redirect_("Move", "cabin_desk")
  ,Clean        = nilfn
  ,withPure     = true
}

cabin_deskboxes = item {
   nam          = _"top boxes"--_"верхние ящики"
  ,dsc          = [[There are a few boxes with ornate brass handles. One of them is locked.]]--[[Большой стол из резного дерева, который можно, скорее, ожидать увидеть в кабинете известного романиста. У стола есть несколько ящиков с фигурными медными ручками.]]
  ,Exam         =  [[One holds stationery, one holds cigars, nothing extraordinary or useful.]]--[[В открытых ящиках нет ничего полезного -- письменные принадлежности, чистые листы бумаги, коробка с сигарами... Вряд ли мне пригодится что-нибудь из этого.]]
  ,Take         = [[I'll leave the boxes here, along with the captain's belongings.]]--[[Зачем мне таскать с собой ящик?]]
  ,Open         = [[I open the boxes.]]--[[Ящики и так открыты.]]
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,ClimbIn      = [[They're quite small boxes.]]--[[Сомневаюсь, что я помещусь в каком-либо из ящиков этого стола.]]
}

cabin_closedbox = item {
   _open        = false --Box is opened
  ,nam          = _"bottom drawer"--_"нижний ящик"
  ,dsc          = [[The bottom desk drawer is locked. There might be valuables inside.]]--[[Нижний ящик закрывается на ключ -- думаю, именно в нем капитан хранил все свои ценные вещи.]]
  ,Exam         = choose_ {
                     ["default"] = 
                         [[The captain might still have the key on his person, and I didn't think to check when I moved him into the bridge with two of his sailors. I dread seeing them after so long...]]--[[Ящик закрыт на ключ. Готов поспорить, что ключ остался на теле у капитана. Капитана я перенес в трюм, но это было... Сколько уже недель назад?.. Неужели мне придется вновь спускаться туда?]]
                    ,["cabin_closedbox._open"] = 
                        chain_ {
                          put_("spyglass2"),
                           [[Inside the drawer waits the captain's personal spyglass. It is not my father's, but it will serve my purpose.
						   ^I hesitate, feeling a pang of guilt at the idea of reappropriating a dead man's belongings, a man against whom I bore no malice.]]--[[В нижнем ящике действительно лежит подзорная труба, которую я видел несколько раз у капитана. Пусть она и не заменит мне потерянную отцовскую, но я по крайней мере вновь смогу разглядеть хоть что-нибудь за поволокой тумана, которая окружает остров.^Я несколько колеблюсь, будто бы дух капитана наблюдает за мной, будто бы я краду чужие вещи...  Но ведь ему уже не пригодится эта подзорная труба...]]
                        }
                  }
  ,Open         = use_ {
                     ["nil"] = 
                        choose_ {
                           ["default"] = [[The drawer is locked.]]--[[Нижний ящик закрыт на ключ.]]
                          ,["cabin_closedbox._open"] = redirect_("Exam", "cabin_closedbox")
                        }
                    ,["rope"] = 
                        choose_ {
                           ["default"] = [[The desk is solidly fashioned from thick pieces of timber. Gaining access to the locked drawer requires the key.]]--[[Вряд ли этим крюком получится выломать ящик, стол очень добротный, и ящик прилегает плотно, без всяких щелей. К тому же от этого ящика точно есть ключ.]]
                          ,["cabin_closedbox._open"] = [[I already used the captain's key.]]--[[Я уже открыл ящик ключем.]]
                        }
                    ,["key"] = 
                        chain_ { 
                          drop_("key"),
                          set_("cabin_closedbox._open"),
                           [[The captain's key turns with a satisfying clink, after which the drawer slides out.]]--[[Ключ действительно подошел! Я повернул ключ несколько раз, раздался ровный приятный слуху щелчок, и ящик открылся.]]
                        }
                  }
  ,Take         = choose_ {
                     ["default"] = [[The drawer is immobile. I just need to gain access to its contents, for I believe they will be of some value to my cause.]]--[[Зачем мне таскать с собой ящик? Да и в любом случае, ящик закрыт на ключ, и я не могу его выдвинуть.]]
                    ,["cabin_closedbox._open"] = [[I don't need the drawer, I just needed to open it.]]--[[Зачем мне таскать с собой ящик?]]
                  }
  ,ClimbIn      = redirect_("ClimbIn", "cabin_deskboxes")
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
}

cabin_journal = item {
   nam          = _"logbook|~log|~Diary"--_"бортовой журнал|~журнал|~дневник"
  ,dsc          = [[The ship's logbook, wherein I now document the state of affairs.]]--[[На столе лежит бортовой журнал -- раньше его вел капитан, а теперь я пишу здесь свои заметки.]]
  ,Exam         =  [[Our captain was a laconic man. He has listed the date of departure, with a few terse notes leading up to the outbreak, after which my account begins.]]--[[Капитан наш не был многословен. Здесь есть только запись об отбытии, а потом краткие заметки, да и то не каждый день, которые  обрываются примерно когда началась эпидемия. А потом журнал продолжил вести уже я.]]
  ,withPure     = true
  ,Take         = [[I should leave it here with the ship, for fear of losing it elsewhere.]]--[[Нет смысла носить с собой бортовой журнал.]]
  ,Fire         = [[It's important to tell the world what happened here, as well as to combat my loneliness through description. I cannot burn it.]]--[[Вести бортовой журнал -- единственное занятие, которое спасает меня от одиночества. Зачем мне сжигать его?]]
  ,FireOff      = nilfn
}

bedroom = scene {
   nam          = "On the bed"--"На постели"
  ,obj          = { "bedroom_itself", "bedroom_legs" }
  ,TurnAround   = [[It's difficult to turn once I've lain down on the bed.]]--[[Сделать это совсем не просто, когда лежишь на постели.]]
  ,Wait         = [[I remain prostrate until my eyelids begin to close...]]--[[Я немного полежал на постели, но от этого мне еще сильнее захотелось спать.]]
}

bedroom_itself = item {
   nam          = _"bed|~Bed"--_"постель|~кровать"
  ,dsc          = [[Lying on the bed ehausted, despite having accomplished so little in the day.]]--[[Я лежу на постели. Я чертовски устал, хотя практически ничего за весь день не сделал -- как если бы самый воздух на этом острове оказывал какое-то губительное воздействие на мой организм, вгонял меня в сонную хандру.  Но еще самый разгар дня, мне не стоит разлеживаться на постели.]]
  ,Exam         =  [[Unkempt and smelling of many weeks of sweat and salt. I do not wish to expend my scarce energy on unnecessary tasks such as house cleaning.]]--[[Постель так и не убрана с утра, однако сейчас мне не хочется ничем заниматься.]]
  ,Lie          = [[I lie down on the bed and relax my aching body.]]--[[Я и так лежу на постели.]]
  ,Climb        = redirect_("Lie", "bedroom_itself")
  ,Sit          = walk_("cabin", [[I sit on the corner of the bed, my back hunched as I stare at my boots. I must force myself to stand.]]--[[Я усаживаюсь на постели и какое-то время просто сижу так, ссутулившись и глядя себе под ноги. Затем наконец заставляю себя подняться на ноги.]])
  ,Stand        = walk_("cabin", [[I force myself out of bed.]]--[[Я с трудом заставил себя подняться с постели.]])
  ,Fire         = nilfn
  ,FireOff      = nilfn
  ,Clean        = nilfn
  ,Move         = redirect_("Move", "cabin_bed")
}

bedroom_legs = item {
   nam          = _"feet"--_"ноги"
  ,StandOn      = redirect_("Stand", "bedroom_itself")
}