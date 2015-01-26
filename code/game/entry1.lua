--Entry 1. Gameplay rooms: 1

entry1 = diary {
   nam          = "September 4th, 1846"
  ,enter        = music_("paper")
  ,dsc          = [[The sea has rested for several days now, while the sea within me rages. 
  ^The storm in my heart roars at the idea I alone survived this catastrophe.
  ^I spent quite some hours on deck staring along the horizon, blasted by the salt spray. 
  ^I have been well in light of the possibilities that surround me, although weak. Even keeping a record of my activities often exhausts me to the point of despair. More than once I have pondered whether anyone will ever review these entries, or whether I wish them to. I imagine my diary will be placed in the hands of my beloved, so she may learn what I have gone through to place it there and feel my love, for it has been more than the incredible journey we dreamed of. Truth be told, if I say not a word as the black, wretched loneliness creeps into my quarters, I may hold fast to the hope I will return to her side.
  ^Alas, my strength wanes.]]--[[Океан не успокаивается уже несколько дней кряду. Кажется, что его возмущает самый факт моего существования -- он в ярости от того, что я остался жив.^^ Но как же он красив перед началом шторма!^^ Вчера я несколько часов провел на палубе -- я просто стоял и смотрел вдаль. Ветер обдавал меня солеными брызгами, волны  с грохотом разбивались о борт корабля. Но я упорно продолжал стоять, пока ноги мои не начали подкашиваться  от усталости.^^Мне нездоровится последние дни, и я очень быстро устаю -- чем бы я ни занимался. Даже просто делать записи в журнале  представляется мне занятием тяжелым и изнурительным. К тому же я совсем не уверен, что кто-нибудь когда-то прочтет все эти  записи -- что я сам хочу, чтобы кто-то их прочитал. Однако в иные дни я представляю, что этот бортовой журнал найдет  когда-нибудь Лиза, или что я сам покажу ей его, рассказывая о своем невероятном путешествии на край земли. Да и по правде  сказать, если я ничего не пишу, то чувство какого-то глубокого пронзительного одиночества начинает сводить меня с ума.^^ Но, быть может, со мной нет ничего серьезного, и я просто заболел морской болезнью? Если, конечно, можно заболеть морской  болезнью на острове. ^]] 
  ,next         = walk_("gametitle")
}



cliff = scene {
   _clean       = false --Spyglass is clean
  ,_birds       = false --Birds are flying
  ,_lost        = false --Spyglass is lost
  ,_turn        = false --I turned around
  ,_wait        = false --I waited
  ,nam          = "At the cliff"--"На утесе"
  ,obj          = {
                     "cliff_rocks"
                    ,"cliff_ocean"
                    ,"cliff_fall"
                    ,"cliff_island"
                    ,"cliff_me"
                    ,"cliff_jacket"
                    ,"cliff_blacks"
                    ,"cliff_birds"
                    ,"cliff_shore"
                    ,"cliff_ship"
                    ,"kerchief_search"
                    ,"saltwater"
                  }
  ,Exit         = choose_ {
                     ["default"] = [[I do not want to leave yet.]]--[[Я пока не хочу уходить.]]
                    ,["cliff._lost"] = chain_ { wearall, walk_("entry2") }
                  }
  ,TurnAround   = choose_ {
                    ["not cliff._turn"] =
                      chain_ {
                        set_("cliff._turn"),
                        [[A shadow sweeps across the rocks in the corner of my eye, as the wind begins to push, clearing the cliff of debris. I will not be removed with it.]]--[[Я заметил бледную, пугливо встрепенувшуюся под моим взором тень на камнях и обернулся. Но позади меня никого не было. Резкие порывы ветра стали подталкивать меня в спину, точно прогоняя с утеса. Однако я пока не хочу уходить.]]
                        
                      }
                  }
  ,Wait         = choose_ {
                     ["default"] = 
                      chain_ {
                        set_("cliff._wait"),
                        [[I stand at the precipice, and look into the sky. 
						^The rain comes again, low clouds sweeping overhead, the first drops hardly discernable amidst the spray from the waves crashing below.]]--[[Некоторое время я просто стою у обрыва, глядя на пасмурное небо.^Совсем скоро снова пойдет дождь. Низкие грозовые облака уже почти  затянули все небо, и я даже чувствую первые капли дождя на своем лице -- или же это ветер доносит водяные брызги?]] 
                      }
                    ,["cliff._wait"] = [[To stand and wait? This is not what I came here for. Truly, I must ask myself why.]]--[[Просто стоять здесь и ждать начала дождя? Но нет, не для этого я пришел сюда... А для чего я пришел?]] 
                  }
}

kerchief_search = item {
   nam          = "for the kerchief"
  ,Search       = redirect_("Exam","jacket")
  ,cnd          = if_("not have(kerchief)")
}

spyglass = item {
   nam          = "spyglass"--_"подзорная труба"
  ,Exam         = [[The spyglass my father gave me after his first voyage to these islands.]]--[[Эта подзорная труба досталась мне от отца. Отец купил ее как раз перед своим первым путешествием на острова, и вот теперь она снова сюда вернулась.]] 
  ,Clean        = use_ {
                     ["default"] = [[It is unlikely to help.]]--[[Вряд ли это поможет.]]
                    ,["kerchief"] = 
                        choose_ {
                           ["default"] = 
                              chain_ {
                                set_("cliff._clean"),
                                [[I clean around the lens with my handkerchief.]]--[[Я протер чистым краем платка линзу подзорной трубы -- теперь все должно быть хорошо видно.]] 
                              }
                          ,["cliff._clean"] = [[It appears as clean as I can manage.]]--[[Я уже протер окуляры подзорной трубы.]]
                        }
                    ,["jacket"] = 
                        choose_ {
                           ["default"] = [[It has been trampled on the floor. I must have my handkerchief in one of the pockets.]]--[[Я уже было задрал полу своего камзола, но вовремя опомнился. Где-то у меня должен быть платок...]]
                          ,["cliff._clean"] = [[It is no use with a dirty sleeve.]]--[[Не стоит тереть грязной полой камзола чистую линзу подзорной трубы.]] 
                        }
                  }
  ,Wash         = [[There must be a better way than soaking it in seawater.]] --[[Вряд ли я смогу промыть подзорную трубу морской водой -- здесь к воде не подступиться. Да и не очень-то это хорошая идея, заливать окуляры соленой водой. Должен быть способ проще.]]
  ,Throw        = [[I should keep it.]]--[[Я не собираюсь выбрасывать свою подзорную трубу.]]
  ,ThrowIn      = redirect_("Throw", "spyglass")
  ,withExamWith = true
}

saltwater = item {
   nam          = _"seawater|~Water"--_"морская вода|~вода"
  ,withWash     = true
}

cliff_rocks = item {
   nam          = --"утес|камни"
                  name_ {
                     ["default"] = "cliff|rocks"
                    ,["Sit"] = "on the rocks"
                    ,["Lie"] = "on the rocks"
                    ,["Descend"] = "from the cliff"
                  }
  ,dsc          = [[I stand at the edge of the cliff.]]--[[Я стою на утесе.]]
  ,Exam         = choose_ {
                     ["default"] = 
                        [[It appears to be the highest point on the eastern end of the shore. On a clear day I would have full view of the neighboring islands, but a placid sky in Autumn is too rare.]]--[[Это самое высокое место с восточной стороны берега. В погожий день отсюда хорошо видны соседние острова, однако погожие дни выпадают здесь очень редко.]]
                    ,["cliff._lost"] = walk_("cliffback")
                  }
  ,Lie          = [[I will not lie down here.]]--[[Лежать на этих камнях мне совсем не хочется.]]
  ,Sit          = choose_ {
                     ["default"] = [[I sit down near the edge and clasp my knees. The breeze tosses my hair, and sends a shiver through the branches of the trees. I could spend the day here, no storms or time.
					  ^Rain splashes my hands and cheeks, the first drops of a downpour. 
					  ^This solitary man sighs and rises to his feet... time does not stop. Soon even the sun will refuse his company.
					  ^He should hurry back.]]
                      --[[Я сажусь у самого обрыва, обхватывая руками колени. Ветер треплет мои волосы. Откуда-то издалека доносится взволнованный шелест  листвы на деревьях, напоминающий шум еще не начавшегося дождя. Кажется, я могу провести так весь день -- просто сидеть здесь, любуясь океаном, как будто шторм в действительности никогда не начнется, и само время необъяснимо застыло  на этом мгновении, в преддверии проливного дождя. ^Однако вскоре я чувствую, как на мое лицо и руки падают первые капли. Я вздыхаю и поднимаюсь на ноги. Время вовсе не остановилось, и вскоре солнце совсем скроется за черными и низкими облаками. Мне стоит поторопиться.]] 
                    ,["cliff._lost"] = [[I am no more here than anywhere...]]--[[Мне сейчас совсем не до этого.]]
                  }
  ,Descend      = redirect_("Exit", "cliff")
  ,Move         = [[That would be quite unnatural.]]--[[Вряд ли у меня получится это передвинуть.]]
  ,withThrow    = true
}

cliff_ocean = item {
   nam          = --_"океан|~волны"
                  name_ {
                     ["default"] = "sea|~waves"
                    ,["ThrowIn"] = "the sea"
                  }
  ,dsc          = [[The sea has turned wild, as if it reflects my fear, crashing against the rocks below.]]--[[Океан сегодня не спокоен, как будто, по какой-то невозможной причине, ему передаются мои собственные мысли и  чувства, даже мой страх. Волны внизу с грохотом разбиваются о камни.]]                  
  ,Exam         = choose_ {
                     ["default"] = 
                        [[When I look at the water on a day like today I can imagine the island drowns with me, its destiny at the bottom of the ocean. The wrath of the surf both threatens and comforts. I cannot explain this, my thoughts becoming fog, silently flowing out through my eyes. 
						^This sickness comes as no surprise.]]--[[Если долго смотреть на океан перед началом шторма, то кажется, что весь остров медленно идет ко дну, тонет в этой беспредельной пучине. Шум разгневанного прибоя одновременно успокаивает и пугает.  Я даже не могу это объяснить. Как будто мысли мои и чувства начинают путаться, сбиваются с толка, если просто долго стоять  здесь и смотреть вдаль через подзорную трубу. Неудивительно, что у меня начинается морская болезнь.]]                        
                    ,["cliff._lost"] = 
                        [[Soon the storm will make landfall... Oh dear god! My father's spyglass! In an instant it is gone from my hand.]]--[[Скоро, наверное, и правда начнется шторм... Нет, как я мог выронить ее? Как я мог?]] --FIXME
                  }
  ,ExamWith     = redirect_("Exam", "cliff_ocean")
  ,withThrowIn = true
}

cliff_fall = item {
   nam          = --_"обрыв"
                  name_ {
                     ["default"] = "fall"
                    ,["Descend"] = "edge"
                    ,["Walk"] = "edge"
                    ,["JumpFrom"] = "edge"
                    ,["ThrowIn"] = "edge"
                  }
  ,dsc          = choose_ {
                     ["default"] = [[A powerful gust pushes me back from the edge.]]--[[Ветер отталкивает меня от обрыва.]]                                    
                    ,["cliff._lost"] = [[Inching closer, my eyes scan each nook and crevice below.]]--[[Я стою у самого края обрыва, точно и сам готов броситься вниз, вслед за подзорной трубой.]]                      
                  }
  ,Exam         = choose_ {
                     ["default"] = 
                        [[It looks to be at least forty feet to the ground, with quite jagged rocks on the walls and floor. I instinctively step back.]]--[[Здесь, наверное, футов сорок -- не меньше. И если сорваться, то наверняка упадешь прямо на острые камни. Я невольно делаю шаг назад.]]
                        
                    ,["cliff._lost"] = walk_("cliffback")
                  }
  ,JumpFrom     = [[I will not entertain the thought of suicide as long as hope still lives.]]--[[У меня совсем нет желания кончать с жизнью.]]
  ,Descend      = [[I cannot descend from this height.]]--[[Не думаю, что у меня получится спуститься с этого обрыва.]]
  ,Walk         = [[I take a step closer to the edge once more.]]--[[Я подошел к краю обрыва, и у меня закружилась голова. Нет, лучше не искушать судьбу.]]
  ,withThrowIn = true
}

cliff_island = item {
   nam          = _"island"--_"остров" --FIXME Is there a condition to check if you still have the telescope here?
  ,dsc          = [[Earlier I could just make out the far island with my telescope before everything became veiled in the curtain of rain creeping steadily from the horizon.]]--[[Но мне пока рано уходить -- я еще могу попробовать рассмотреть тот далекий остров, пока все вокруг не затянуло пеленой дождя.]]     
  ,Exam         = [[It requires my telescope.]]--[[Разглядеть так что-то довольно сложно, лучше воспользоваться подзорной трубой.]]                  
  ,ExamWith     = choose_ {
                     ["default"] = [[The lens is dirty. I cannot make it out.]]--[[Окуляры у подзорной трубы запотели, и мне почти ничего не видно.]]                        
                    ,["cliff._clean"] = 
                        chain_ {
                          set_("cliff._birds"),
                          mute_(3000, 3000),
                          [[The island to the east stands in the midst of the fog. Nature's surreal games and apparitions -- a mirage in the sea, an island in the sky. Its rocky coast harbors a sandy bay facing this direction, thick with towering stands of palms. It is at least two thousand yards to the shore. Not difficult on a clear day and a calm sea. 
						  ^White aerials emerge from the clouds, trailing fog across the sky.]]--[[Я разглядываю через подзорную трубу остров на востоке. Остров объят туманом и кажется каким-то ненастоящим, точно коварный океан обманывает меня, создавая это странное зыбкое видение -- как мираж в пустыне. Сейчас, впрочем, я могу хорошо разглядеть береговую линию, скалы, густые заросли пальм. До этого острова, должно быть, лишь несколько тысяч ярдов. Интересно, я смогу добраться туда на лодке? Это должно быть совсем не сложно, по крайней мере в ясный день, когда океан спокоен.^ Я невольно поднимаю подзорную трубу чуть выше, в небо, и замечаю какие-то светлые пятна, которые быстро отдаляются от окутанного туманной дымкой острова.]]
                        }
                  }
  ,cnd          = not_("cliff._lost")
}

cliff_shore = item {
   nam          = _"coast"--_"берег"
  ,DescendOn    = redirect_("Exit", "cliff")
}

cliff_ship = item {
   nam          = _"ship"--_"корабль"
  ,WalkTo       = redirect_("Exit", "cliff")
  ,Walk         = redirect_("Exit", "cliff")
}

cliff_me = item {
   nam          = ""
  ,dsc          = [[I adjust the old telescope.]]--[[^Я пытаюсь настроить старую отцовскую подзорную трубу.]]
  ,cnd          = not_("cliff._birds")
}

cliff_jacket = item {
   nam          = ""
  ,dsc          = [[The wind snaps the hem of my jacket against my legs.]]--[[Ветер развевает полы моего потрепанного камзола.]]                  
  ,cnd          = not_("jacket._off")
}

cliff_blacks = item {
   nam          = --_"пятна в небе|~пятна"
                  name_ {
                    ["default"] = "aerials in the sky|~aerials"
                  }
  ,Exam         = chain_ {
                    music_("wounded", 0),
                    drop_("spyglass"),
                    set_("cliff._lost"),
                    [[Gulls encircle me in a roiling cloud of white and black.
					^Shuddering and surprised, my hand loses its grip on my father's spyglass and it falls, bouncing over the edge of the cliff. 
					^These damned gulls swoop and shriek at me as I throw my clenched fists in vain.]]--[[Я оглядываюсь вокруг. Это всего лишь чайки, они кружат и над моим островом, беспокойно и хаотично, точно почуяв  приближающийся шторм.^И тут над головой у меня раздается крик -- громкий, надрывный и точно исполненный ужаса -- так кричат люди, оказавшись пред ликом смерти и осознав с ужасающей ясностью, что у них нет ни малейшей возможности спастись.^От неожиданности я роняю подзорную трубу, та падает на камни, скатывается к обрыву. Я бросаюсь за ней, но не успеваю -- подзорная труба срывается вниз.^Надо мной пролетает в бреющем полете безумная чайка.]]
                   }
  ,ExamWith     = redirect_("Exam", "cliff_blacks")
  ,cnd          = if_("cliff._birds and not cliff._lost")
  ,Swing        = [[I swing my fist at them, with rage that accompanies misfortune.]]--[[Я уже поднимаю руку, но вдруг чувствую себя как-то неуверенно и глупо.]]
}

cliff_birds = item {
   nam          = --_"чайки"
                  name_ {
                    ["default"] = "gulls"
                  }
  ,live         = true
  ,Exam         = [[They are thoroughly indifferent to my plight.]]--[[Эти птицы словно обезумели.]]
  ,Swing        = [[I regain my wits and hold back my hand.]]--[[У меня нет никакого желания приветственно махать им рукой.]]
  ,cnd          = if_("cliff._lost")
}

cliffback = scene {
   dsc          =  [[At the edge I look, in hopes of spotting my telescope perched on a shelf of mossy stone. The waves in the grotto welcome my eyes with a foamy draught. 
   ^I solemnly turn and head back toward the ship.]]--[[Я подхожу к краю обрыва и смотрю вниз. Смутная надежда моя, что подзорная труба могла упасть на какой-нибудь уступ, что я чудом смогу дотянуться до нее, исчезает. Я вижу лишь ревущие волны, которые окатывают пеной прибрежные скалы.^ Скоро начнется шторм. Мне не остается ничего, кроме как <i>вернуться на корабль</i>.]]   
  ,verbs        = { 
                     { "Next", "~leave", "{}" }
                    ,{ "Next", "~return", "to the ship" }
                  }
  ,Next         = redirect_("Exit", "cliff")
}
