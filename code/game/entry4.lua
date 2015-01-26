--Entry 4. Gameplay rooms: 5

entry4 = diary {
   nam          = "September 11th, 1846"--"11 сентября 1846 года"
  ,enter        = music_("reachingout", 0)
  ,dsc          = [[I do not choose a few days to ship. It rained, and I feel myself lately somehow unimportant. Lately I have thought so much of Lisa. Somehow I am no longer haunted by the idea that she remains ignorant of my situation, that she waits in peace for my return, imagining, perhaps, that I rest in a wide-brimmed hat on a sunny shore recording my notes.
  ^Meanwhile the never-ending rain...
  ^^I harbor the fear that I have become the man who does not know her, dearest Lisa. That I have changed so much, and I am no longer the man she loved.
  ^Death haunts me oftentimes, leaving the captain for whom this was the final voyage. Perhaps I do not realize that I wander in the land of the dead.
  ^My body shudders, from a sudden attack of fever I assume, and not from the cold of the desert where no other stands to reaffirm my existence.
  ^Lisa... no matter what happens to me, I see you waiting, counting the days until my return. This is what I believe...]]--[[Я несколько дней не выбирался с корабля. Шли дожди, да и чувствую я себя последнее время как-то неважно. Я много думал о Лизе. Почему-то мне не дает покоя мысль, что она до сих пор ничего не знает о произошедшем, что она просто ждет, когда я вернусь, представляя, наверное, как я сижу где-нибудь на солнечном берегу в широкополой шляпе и неторопливо делаю записи в свой блокнот. А за окном тем временем идет нескончаемый дождь...^^ У меня возникает такое чувство, что того человека, о котором сейчас думает Лиза, уже не существует, как если бы события всех этих дней изменили меня настолько сильно, что я стал совсем другим, совсем не тем, кого она полюбила. Если, конечно, она любила меня когда-нибудь. ^^Иногда мне и правда кажется, что я уже давно умер -- вместе с капитаном, которого я провожал в последний путь, -- но просто до сих пор не могу осознать это и скитаюсь по мертвому острову как призрак.^^ Я чувствую, как все тело мое содрогается точно от приступа озноба, хотя от этой клятой островной простуды меня мучит сильный жар. Быть может, я и правда призрак? Ведь это одиночество на необитаемом острове действительно подобно смерти, когда нет никого вокруг, кто мог бы подвердить твое существование.^^ Я много думаю о Лизе. Ведь что бы ни произошло со мной, она все так же ждет меня, считает дни, оставшиеся до моего возвращения -- по крайней мере мне очень бы хотелось в это верить. ]]
  ,next         = walk_("entry4b")
}

entry4b = diary {
   nam          = "September 12th, 1846"--"12 сентября 1846 года"
  ,dsc          = [[The day I met Lisa we ate together with Kardivalya, as father spent the evening discussing his research. He had returned from the islands obsessed, their hold more powerful than anything I could imagine. His stories lead into his theory that between the residents of his own birthplace here in England and those inhabitants of Micronesia there were no important anatomical distinctions, from the structure of muscles to skeleton to hair. All were the same.
  ^Of course he could not confirm his deepest theories, but he made a discussion of them at every opportunity. I can hear his enthusiasm even now, his passionate explanation of the calf muscles, boring the dinner guests with minutia, and so many observations of creatures that spend their lives in boats.
  ^The face of Kardivalya that evening fought valiantly against many yawns. How I miss my home, and the soft ring of Chinese porcelain.
  ^I spoke to her after dinner, once we had escaped my father's sermon on ethnology. I jokingly celebrated, and she frowned at this. Like me, she really did admire my father and his work. She said it is thanks to men like him we move forward, and are not held prisoner to either primitive superstitions or smug ignorance.
  ^I was a bit ashamed at my conceitedness, and how I must have appeared in her eyes. Perhaps here and now I am indeed still trying to rectify that image...]]--[[Я пытался вспомнить тот день, когда я познакомился с Лизой. Это было на обеде у Кардиваля, отец тогда весь вечер рассказывал о своих исследованиях -- он как раз недавно вернулся с островов, весь одержимый идеей провести свое уникальное исследование. Почему-то практически все, что я помню о том вечере -- это рассказы отца. У него тогда уже начали появляться теории о том, что между нами и обитателями какой-нибудь Микронезии нет никаких анатомических отличий -- строение икр, скелет, череп, даже то, как растут волосы -- все это абсолютно  не отличается. Подтверждений своих теорий у него не было, однако это не мешало ему рассказывать о них при каждом удобном случае. Вот и сейчас я слышу его голос, слышу, как он с азартом объясняет скучающим знакомым, что икроножные мышцы у черных развиты не меньше, чем у нас, а супротивное мнение является глубоко ошибочным и основано на наблюдениях за теми, кто много времени проводит в лодках. Я слышу его голос, вспоминаю лицо Кардиваля, который, кажется, с большим трудом пытается бороться с зевотой, но никак не могу увидеть Лизу -- как будто она утонула во всех этих разговорах, скучающих минах и звоне китайского фарфора.^^ Я помню, что сам заговорил с ней тогда, после обеда. Помню, что рассказы отца тогда вгоняли в сон и меня, и я неумело пошутил о его  этнологических проповедях, благополучное завершение которых не грех было и отпраздновать. Лиза однако нахмурилась и как-то даже обиделась на меня, если бы я невольно оскорбил ее своей шуткой. Она сказала мне, что восхищается моим отцом и его работой, что именно благодаря таким людям наука и движется вперед, а не остается в плену примитивных суеверий и самодовольного невежества.^^ Самодовольный невежда. Таким я впервые предстал перед ее глазами. Быть может, я все это время просто пытался перед ней оправдаться?]]
  ,next         = walk_("cliff3")
}

cliff3 = scene {
   _vessel      = false --Vessel is on
  ,_done        = false --Everything is done on a cliff
  ,nam          = "On the cliff"--"На утесе"
  ,obj          = {
                     "cliff3_itself"
                    ,"cliff3_fall"
                    ,"cliff3_birds"
                    ,"cliff3_island"
                    ,"cliff3_vessel"
                    ,"cliff3_goback"
                    ,"cliff3_rocks"
                  }
  ,Exit         = choose_ {
                     ["default"] = [[It is too early to leave. I must explore further while I can.]]--[[Мне кажется, что уходить еще рано, как если бы я забыл сделать что-то очень важное, то, ради чего и поднимался на этот утес.]]
                    ,["cliff3._done"] = walk_("rockfall", [[As the rocks tumble down I run for my life, fear gripging my throat. Forgoing caution, I jump over the rocks and stumble at the bottom of the cliff, my foot catching on a point, sending my frame crashing onto them.]]--[[Я побежал к песчаной косе, чувствуя, как страх захватывает меня -- точно кто-то сжимает мне пальцами горло. Забыв про осторожность, я перепрыгивал через камни, как если бы даже секунда промедления могла оказаться смертельной для меня. Уже у самого спуска с утеса я споткнулся -- ступня моя зацепилась за что-то, -- и повалился на острые камни.]])
                  }
  ,TurnAround   = choose_ {
                     ["default"] = [[No one stands behind me. As always.]]--[[Позади меня никого нет. Как и всегда.]]
                    ,["cliff3._done"] = [[For an instant I hear the sound of running feet swiftly pass behind me...]]--[[На секунду мне показалось, что я слышу позади себя топот ног... Но нет, они еще не на острове. Однако мне следует поторопиться.]]
                  }
  ,Wait         = choose_ {
                     ["default"] =[[Why did I come to the top of this cliff yet again, as though I have something to wait for.]]-- [[Я и сам не понимаю, зачем прихожу на этот утес. Как будто я и правда жду чего-то.]]
                    ,["cliff3._done"] =[[I should not stay any longer.]]-- [[Не стоит задерживаться здесь больше.]]
                  }
}

cliff3_itself = item {
   nam          = _"cliff"--_"утес"
  ,dsc          = choose_ {
                     ["default"] =
                        [[I stand on the cliff, after waiting what seems months in the cabin of the ship, watching the sky fall.
						^The sea is calm today, the surf barely audible. I inwardly hope the rainy season is finally coming to an end, and my health can recover after so many gusts and downpours.]]--[[Я стою на утесе. Мне кажется, что я просидел в душной капитанской каюте несколько месяцев, дожидаясь, когда же закончится дождь. ^Океан сегодня спокоен -- я почти не слышу шум прибоя. Быть может, сезон дождей на этом Богом забытом островке суши наконец подходит к концу, и вся моя хандра пройдет вместе с ветрами и ливнями.^]]
                    ,["cliff3._done"] =
                        [[I must hurry. This is the highest point, and surely they will notice me, but I pray they will not sail into the hazards behind this cliff where the Mayflower rest concealed from view.]]--[[Нельзя медлить! Я стою на самой высокой точке с этой стороны берега, они могу заметить меня. Нужно поскорее вернуться на корабль и молиться, что они не будут заплывать за скалы, которые пока что заботливо скрывают "Майский цветок" от их глаз.]]
                  }
  ,Exam         = [[The cliff is the same as always.]]--[[Я был здесь уже десятки раз. Ничего не изменилось.]]
  ,Descend      = redirect_("Exit", "cliff3")
}

cliff3_rocks = item {
   nam          = _"stones"--_"камни"
  ,Lie          = [[It would be uncomfotable to lie down on the stones.]]--[[Не стоит ложиться на камни.]]
  ,Sit          = [[The stones are too cold and hard to sit upon.]]--[[У меня сегодня нет настроения сидеть на холодных камнях.]]
  ,Move         = [[I should find something other than moving stones to occupy my time.]]--[[Надеюсь, я еще могу придумать себе занятие более осмысленное, чем перетаскивать эти камни с места на место.]]
  ,withThrow    = true
}

cliff3_fall = item {
   nam          = _"open"--_"обрыв"
  ,dsc          = choose_ {
                    ["not cliff3._done"] = [[I am not close enough to the cliff.]]--[[Я стою чуть поодаль от обрыва,]]
                  }
  ,Exam         = choose_ {
                     ["default"] =
                        [[I am too worried to approach the edge of the cliff again, having already experienced the ill effect of a mad seagull and a windy day.]]--[[Мне совсем не хочется подходить к краю обрыва -- я не могу заставить себя сделать даже единый шаг, точно, стоит мне лишь приблизиться к этой каменистой пропасти, как надо мной тут же спикирует безумная чайка.]]
                    ,["cliff3._done"] = [[It is best to leave the cliff for now.]]--[[Сейчас не до этого, лучше поскорее убраться отсюда.]]
                  }
  ,WalkTo       = redirect_("Exam", "cliff3_fall")
  ,JumpFrom     = [[Suicide is not an option.]]--[[Я не собираюсь кончать с жизнью -- особенно, бросаясь на камни.]]
  ,Descend      = [[It is too treacherous to climb down the cliff.]]--[[Вряд ли я смогу здесь спуститься.]]
  ,withThrowIn  = true
}

cliff3_birds = item {
   nam          = _"~gull"--_"~чайки"
  ,live         = true
  ,dsc          = choose_ {
                    ["not cliff3._done"] = 
                      [[There are no gulls in the air, but the memory of the last encounter, having lost my dear father's telescope, makes me question why I am repeatedly drawn to this place.]]--[[хотя чаек сегодня не видно, но все равно этот утес как-то необъяснимо пугает меня с тех пор, как я потерял здесь отцовскую подзорную трубу.  И в то же время какая-то неодолимая сила постоянно влечет меня сюда.]]
                  }
  ,Exam         = choose_ {
                     ["default"] = [[The gulls are away, and I do not miss their presence.]]--[[Чаек сегодня не видно. Впрочем, не могу сказать, что я скучаю по ним.]]
                    ,["cliff3._done"] = [[The hysteria of those birds fills my head like a nightmare.]]--[[Чайки, точно обезумев, проносятся у меня на головой, оглашая весь остров истерическими криками.]]
                  }
  ,Swing        = choose_ {
                     ["default"] = [[I do not see any seagulls to use my fists on.]]--[[Я не вижу здесь чаек.]]
                    ,["cliff3._done"] = [[I swing my hand at the air, a violent greeting.]]--[[Я помахал чайкам рукой, точно здороваясь с ними.]]
                  }
}

cliff3_island = item {
   nam          = _"island"--_"остров"
  ,Exam         = choose_ {
                     ["default"] =  [[It's best to use the telescope. It's difficult to see the island.]]--[[Лучше воспользоваться подзорной трубой, так я почти ничего не вижу.]]
                    ,["cliff3._done"] = [[This is no time for examination. I must hurry down the cliff.]]--[[Сейчас не время заниматься этим, лучше поскорее спуститься с утеса.]]
                  }
  ,ExamWith     = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("cliff3._vessel"),
                          [[The distant island is visible through the telescope. Without a doubt, it is the largest in the archipelago. Certainly there are settlements, perhaps even plantations. I must devise a way to reach them, and I will be saved. If the storm had taken us to another shore, so many lives might've been saved...
						  ^The shoreline through my telescope provides no clear evidence. What I would give to see the light of a bonfire, the form of people moving along its white beaches, or God willing, the sails of another sea-worthy vessel.
						  ^There is nothing...
						  ^Then suddenly the edge of the island produces something altogether shocking to my eyes.
						  ^A small craft!]]--[[Я рассматриваю далекий остров через подзорную трубу. Без сомнения -- это самый большой остров во всем архипелаге, и там наверняка есть поселения, плантации -- есть люди! Мне нужно просто как-то добраться туда, и я буду спасен. Вот если бы шторм в тот злополучный день отнес нас к другим берегам -- возможно, тогда даже капитана и двух матросов удалось бы спасти.^ Я долго рассматриваю береговую линию острова через подзорную трубу в надежде увидеть хоть какое-нибудь подтверждение тому, что остров этот обитаем -- костры, людей на песчаной косе, возможно, даже корабль. Однако ничего нет.^ Вдруг, уже собираясь уходить, я замечаю, что от острова начинает отдаляться какой-то темный объект. Это лодка!]]
                        }
                    ,["cliff3._done"] = [[I should hurry down the cliff.]]--[[Сейчас не время заниматься этим, лучше поскорее спуститься с утеса.]]
                  }
}

cliff3_vessel = item {
   nam          = name_ {
					  ["default"] = _"Boat|~dark object"
                     ,["wave"] = _"the natives in a boat"
                     ,["waving"] = _"the natives in a boat"--[[
                     ["default"] = _"лодка|~темный объект"
                    ,["помахать"] = _"туземцы в лодке"
                    ,["махать"] = _"туземцы в лодке"]]
                  }
  ,Exam         = choose_ {
                     ["default"] = [[I cannot see so far with my vision alone. I must use the telescope.]]--[[Так я ничего не вижу, лодка слишком далеко. Лучше воспользоваться подзорной трубой.]]
                    ,["cliff3._done"] = [[I must get down to the shore quickly.]]--[[Не время сейчас разглядывать эту лодку, лучше поскорее убраться отсюда, пока меня не заметили.]]
                  }
  ,ExamWith     = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("cliff3._done"),
                          music_("wounded", 0),
                           [[The boat has a uniquely elongated shape unlike any I've seen before. Dark-skinned rowers pull at their oars. I see no white faces. Suddenly fear of an alien race grips at me deeply. Are they from a very savage tribe, the scouts who head straight toward my home. I have heard rumors of cannibalism thriving among these island people.
						   ^I resolve that I must remain out of sight until I can be sure of my safety. Standing on this cliff, visible to all who approad, might be too forward and lead me into danger. 
						   ^Suddenly the gulls return and squawk over my head.]]--[[Лодка имеет странную вытянутую форму. Я замечаю нескольких темнокожих людей, которые активно гребут веслами. Кажется, белых людей на лодке нет совсем. Меня внезапно сковывает страх. Неужели это те самые дикие племена, о которых я слышал? Они направляются прямиком к моему острову. Говорили, что среди туземцев здесь процветает  каннибализм. Лучше мне не попадаться им на глаза. Лучше поскорее убраться отсюда.^ Словно в подтверждение моих слов над головой моей раздался надрывный крик чайки.]]
                        }
                    ,["cliff3._done"] = redirect_("Exam", "cliff3_vessel")
                  }
  ,Swing        = [[It's better not to attract attention to my location at first.]]--[[Нет! Лучше не привлекать к себе внимания!]]
  ,cnd          = if_("cliff3._vessel")
}

cliff3_goback = item {
   nam          = _"Beach"--_"берег"
  ,WalkTo       = redirect_("Exit", "cliff3")
  ,Walk         = redirect_("Exit", "cliff3")
  ,Climb        = redirect_("Exit", "cliff3")
  ,DescendOn    = redirect_("Exit", "cliff3")
}

rockfall = scene {
   _bant        = false --Wound is taken care of
  ,_done        = false --Everything is done here
  ,nam          = "On the cliff"--"На утесе"
  ,obj          = { 
                     "rockfall_rocks"
                    ,"rockfall_me"
                    ,"rockfall_wound"
                    ,"rockfall_legs"
                    ,"rockfall_goback"
                    ,"rockfall_vessel"
                    ,"rockfall_cliff"
                  }
  ,Wait         = [[I need to get back to the ship.]]--[[Нет! Мне нужно поскорее возвращаться на корабль.]]
  ,TurnAround   = choose_ {
                     ["default"] = [[Lying on the rocks, I cannot raise myself to look back.]]--[[Я не могу оглянуться, лежа на камнях.]]
                    ,["rockfall._done"] = [[They were far enough from shore I don't think they've made landfall, but I must hurry.]]--[[Пока их еще нет на острове, лодка была довольно далеко от берега, однако мне все равно следует поторопиться.]]
                  }
}

rockfall_cliff = item {
   nam          = _"cliff"--_"утес"
  ,Descend      = redirect_("Walk", "rockfall_goback")
}

rockfall_rocks = item {
   nam          = _"stones"--_"камни"
  ,dsc          = choose_ {
                     ["default"] = [[My body lays sprawled across the rocks.]]--[[Я лежу, распластавшись, на камнях.]]
                    ,["rockfall._done"] = [[I stand upon the rocks.]]--[[Я стою на камнях.]]
                  }
  ,Exam         = choose_ {
                     ["default"] = [[The sharp edges dig into my back. If one were to fall upon my head, it would be my death.]]--[[Камни остро впиваются мне в спину. Я понимаю, что если бы ударился при падении головой, то уже никогда не смог бы подняться.]]
                    ,["rockfall._done"] = 
                         [[The rocks are so sharp... they seem to be cutting away at the soles of my shoes. If one were to strike my head from above, it would be my death.]]--[[Камни здесь такие острые... Я даже чувствую, как они пытаются переломить подошвы моих башмаков. Я понимаю, что если бы ударился при падении  головой, то уже никогда не смог бы подняться.]]
                  }
  ,Lie          = choose_ {
                     ["default"] = [[I'm lying down. I have to get up.]]--[[Я и так лежу, но мне надо подниматься.]]
                    ,["rockfall._done"] = [[I shouldn't lie down here again.]]--[[Какой смысл снова ложиться на эти камни?]]
                  }
  ,Sit          = choose_ {
                     ["default"] = [[I cannot stay here any longer.]]--[[Не стоит задерживаться здесь. Мне надо поскорее убираться отсюда.]]
                    ,["rockfall._done"] = [[I must move on!]]--[[Мне нельзя здесь задерживаться!]]
                  }
  ,Stand        = redirect_("StandOn", "rockfall_legs")
  ,WalkOn       = choose_ {
                     ["default"] = [[I can hardly stand upon the rocks.]]--[[Я даже не могу встать!]]
                    ,["rockfall._done"] = [[Do not stay here any longer.]]--[[Не стоит здесь задерживаться.]]
                  }
  ,withThrow    = true
}

rockfall_me = item {
   nam          = _"right foot"--_"правая нога"
  ,dsc          = [[My leg below the right knee aches where the skin has been flayed. I touch the wound, my leg still in shock.]]--[[Правая нога ниже колена болит так сильно, что кажется, будто с нее содрали кожу. Я касаюсь раны рукой, и ногу тут же сводит от боли.]]
  ,Exam         = choose_ {
                     ["default"] = [[I clasp my hand around the wound, everything drenched in blood.]]--[[Я сильно рассадил правую ногу, вся штатина пропиталась кровью.]]
                    ,["rockfall._bant"] = [[The bleeding slows due to the knot in my handkerchief, which has turned a deep crimson. I try to move on carefully.]]--[[Правая нога перетянута моим носовым платком, который стал почти красным от крови. Но, кажется, я могу идти.]]
                  }
}

rockfall_wound = item {
   nam          = _"wound"--_"рана"
  ,Exam         = choose_ {
                     ["default"] = 
                        [[I test the bones below my knee, and it seems they are not broken, though so very hard to say in this condition. The wound bleeds horribly...]]--[[Я сильно рассадил себе ногу чуть ниже колена. Кажется, кости целы, хотя так очень сложно сказать. Рана сильно болит и кровоточит. Надо как-нибудь остановить кровотечение.]]
                    ,["rockfall._bant"] = [[I tie my handkerchief around the gash and the bleeding slows.]]--[[Я сильно перетянул ногу платком. Кажется, кровотечение остановилось.]]
                  }
  ,Bant         = use_ {
                     ["kerchief"] = 
                        choose_ {
                           ["rockfall._bant"] = [[The wound is bandaged as best I can.]]--[[Рана уже перевязана.]]
                          ,["default"] = 
                              chain_ {
                                set_("rockfall._bant"),
                                drop_("kerchief"),
                                [[I turn my right leg over and pull the handkerchief taut, now soaked with blood. The flow of blood is somewhat impeded by the constriction.]]--[[Я закатал правую штанину и перевязал рану своим носовым платком, сильно, как только мог, стянув ногу, чтобы остановить кровотечение. Платок быстро пропитался кровью, однако рана как будто стала меньше болеть.]]
                              }
                        }
                    ,["nil"] =
                        choose_ {
                           ["default"] = [[I must bandage the wound somehow, mainly to stop it from bleeding out.]]--[[Надо чем-нибудь перевязать рану, остановить кровотечение. Но чем?]]
                          ,["rockfall._bant"] = [[It is bandaged, and the bleeding has slowed down.]]--[[Рана уже перевязана. Кажется, я остановил кровотечение.]]
                        }
                  }
}

rockfall_legs = item {
   nam          = _"legs"--_"ноги"
  ,Exam         = redirect_("Exam", "rockfall_me")
  ,StandOn      = choose_ {
                     ["default"] = [[I attempt to stand, but my right leg makes it impossible. I must address the injury before I can move on.]]--[[Я пытаюсь подняться, но мне даже больно пошевелить ногой. Надо сначала осмотреть рану.]]
                    ,["rockfall._bant and not rockfall._done"] = chain_ { set_("rockfall._done"), [[I get to my feet.]]--[[Я встал на ноги.]] }
                    ,["rockfall._bant and rockfall._done"] = [[I can stand on my feet.]]--[[Я уже и так стою на ногах.]]
                  }
}

rockfall_goback = item {
   nam          = _"ship|Beach"--_"корабль|берег"
  ,WalkTo       = redirect_("Walk", "rockfall_goback")
  ,Walk         = choose_ {
                     ["default"] = [[First I have to get to my feet.]]--[[Надо сначала встать на ноги.]]
                    ,["rockfall._done"] = walk_("nearrocks2",  [[With great difficulty I clamber down, away from the cliff. Every move is excruciating.]]--[[Я с большим трудом спустился с утеса. Каждое движение в правой ноге отдавалось сильной болью.]])
                  }
}

rockfall_vessel = item {
   nam          = _"~Boat"--_"~лодка"
  ,Exam         = [[It's no time to search for the natives in the water. I need to focus on getting back to my own ship.]]--[[Не время сейчас разглядывать эту лодку, лучше постараться вернуться на корабль.]]
}

nearrocks2 = scene {
   nam          = "Near Rocks"--"У скал"
  ,obj          = { 
                     "nearrocks2_itself"
                    ,"nearrocks2_shore"
                    ,"nearrocks2_goback"
                    ,"nearrocks_rocks"
                    ,"cmn_vessel"
                    ,"cmn_wound"
                  }
  ,Wait         = [[In spite of exhaustion, I must move on quickly.]]--[[Как бы мне ни хотелось еще немного отдохнуть, лучше все-таки здесь не задерживаться.]]
}

nearrocks2_itself = item {
   nam          = _"The Rock"--_"скалы"
  ,dsc          = [[The rock upon which I stand hides me from the rising wind.]]--[[Скалы, у которых я стою, скрывают меня от внезапно поднявшегося ветра.]]
  ,Exam         = [[Next to the rocks, surfeited from the pain within my leg, I wait for a flash of strength in order to go on.]]--[[Я стою у скал, понимая, что это лишь передышка на несколько секунд. Боль в ноге утихает. Надо идти дальше.]]
}

nearrocks2_shore = item {
   nam          = _"Beach"--_"берег"
  ,dsc          = [[I am afraid to approach the shore, considering whether what I saw from the cliff was truth or some pathetic self-deception.]]--[[На секунду мне кажется, что странная вытянутая лодка мне только показалась, но я все равно боюсь подойти к берегу. Лучше все-таки  поскорее вернуться на корабль.]]
  ,Exam         = [[The rocky shore is all the more difficult with my leg in such condition.]]--[[Берег здесь каменистый и подойти к воде непросто, особенно с моей ногой.]]
}

nearrocks_rocks = item {
   nam          = _"stones"--_"камни"
  ,Exam         = [[I cannot be sure I'll ever climb to the top of the cliff again with my leg so badly damaged.]]--[[Я даже не уверен, что смог бы сейчас снова подняться на утес со своей больной ногой.]]
  ,Sit          = [[I cannot sit, for I may not be able to stand.]]--[[Я не собираюсь садиться здесь.]]
  ,Lie          = [[I cannot lie down here. I must move on.]]--[[Лечь тут никак не получится.]]
  ,Ascend       = [[I absolutely can't climb the rocks like this.]]--[[Нет! Не нужно возвращаться туда!]]
  ,Climb        = redirect_("Ascend", "nearrocks_rocks")
  ,WalkOn       = [[I should not stay here.]]--[[Лучше мне не задерживаться здесь.]]
  ,Move         = [[The stones are so heavy they couldn't be moved were I still fit.]]--[[Кажется, я сошел с ума.]]
  ,withThrow    = true
}

nearrocks2_goback = item {
   nam          = _"ship|Beach"--_"корабль|берег"
  ,WalkTo       = walk_("shore2")
  ,Walk         = walk_("shore2")
}

cmn_vessel = item {
   nam          = _"~Boat"--_"~лодка"
  ,Exam         = [[Where has the native craft gone?]]--[[Отсюда я уже не могу разглядеть той лодки с туземцами, которая меня так напугала.]]
}

cmn_wound = item {
   nam          = _"wound|~right leg|~leg"--_"рана|~правая нога|~нога"
  ,Exam         = [[The deep gash, bruised all round, and my handkerchief thoroughly dyed with blood. 
  ^How many times have I made the same passage through the rocks successfully?]]--[[Глубокая ссадина на ноге точно горит, а платок мой весь пропитался кровью. И как я мог так расшибиться? Сколько раз я пробирался через  эти камни...]]
}

shore2 = scene {
   nam          = "On the Beach"-- "На берегу"
  ,obj          = { 
                     "shore2_itself"
                    ,"shore2_sand"
                    ,"shore2_leg"
                    ,"shore2_vessel"
                    ,"shore2_go"
                    ,"shore2_goback"
                    ,"shore2_water"
                  }
  ,Wait         = [[I need to return to the ship, and not loiter here.]]--[[Мне нужно вернуться на корабль, не стоит здесь задерживаться.]]
  ,TurnAround   = [[I look behind me, feeling weak and chased.]]--[[Я оглядываюсь с таким чувством, словно кто-то неумолимо следует по моим пятам.]]
}

shore2_water = item {
   nam          = _"~water|~Ocean"--_"~вода|~океан"
  ,Drink        = [[I will not drink seawater.]]--[[Кажется, у меня помутился рассудок от страха. Я не собираюсь пить соленую воду.]]
  ,withThrowIn  = true
}

shore2_itself = item {
   nam          = _"Beach|~sand spit"--_"берег|~песчаная коса"
  ,dsc          = [[I walk upon the spit of sand.]]--[[Я иду по песчаной косе.]]
  ,Exam         = [[My injured leg makes the wet sand even more draining than usual.]]--[[Идти по песку с разбитой ногой довольно тяжело.]]
  ,Sit          = [[I can't sit here in the shallows.]]--[[У меня нет времени рассиживаться здесь, на берегу.]]
  ,Lie          = [[I certainly don't need to lie down here.]]--[[Я не собираюсь лежать на это песке.]]
  ,withThrow    = true
}

shore2_sand = item {
   nam          = _"sand"--_"песок"
  ,dsc          = choose_ {
                     ["default"] = [[My shoes bog down into the wet sand.]]--[[Ботинки мои глубоко увязают во влажном песке,]]
                    ,["shoes._off"] = [[My bare feet bog down into the wet sand.]]--[[Мои босые ноги глубоко увязают во влажном песке,]]
                  }
  ,Exam         = [[This terrain wasn't easy for an able-bodied man...]]--[[Идти по этому песку совсем непросто -- даже со здоровыми ногами.]]
  ,Sit          = redirect_("Sit", "shore2_itself")
  ,Lie          = redirect_("Lie", "shore2_itself")
  ,WalkOn       = redirect_("WalkOn", "shore2_go")
  ,WalkTo       = redirect_("WalkOn", "shore2_go")
  ,withThrow    = true
}

shore2_leg = item {
   nam          = _"~right leg|~leg|wound"--_"~правая нога|~нога|рана"
  ,dsc          = [[Every step pulses with pain.]]--[[каждый шаг отдается болью в правой ноге.]]
  ,Exam         = [[The dressing is becoming looser. I stop and tighten, wincing. I must wash the wound and find a clean bandage as soon as possible.]]--[[Повязка из платка немного ослабла, и я затягиваю ее сильнее, морщась от боли. Мне нужно скорее промыть и перебинтовать рану.]]
}

shore2_vessel = item {
   nam          = _"boat"--_"лодка"
  ,dsc          = [[The foreign vessel is nowhere to be seen. I feel their presence, but could it be in my mind?]]--[[Здесь, с берега, странной лодки пришельцев уже не видно, но я все равно чувствую, как они неумолимо приближаются к моему острову.]]
  ,Exam         = [[There are no boats along the length of the shore.]]--[[Лодки отсюда не видно, но я словно чувствую ее спиной.]]
}

shore2_go = item {
   nam          = _"Beach"--_"берег"
  ,WalkOn       =  [[I can walk no farther. I must return to the ship.]]--[[Я сейчас не в состоянии прогуливаться по берегу, мне следует вернуться на корабль.]]
  ,WalkTo       = redirect_("WalkOn", "shore2_go")
}

shore2_goback = item {
   nam          = _"ship to"--_"корабль"
  ,WalkTo       = walk_("nearship2")
  ,Walk         = walk_("nearship2")
}

nearship2 = scene {
   _event       = false --Rope is broken
  ,_done        = false --All is done
  ,nam          = "The ship"--"У корабля"
  ,obj          = { 
                     "nearship2_itself"
                    ,"nearship2_rocks"
                    ,"nearship2_leg"
                    ,"nearship2_side" 
                    ,"nearship2_shore"
                    ,"nearship2_water"
                  }
  ,Wait         = [[Waist deep as I wade toward the side of the ship, with an open wound bleeding out, only somewhat slowed by the fabric...]]--[[Я боюсь долго стоять с открытой раной по пояс в воде. Мне нужно скорее выбираться отсюда.]]
  ,TurnAround   = [[I nervously turn to check the rocks, obviously unaware of anything below the surface of the water.]]--[[Позади меня только скалы.]]
}

nearship2_water = item {
   nam          = _"~water|~Ocean"--_"~вода|~океан"
  ,Drink        = [[I cannot drink salt water, no matter how thirsty.]]--[[Не стоит мне пить соленую воду.]]
  ,withThrowIn  = true
}

nearship2_shore = item {
   nam          = _"Beach"--_"берег"
  ,Walk         = [[I should return to the ship.]]--[[Лучше мне вернуться на корабль.]]
  ,WalkTo       = redirect_("Walk", "nearship2_shore")
  ,WalkOn       = redirect_("Walk", "nearship2_shore")
}

nearship2_itself = item {
   nam          = _"ship to"--_"корабль"
  ,dsc          = [[Standing waist-deep near the ship...]]--[[Я стою по пояс в воде у корабля.]]
  ,Exam         = [[The Mayflower feels enormous next to my crippled frame. Wind ripples the sail on the mainmast, and staring up from this vantage point gives the impression she sails on the water.
  ^I can hear the rowdy crew barking in concert, the grumbling captain standing on the bridge, his gilded telescope in hand.
  ^There's no one there.]]--[["Майский цветок" кажется огромным и величественным. Ветер раздувает парус на грот-мачте и, если поднять голову, то кажется, что корабль и правда плывет по волнам. Мне даже начинают слышаться голоса команды -- грубые крики матросов, недовольное ворчание капитана, который стоит на мостике со своей позолоченной подзорной трубой. Но никого уже нет. Это лишь мое наваждение.]]
  ,Ascend       = choose_ {
                     ["default"] = chain_ {
                          set_("nearship2._event"),
                          walk_("nearship2_fall",
                             [[I mount the rope and as I begin to climb my feet slip repeatedly on the surface of the hull. 
							 ^Somewhere above there is a sharp crack, and before I can raise my eyes to look the rope gives way and I plummet into the water.]]--[[Я поднимаюсь по веревке на борт, это дается мне тяжелее, чем обычно, к тому же ноги постоянно соскальзывают с обшивки корабля. Вдруг я слышу где-то высоко резкий треск. Я не успеваю поднять голову, как вдруг начинаю падать вниз, по-прежнему вцепившись в веверку.]])
                        }
                    ,["nearship2._event and not nearship2._done"] = 
                         [[The deck can only be reached by the rope. It's too high to climb with this injured leg of mine.]]--[[На борт корабля я могу подняться только по веревке. Тут слишком высоко, чтобы я мог залезть сам или допрыгнуть.  К тому же, с больной ногой.]]
                    ,["nearship2._event and nearship2._done"] = chain_ { drop_("matches"), drop_("spyglass2"), wearall, walk_("entry5") }
                  }
  ,Climb        = redirect_("Ascend", "nearship2_itself")
  ,ClimbIn      = redirect_("Ascend", "nearship2_itself")
  ,Jump         = choose_ {
                     ["default"] = [[I can't jump at all, much less to the bulwark. I must use the rope that I hooked there.]]--[[Лучше подняться по веревке, которая свисает с фальшборта.]]
                    ,["nearship2._event"] = [[Jumping onto the deck from here is impossible.]]--[[Запрыгнуть на борт никак не получится.]]
                  }
  ,Move         = [[There's no hope of moving the ship.]]--[[Это просто не в человеческих силах.]]
  ,Fire         = [[I love this ship, despite her weaknesses. Besides her wood is too wet.]]--[[У меня, должно быть, помутился рассудок.]]
  ,FireOff      = nilfn
}

nearship2_rocks = item {
   nam          = _"The Rock"--_"скалы"
  ,dsc          = [[The Mayflower lay hidden behind the rocks. Even if the people on that small craft were headed straight in this direction, there's a chance they wouldn't notice her.]]--[["Майский цветок" скрыт от посторонних глаз скалами, и если даже те люди на лодке действительно направляются на остров, есть  неплохой шанс, что они не заметят мой корабль.]]
  ,Exam         = [[Surrounding the rocky inlet, the cliff hides my broken Mayflower. It seems perhaps Providence has planned an ideal location for a shipwreck in these circumstances. However I fear Her Majesty's fleet, by some chance passing these uninhabited lands, would also fail to notice her.]]--[[Окружающие эту каменистую бухту скалы неплохо скрывают "Майский цветок" от посторонних глаз. Да уж, провидение выбрало для моего кораблекрушения удачное место. Правда, и корабли флота Ее Величества, если вдруг судьба занесет их к этим диким необитаемым землям, тоже могут меня не заметить.]]
}

nearship2_leg = item {
   nam          = _"~leg|wound|~right leg"--_"~нога|рана|~правая нога"
  ,dsc          = [[Standing on this unmended leg, I must climb aboard and rest awhile in the captain's quarters.]]--[[Однако мне все равно неспокойно, и нога моя продолжает болеть. Мне хочется только одного -- подняться на корабль и забыться сном в  бывшей каюте капитана.]]
  ,Exam         = [[The bandage has slipped. I pull it taut, but it is failing and the blood has resumed its course. The edge of the rock must have compromised an important artery.]]--[[Повязка на ноге вновь ослабла, и я затянул ее посильнее. Но этого явно недостаточно. Кровотечение снова возобновилось. Видимо, я  повредил какую-то артерию. Мне нужно поскорее выбираться из воды.]]
  ,Clean        = choose_ {
                     ["kerchief"] = [[I sit down and untie the knot, wiping away the thick flow of blood and debris before tying it back tightly.]]--[[Я несколько раз коснулся раны чистым краем платка, и на платке остались темные следы крови.]]
                    ,["jacket"] =  [[It would be unwise to use my soiled jacket on the wound, for fear of some worse malady taking hold.]]--[[Не стоит касаться раны грязным засаленным камзолом -- как бы не занести заражение.]]
                  }
}

rope2 = item {
   nam          = _"rope with a hook"--_"веревка с крюком"
  ,Exam         =  [[A considerable length of rope with an iron hook at the end. With it I can climb to the deck of the Mayflower.]]--[[Длинная веревка с железным крюком на конце. По этой веревке я поднимаюсь на корабль.]]
  ,Throw        = use_ {
                    ["nearship2_side"] = 
                      chain_ {
                        set_("nearship2._done"),
                        drop_("rope2"),
                         [[I try to set the hook along the gunwale, but several attempts yield a clang against the deck and the hook falling back toward me, a frightening threat. Finally I manage to secure it.]]--[[Я попробовал закинуть веревку на фальшборт, но получилось у меня далеко не с первого раза. Несколько раз крюк просто бился об обшивку корабля, не долетая до фальшборта. Наконец, мне удалось зацепить крюк за какую-то перекладину.]]
                      }
                  }
}

nearship2_side = item {
   nam          = _"bulwark"--_"фальшборт"
  ,withThrow    = true
  ,Ascend       = redirect_("Ascend", "nearship2_itself")
  ,Climb        = redirect_("Ascend", "nearship2_itself")
  ,Jump         = redirect_("Jump", "nearship2_itself")
  ,Exam         = choose_ {
                     ["default"] = [[From the bulwark hangs the rope on which I have climbed before.]]--[[С фальшборта свисает длинная веревка, по которой я обычно поднимаюсь наверх.]]
                    ,["nearship2._event and not nearship2._done"] = 
                        [[The crossbar to which I fastened the hook must have finally broken under the strain of my weight. How many times have I ascended prior to this, yet in a time of greatest need it fails me...]]--[[Судя по всему, перекладина к которой я прицепил крюк, сломалась под моим весом. Удивительно -- сколько раз я поднимался по этой веревке, и ничего не происходило! Почему именно сейчас!]]
                    ,["nearship2._event and nearship2._done"] =
                        [[I pull several times to test its strength, and feel assured it will hold for the duration of my climb.]]--[[Я несколько раз с силой дернул веревку -- вроде держиться крепко. Надо попробовать подняться.]]
                  }
}

nearship2_fall = scene {
   nam          = nilfun
  ,dsc          = [[For a moment I struggle in a sudden spate of panic. A horrid imagination appears behind my eyes, of drowning in the shallows, surrounded by a cloud of red. 
  ^I free myself, turning over in a splash and forcing my hand into the water to search for the rope! Heavy, it has sunk along with the hook, which fell somewhere not far from my body.
  ^Nothing is visible, but then my foot finds the hook! I lift it <i>triumphantly</ i>.]]--[[Несколько секунд я барахтаюсь в воде в приступе безумной паники, точно и правда боюсь утонуть на мели. Потом я прихожу в себя. Веревка! Тяжелая и промасленная, она камнем пошла ко дну, но без нее я не смогу подняться наверх. Я начинаю осматриваться вокруг, невольно разгребая руками воду, как если бы это действительно помогало мне в поисках. Я помню, что железный крюк упал где-то совсем не далеко от меня, но я  ничего не вижу. Я в отчаянии. ^Вдруг нога моя задевает за что-то. Это крюк! Я наклоняюсь, чтобы <i>поднять его</i>.]]
  ,verbs        = { 
                    { "Take", "~lift|~take|~choose"--[[~поднять|~взять|~подобрать]], "rope with a hook"--[[веревку с крюком]] } 
                  }
  ,Take         = chain_ { take_("rope2"), walk_("nearship2") }
}