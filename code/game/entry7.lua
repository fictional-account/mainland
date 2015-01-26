--Entry 7. Gameplay rooms: 1

entry7 = diary {
   nam          = "September 18th, 1846"--"18 сентября 1846 года"
  ,enter        = music_("paper")
  ,dsc          = [[High fever, my head feels like it will split into a thousand pieces from this desperate anguish. I force myself to write. I force myself to believe in the worth of this document, that it will help me through.
  ^My imagination deceives me that I am captain of the ship, having received the title after those who deserve it were rendered incapacitated. The captain now stands with the sails set atop a reef...
  ^Lisa, where have I gone? My mind is elsewhere! My father's death took a toll, but I never would have thought to continue his research, to risk the lives of so many others, to die at the edge of the world. The decision to take on such a journey was madness, perhaps inherited along with the name Mayflower, and with so many unpaid debts.
  ^Why did you let me go? Why? You told me that I should not bother in my father's business, but after his death everything changed... 
  ^Emptiness fills me now because you changed as well. Maybe you at once saw me for what I was, that I could never be content in London. Was this the reason you stayed behind, allowing me to go alone, never objecting to the admiration of my father's ostentatiousness?
  ^You came to say goodbye. It is so obvious now, how could I have never noticed?
  ^In dreams I visit you, my dearest Lisa, and my feelings intensify. Your face has been so long hidden from me. 
  ^Until now...]]--[[У меня сильный жар, голова раскалывается от боли, и сил уже совсем не осталось. Сегодня я с трудом заставил себя встать с постели и сесть за стол, как если бы верил в то, что ведение этого журнала как-то поможет мне излечиться. Я только сейчас подумал, что и правда стал капитаном этого корабля, получил этот титул после того, как умерли все, кто мог бы это делать лучше меня. Капитан мертвого корабля, который стоит с поднятым парусом на рифах.^^ Лиза, зачем я отправился сюда? Я тогда словно лишился рассудка! Смерть отца была для меня тяжелым ударом, но я никогда бы даже не подумал о том, чтобы продолжать его не начатые исследования, рисковать своей жизнью, отправляясь на край света через океан. Решиться на такое путешествие для меня было шагом не столько даже отчаянным, сколько безумным, как  если бы безумие могло передаваться по наследству -- вместе с имением, "Майским цветком" и незакрытыми долгами. Почему ты отпустила меня, Лиза? Почему?^^ Ты никогда не говорила мне, что я должен продолжить отцовское дело, но после смерти отца все как будто изменилось...  Эта пустота внутри меня... И ты изменилась тоже... А может, ты просто увидела меня таким, каким я и был на самом деле?^^ Теперь, вспоминая об этом, я лишь уверяюсь в том, что ты меня в действительности никогда не любила. И именно поэтому ты и осталась там, на другом берегу, не отправилась со мной, несмотря на свое показное восхищение моим поступком. Ты осталась там и пришла лишь для того, чтобы попрощаться. Ведь это так очевидно и явно -- как я мог не замечать, не понимать этого раньше. Но я все равно думаю о тебе, Лиза. Чувства мои остались прежними. Только почему-то последние дни мне становится все сложнее вспомнить твое лицо.]]
  ,next         = walk_("dream")
}

dream = scene {
   nam          = "on deck"--"На палубе"
  ,enter        = music_("clearwaters", 0)
  ,obj          = { 
                     "dream_hold"
                    ,"dream_ship"
                    ,"dream_dock"
                    ,"dream_lisa"
                    ,"dream_lisasee"
                    ,"dream_sky"
                  }
  ,TurnAround   = choose_ {
                     ["default"] = [[I wish to draw the attention of my beloved.]]--[[Лучше сначала привлечь внимание Лизы, я еще успею налюбоваться матросами.]]
                    ,["dream_lisa._see and not dream_lisa._turn"] = [[I cannot take my eyes off her. I have not seen her in so long.]]--[[Я не могу оторвать глаз от Лизы. Ведь я не увижу ее несколько месяцев.]]
                    ,["dream_lisa._see and dream_lisa._turn"] = chain_ { mute_(3000,3000), walk_("dreamend") }
                  }
}

dream_sky = item {
   nam          = _"sky"--_"небо"
  ,Exam         = [[The sky is perfectly clear, no sign of rain.]]--[[Небо совсем чистое, сегодня не должно быть дождя.]]
}

dream_hold = item {
   nam          = _"deck"
  ,dsc          = [[I stand on the main deck of the ship, flooded with sunlight.]]--[[Я стою на палубе "Майского цветка". Все вокруг заливает солнечным светом.]]
  ,Exam         = [[Before me stand so many come to see us off, shouting and waving. The crew is preparing to sail to the Pacific.]]--[[Я осматриваю палубу вокруг себя. Рядом со мной стоят матросы. Многих тоже пришли провожать, и они кричат что-то, энергично размахивая руками. Кажется, словно мы отправляемся не в плавание через Тихий Океан, а на какой-нибудь праздничный парад.]]
  ,Sit          = [[I would rather spend every moment focused on my dear Lisa.]]--[[Я не хочу сидеть на палубе, лучше последний раз попрощаться с Лизой.]]
  ,Lie          = [[I would be trampled in the bustle should I lie down.]]--[[С какой стати я буду сейчас ложиться на палубу?]]
}

dream_ship = item {
   nam          = _"deck"--_"корабль"
  ,dsc          = [[The ship sits in port, ready to set sail. I feel disbelief welling up again, anticipation gnawing at me, the fantastic and altogether unreal idea of two months spent at sea to reach the Pacific Ocean.]]--[[Корабль еще в порту, но уже готовится к отплытию. Мне все еще не верится в то, что я действительно решился на это -- отправиться в  двухмесячное плавание через Тихий Океан.^]]
  ,Exam         = [[The Mayflower, she shines in the daylight. A month ago she was still in the shipyard, where I and my father appraised her condition. This will be her maiden voyage.]]--[["Майский цветок" сегодня весь сверкает. Всего лишь месяц назад корабль был еще в верфи, и мы осматривали его вместе с отцом. Это будет первое плавание "Майского цветка" через Тихий Океан.]]
  ,Move         =[[What irrational thoughts fill my head from excitement!]]-- [[Какие странные мысли лезут мне в голову из-за волнения.]]
  ,Ascend       =[[I am already standing on the ship's deck.]]-- [[Я и так на корабле.]]
  ,Climb        = redirect_("Ascend", "dream_ship")
  ,Descend      =[[There is no time to disembark now. Our journey will soon commence.]]-- [[Нет, на это уже нет времени. Мы скоро отплываем.]]
}

dream_dock = item {
   nam          = _"pier"--_"пристань"
  ,dsc          = [[I look out at the dock, where the well-wishers assemble.]]-- [[Я смотрю на пристань, где собрались провожающие.]]
  ,Exam         = [[There are so many people, mostly commoners. The families of the sailors have come to grace us with earnest farewells, and to wave until the Mayflower has disappeared over the horizon. 
  ^Lisa dislikes crowds. I am honored that she has come to see me off.]]--[[Людей на пристани довольно много -- в основном, это простолюдины, семьи матросов, которым показалось мало прощаний на берегу, и они, верно, будут стоять здесь, пока "Майский цветок" не исчезнет из вида. Лиза никогда не любила толпы людей, удивительно, что она все-таки пришла сюда.]]
  ,Walk         = redirect_("Descend", "dream_ship")
  ,DescendOn    = redirect_("Descend", "dream_ship")
}

dream_lisa = item {
   _see         = false --Lisa see me
  ,turn         = false --I need to turn around
  ,nam          = _"Lisa"--_"Лиза"
  ,live         = true
  ,dsc          = [[Lisa stands off to the side, as if embarrassed and unsure.]]--[[Лиза тоже там -- она стоит чуть в сторонке, как будто немного смущается того, что пришла.]]
  ,Exam         = choose_ {
                     ["default"] = 
                       [[My beloved wears a light green dress made of muslin, usually reserved for holidays, and a lovely Kashmir shawl slipping from her shoulders. She occasionally moves her hand about her waist. It is evident she worries, her parasol unsteadily propped against her arm. 
					   ^But wait, that is not a parasol but an umbrella. The sky is perfectly clear today, there should be no rain...]]--[[На Лизе светло-зеленое кисейное платье, которое она надевает только по праздникам. Красивая кашмирская шаль постоянно соскальзывает с ее плеч, и она время от времени поправляет ее рукой. Видно, что она волнуется и как-то нервно покачивает маленьким зонтиком. Зачем она взяла с собой зонт? Ведь небо совсем чистое, сегодня не должно быть дождя.]]
                    ,["dream_lisa._see"] =
                        chain_ {
                          set_("dream_lisa._turn"),
                          [[She beckons me with her hand to turn about and face the other direction.]]--[[Кажется, Лиза хочет что-то мне сказать. Она показывает куда-то рукой, как если бы хотела, чтобы я обернулся.]]
                        }
                  }
  ,Swing        = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("dream_lisa._see"),
                          [[I waved to her, and she waves back, smiling, and appearing to me extraordinarily beautiful. A breeze tussles her dress, and my eyes remain fixed, unflinching. I want to <i>never</ i> look away.]]--[[Я махаю Лизе рукой, она, наконец, замечает меня и тоже машет мне в ответ. Я вижу, что она улыбается. Почему-то именно сейчас, на пристани, в этой своей индийской шали она кажется мне необыкновенно красивой. Легкий порыв ветра развевает ее оборчатое платье. Я не могу ей налюбоваться. Мне хочется <i>смотреть</i> на нее, не отрываясь.]]
                        }
                    ,["dream_lisa._see"] = [[I wave once more to her.]]--[[Я еще раз помахал Лизе рукой.]]
                  }
}

dream_lisasee = item {
   nam          = ""
  ,dsc          =[[She looks around excitedly, and now seems not to notice me at all.
  ^I must draw her attention.]]-- [[Она как-то взволнованно оглядывается по сторонам -- кажется, она не замечает меня. Надо как-то привлечь ее внимание.]]
  ,cnd          = not_("dream_lisa._see")
}

dreamend = scene {
   nam          = nilfun
  ,enter        = music_("violin")
  ,dsc          = [[I turn around, and facing me is a bank of storm clouds encroaching suddenly, unnaturally, carried on a fierce wind, black before the sunset as the light fades and the first flashes of lightning break forth...]]--[[Я оборачиваюсь и вдруг замечаю огромные грозовые облака, которые поднявшийся ветер приносит со стороны заката. Черные тучи быстро затягивают  небо, солнечный свет меркнет, я вижу первую вспышку грозы...]]
  ,verbs        = {
                    { "Next", "further", "{}" } 
                  }
  ,Next         = chain_ { drop_("jacket"), drop_("shoes"), drop_("pants"), walk_("entry8") }
}
