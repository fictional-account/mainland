--Entry 8. Gameplay rooms: 7

entry8 = diary {
   _open        = false
  ,nam          = [[September 21st, 1846]]--"21 сентября 1846 года"
  ,enter        = chain_ { set_("entry8._open"), music_("paper") }
  ,dsc          = [[I might be dying. 
  ^I have become so cold as of late. Yes, and the wound on this leg will not even begin to heal. After such affliction as I have endured...
  ^My hand can barely grasp the pen, and my eyes drift and fall. 
  ^I fear the end may come at any moment, after every breath, with a heart that cannot hold out.]] --[[Мне кажется, я умираю. От простуды. Да и рана на ноге так и не проходит. И все это -- после того, как я пережил чуму и крушение на корабле. Рука моя едва держит перо, перед глазами все плывет. Я чувствую себя так, словно это может произойти в любую секунду. С каждым мгновением,  с каждым вздохом... Сердце мое не выдержит, как у отца, и я...]]
  ,next         = walk_("entry8b")
}

entry8b = diary {
   nam          = [[September 21st, 1846]]--"22 сентября 1846 года"
  ,enter        = music_("paper")
  ,dsc          = [[I have somehow grown calm, as though my heart has nothing to worry over any longer. Or perhaps my mind has carried its own delusion to an end. I can hardly write anymore on this page. Lisa, what does her face look like? Was my entire existence contrived? I cannot compare it to anything sure.
  ^The ink in the captain's well will soon run dry, perhaps not before my memory.]]  --[[Сегодня я почему-то чувствую себя спокойнее. Но теперь... Как будто меня уже ничто не беспокоит. Ничто не в силах... Или у меня просто окончательно помутился рассудок. Я с трудом могу писать. Лиза, почему я не могу вспомнить твоего лица? Из-за этого теперь вся жизнь моя кажется выдуманной, словно... Я даже не могу придумать сравнения.^^ И у меня снова кончаются чернила. Скоро я не смогу даже писать.]]
  ,next         = walk_("entry8c")
}

entry8c = diary {
   nam          = [[September 21st, 1846]]--"23 сентября 1846 года"
  ,enter        = music_("paper")
  ,dsc          = [[I do not want to die here. I must carry on. So much suffering thus far endured, and so many lives in its wake...]]  --[[Нет, я не хочу умирать здесь. В этой каюте мертвеца. Я должен сделать что-то. Все не может завершиться так, ради чего я столько страдал, ради чего остался жив, когда остальные умерли? Я должен сделать что-то. Я — —]]
  ,next         = walk_("onbed3")
}

cmn_wound2 = item {
   nam          = _"wound|~leg|~right leg"  --_"рана|~нога|~правая нога"
  ,Exam         = [[I tighten the bandage around my leg. The wound aches to the bone, and the smell of putrid flesh is nauseating.]]  --[[Я крепко затянул повязку на ноге, однако это все, что я могу сделать. Рана по-прежнему болит и начинает гноиться.]]
}

onbed3 = scene {
   nam          = "The cabin"--"В каюте"
  ,enter        = music_("wounded", 0)
  ,obj          = { 
                     "onbed3_bed"
                    ,"onbed3_forehead"
                    ,"onbed3_rain" 
                    ,"onbed3_legs"
                    ,"cmn_wound2"
                  }
  ,Wait         = [[I must not wait. Time is running out.]]  --[[Я не могу ждать. Я чувствую, что у меня осталось совсем немного времени.]]
  ,TurnAround   = [[There is nothing behind me.]]-- [[Я лежу на постели, я не могу обернуться.]]
}

onbed3_bed = item {
   nam          = _"bed"--_"постель"
  ,dsc          = [[I lie across the bed.]]  --[[Я лежу на постели.]]
  ,Exam         = [[The sheets are crumpled and soaked in sweat.]]  --[[Все простыни на постели смяты и пропитались моим потом.]]
  ,Stand        = walk_("cabin3", 
                    [[I struggle to my feet, as my eyes awkwardly adjust to the change in orientation. Grasping at consciousness I lean my hand against the wall. The air is thick with dust and feels so slow entering my lungs.
					^I need to get some fresh air.]]  --[[Я с трудом поднимаюсь на ноги. Меня немного покачивает, в глазах темнеет. Кажется, я вот-вот потеряю сознание. Я опираюсь рукой о стену. Только сейчас я понимаю, что в каюте весь воздух пропитан пылью -- так, что почти невозможно дышать. Мне нужно выбраться наружу. Тогда мне станет лучше. Я почти уверен в этом.]])
  ,Move         = [[I am too weak to rearrange the bed.]]  --[[Я сейчас не в состоянии передвигать что-то.]]
}

onbed3_forehead = item {
   nam          = _"forehead|~head"--_"лоб|~голова"
  ,dsc          = [[My forehead remains clinched tightly as a vise.]]  --[[Голову мою точно сжимает стальными тисками.]]
  ,Exam         = [[The skin is hot and damp. Surely a high fever, despite the late doctor accidentally crushing his thermometer at sea.]]  --[[Я касаюсь рукой лба. Лоб влажный и горячий. Кажется, у меня сильный жар, а я даже не знаю, как измерить температуру. Покойный врач разбил наш последний градусник, когда заболел сам. Но я не уверен. Мысли мои словно в тумане.]]
}

onbed3_rain = item {
   nam          = _"rain"--_"дождь"
  ,dsc          = [[I feel every beat of my heart in my temples, and cannot relax enough to sleep. If only to make my struggle easier, to fall into a deep emptiness, the colorless void. 
  ^Then I choke and start, the heavy cough rending my lungs. Sitting up I remember I have forgotten something important.
  ^The rain has started again. I have to get out of bed.]]  --[[Я чувствую, как каждый удар сердца отдается у меня в висках. Я пытаюсь расслабиться, забыться сном -- мне кажется, что только  так мне станет хоть немного легче, -- и действительно медленно проваливаюсь в глубокую бесцветную пустоту, но тут же начинаю задыхаться  и захожусь тяжелым раздирающим легкие кашлем. Вдруг мне приходит в голову странная мысль, что я забыл сделать  что-то, что именно поэтому я не могу сейчас уснуть.^ Я слышу какой-то шум за окном. Кажется, идет дождь. Я должен подняться с постели, должен попробовать встать.]]
   ,Exam 		= [[The rain continues.
   ^Or is this pattering in my ears merely my imagination?]]  --[[Ливень не прекращается уже несколько дней. Или же это просто мои галлюцинации, странный шум у меня в ушах?]]
}

onbed3_legs = item {
   nam          = _"legs|~feet"
  ,StandOn      = redirect_("Stand", "onbed3_bed")
}

cabin3 = scene {
   nam          = "In the cabin"
  ,obj          = { 
                     "cabin3_itself"
                    ,"cabin3_floor"
                    ,"cabin3_paper"
                    ,"cabin3_window"
                    ,"cabin3_rain"
                    ,"cabin3_desk"
                    ,"cabin3_godeck"
                    ,"spyglass3"
                    ,"cabin3_bed"
                    ,"cmn_wound2"
                  }
  ,Exit         = choose_ {
                     ["default"] = 
                        [[Heading onto the deck the rain suddenly stops as I reach the door.
						^I know I have forgotten something... something I cannot leave here. I will not be returning.]]  --[[Я уже собираюсь выйти на палубу, как вдруг останавливаюсь. У меня возникает такое чувство, что я что-то забыл взять с собой. Что-то такое, что нельзя здесь оставлять. Как если бы я уже не собираюсь возвращаться.]]
                    ,["have(spyglass3)"] = walk_("maindeck3")
                  }
  ,Wait         = redirect_("Wait", "onbed3")
}

cabin3_itself = item {
   nam          = _"cabin"--_"каюта"
  ,dsc          = [[The cabin is coated in dust and looks quite unwelcoming.]]  --[[Все в каюте покрыто пылью, точно здесь давно уже никто не живет.]]
  ,Exam         = [[How I have grown to hate this oppressive atmosphere, the carved wooden panels and that lurid depiction of the sea tossing a ship about.
  ^I should die in this place, with the sailors and their master.]]  --[[Только сейчас я понимаю, как опостылела мне эта вычурная обстановка -- резные деревянные панели на стенах, аляповатая картина корабля. Лучше бы я поселился в кубрике, вместе с покойными матросами. И капитаном.]]
}

cabin3_floor = item {
   nam          = _"floor"--_"пол"
  ,dsc          = [[I stand in the middle of the floor.]]  --[[На полу валяются]]
  ,Exam         = [[The floor is strewn with scrawled pages, as that of a deceased novelist who before death took displeasure with his creation.]]  --[[Весь пол усыпан страницами из бортового журнала, и из-за этого каюта теперь еще больше похожа на кабинет какого-нибудь покойного романиста, который перед смертью решил уничтожить свое последнее творение, но не успел.]]
  ,Sit          = [[I do not have the strength to sit upright on the floor.]]  --[[Нет, не стоит садиться на пол.]]
  ,Lie          = [[If I lie down, I will not be able to stand back up.]]  --[[Мне кажется, если я сейчас лягу, то потом уже не смогу встать.]]
  ,Fire         = redirect_("Fire", "cmn_floor")
  ,FireOff      = redirect_("FireOff", "cmn_floor")
  ,Clean        = redirect_("Clean", "cmn_floor")
  ,Wet          = redirect_("Wet", "cmn_floor")
  ,withThrow    = true
  ,withPure     = true
}

cabin3_paper = item {
   _taken       = false
  ,nam          = _"pieces of paper"--_"листки бумаги"
  ,dsc          = [[There are many sheet of paper scattered around the room.]]  --[[какие-то листки бумаги.]]
  ,Exam         = [[The first to catch my eye is a page I wrote in the logbook. I must have torn it out.. 
  ^It seems I removed all of them, leaving only the captain's terse entries.
  ^Why? Did my fear manifest in such a destructive way, to hide all traces from myself?
  ^I can see the ship disappear into the waves, its frayed sails dragged under along with all my horrid memory.]]  --[[Это страницы из моего дневника, из бортового журнала "Майского цветка". Наверное, я вырвал какие-то записи из дневника, но я никак не могу вспомнить... Хотя нет. Я вспоминаю. Я вырвал все свои записи из бортового журнала "Майского цветка", оставив только то, что написал капитан. Как будто хотел избавиться от последних следов  своего присутствия, как будто испугался, что кто-то действительно сможет это прочитать. Но теперь я уже не понимаю, зачем так поступил. Здесь никогда никого не будет. Никто меня не найдет. "Майский цветок" будет вечно плыть по воображаемым волнам. По крайней мере, пока ветер не сорвет его истрепанный парус.]]
  ,Take         = choose_ {
                     ["default"] = 
                        chain_ {
                          set_("cabin3_paper._taken"),
                          [[I life a sheet and begin to read:
						  ^<i> September 4th, 1846 
						  ^The sea has rested for several days now, while the sea within me rages. 
  ^The storm in my heart roars at the idea I alone survived this catastrophe.</ i>
						  ^It is difficult to decipher my own writing.
						  ^I let it slip from my fingers to quietly settle back on the floor.]]
						    --[[Я поднял один из листков и прочитал:^ 
						  <i>4 сентября 1846 года^ 
						  Океан не успокаивается уже несколько дней кряду. Кажется, что его возмущает самый факт моего существования -- он в ярости от того, что я остался жив...^</i>
                            Мне сложно даже разобрать свой собственный почерк. Я отпускаю лист, и тот медленно и бесшумно оседает на пол.]]
                        }
                    ,["cabin3_paper._taken"] = 
                        [[Right now I cannot make myself read over them again. It is best to leave them where they lay. I cannot even recall tearing them from their binding...]]  --[[У меня нет никакого желания перечитывать эти записи. Пусть уж лучше они лежат здесь, на полу. По крайней мере пока я не вспомню, почему вырвал их из бортового  журнала.]]
                  }
  ,Pick         = redirect_("Take", "cabin3_paper")
  ,Move         = [[I have no energy for collecting them.]]  --[[Лучше оставить эти листки на полу.]]
}

cabin3_window = item {
   nam          = _"window"--_"окно"
  ,dsc          = [[Outside the cabin's window.]]  --[[За окном]]
  ,Exam         = redirect_("Exam", "cabin3_rain")
  ,Open         = [[The window does not open. Perhaps I just do not know how.]]  --[[Окно не открывается -- или же я просто не знаю, как его открыть.]]
  ,Clean        = nilfn
}

cabin3_rain = item {
   nam          = _"rain|~rain"--_"ливень|~дождь"
  ,dsc          = [[The storm now rages, and the rain hits the glass like needles.]]  --[[слышен грохот непрекрающегося ливня.]]
  ,Exam         = [[This is surely not a hallucination of the mind. How many days in a row now? I have completely lost count.]]  --[[Да, это не мои галлюцинации, за окном действительно идет дождь. Сколько дней подряд? Я уже сбился со счета.]]
}

cabin3_desk = item {
   nam          = _"table"--_"стол"
  ,Exam         = [[There is nothing interesting on the desk.]]  --[[У меня сейчас нет никакого желания разглядывать стол.]]
  ,SitAt        = [[There is no reason to sit at the desk.]]  --[[Мне нечего делать за столом. Все равно я сейчас не смогу писать, да и чернила уже все вышли.]]
  ,Move         = [[The desk is too heavy to move.]]  --[[Сейчас я не смогу сдвинуть стол и на дюйм.]]
  ,Climb        = [[I must escape the cabin and the awful thoughts it spawns. I can no longer breathe.]]  --[[Странные мысли лезут мне в голову. Лучше просто оставить этот стол в покое и выйти поскорее из душной каюту. Здесь мне нечем дышать.]]
  ,Ascend       = redirect_("Climb", "cabin3_desk")
  ,ClimbIn      = redirect_("Climb", "cabin3_desk")
  ,Clean        = nilfn
  ,Move         = redirect_("Move", "onbed3_bed")
  ,Open         = [[The drawers are all open.]]  --[[Все ящики стола и так открыты.]]
}

cabin3_bed = item {
   nam          = _"Bed|~Bed"--_"постель|~кровать"
  ,Exam         = [[The bed where I sleep, where the captain died. I do not want to die here.]]  --[[Моя постель со смятыми, пропитавшимися моим потом простынями. На этой постели умер капитан, но я не хочу здесь умирать.]]
  ,Lie          = [[I am too afraid of not getting back up to lie down in the captain's bed right now...]]  --[[Нет, я не хочу умирать на этой постели.]]
  ,Climb        = redirect_("Lie", "cabin3_bed")
  ,Ascend       = redirect_("Lie", "cabin3_bed")
  ,ClimbIn      = redirect_("Lie", "cabin3_bed")
  ,Sit          = [[I need to go outside. I need fresh air.]] --[[Мне нужно выйти наружу, нужно вдохнуть свежего воздуха.]]
  ,Move         = [[I have not the energy for moving the bed.]] --[[Заниматься сейчас этим не имеет ни малейшего смысла.]]
  ,Clean        = nilfn
}

cabin3_godeck = item {
   nam          = _"deck"--_"палуба"
  ,Walk         = redirect_("Exit", "cabin3")
  ,DescendOn    = redirect_("Exit", "cabin3")
  ,Climb        = redirect_("Exit", "cabin3")
}

spyglass3 = item {
   nam          = _"spyglass"--_"подзорная труба"
  ,Exam         = [[The spyglass, quite possibly the most valuable possession.]] --[[Это моя подзорная труба, самое ценное, что у меня есть.]]
  ,Take         = chain_ { take_("spyglass3"), [[I take the telescope.]] --[[Я взял со стола подзорную трубу.]] }
  ,dsc          = [[The handsome brass telescope lays on the desk.]] --[[На столе лежит моя позолоченная подзорная труба.]]
  ,Throw        = [[I might break the telescope if I throw it.]] --[[Я не собираюсь выбрасывать подзорную трубу.]]
  ,ThrowIn      = [[I do not think it wise to lose another telescope.]] --[[Я не собираюсь выбрасывать подзорную трубу.]]
  ,withExamWith = true
}

maindeck3 = scene {
   nam          = "On Deck"--"На палубе"
  ,obj          = {
                     "maindeck3_itself"
                    ,"maindeck3_rain"
                    ,"maindeck3_boat"
                    ,"maindeck3_rope"
                    ,"maindeck3_gocabin"
                    ,"maindeck3_gohold"
                    ,"maindeck3_ship" 
                    ,"maindeck3_gobeach"
                    ,"cmn_wound2"
                  }
  ,Wait         = redirect_("Wait", "onbed3")
}

maindeck3_itself = item {
   nam          = _"deck"--_"палуба"
  ,dsc          = [[I stand on deck.]] --[[Я стою на палубе.]]
  ,Exam         = [[The rain is so strong. I know that this ship is not moving, yet I stagger at every step, as if it pitches on the sea in a terrible storm.]] --[[Дождь стоит такой сильный, что кажется, будто корабль попал в самый центр ужасного шторма, только палуба почему-то не раскачивается на волнах. Однако я все равно едва переступаю ногами и шатаюсь при каждом шаге, словно борюсь с воображаемой качкой.]]
  ,Lie          = [[I cannot lie down on the deck in this storm.]] --[[Нет, мне по-прежнему не хочется лежать на этой палубе.]]
  ,Sit          = [[I think it would be best to sit on the shore.]] --[[Я думаю, что лучше спуститься с корабля на берег.]]
  ,WalkOn       = [[I can barely take a sure step.]] --[[Я едва переступаю ногами.]]
  ,Clean        = nilfn
  ,withThrow    = true
}

maindeck3_rain = item {
   nam          = _"rain"--_"дождь"
  ,dsc          = [[The heavy drops pelt my face and jacket, and my compromised legs struggle to remain standing as if paralyzed by the terrible affliction within me.]] --[[Меня омывают струи холодного дождя, и мне как будто становится немного легче. Хотя каждое движение по-прежнему дается мне с трудом,  как если бы эта болезнь почти уже парализовала все мое тело.^]]
  ,Exam         =[[The sky looks as though it will never cease its downpour.]]-- [[Я почему-то уверен, что этот дождь никогда не закончится.]]
}

maindeck3_boat = item {
   nam          =_"boat|~Boat"-- _"шлюпка|~лодка"
  ,dsc          =[[Almost nothing is discernable through the curtains of precipitation. The dinghy has been filled to the brim.]]-- [[Из-за дождя на палубе почти ничего не видно. Я замечаю, что небольшая шлюпка, которую я пытался столкнуть на воду, почти до краев                 заполнена водой.]]
  ,Exam         = [[The weight of the water inside the craft is incredible.]]-- [[Теперь я точно не смогу ее сдвинуть.]]
  ,Move         = [[It is impossible to move the boat.]] --[[Даже не стоит и пытаться. К тому же, зачем? Куда я поплыву под таким дождем?]]
  ,Ascend       = [[Why should I climb into the boat. It can go nowhere.]] --[[Вряд ли я смогу сделать что-нибудь с этой шлюпкой сейчас.]]
  ,Climb        = redirect_("Ascend", "maindeck3_boat")
  ,ClimbIn      = redirect_("Ascend", "maindeck3_boat")
  ,Fire         = [[To attempt to light a match in the rain... I must be mad.]] --[[Поджигать шлюпку в дождь? Кажется, болезнь окончательно одолела мой рассудок.]]
  ,FireOff      = nilfn
  ,Clean        = nilfn
}

maindeck3_rope = item {
   nam          = _"rope with a hook"--_"веревка с крюком"
  ,dsc          = [[The rope attached to the bulwark, on which I can climb down to the rocky shore.]] --[[К фальшборту рядом со мной прицеплен крюк с веревкой, по которой можно спуститься вниз.]]
  ,Exam         = [[I secure the rope tightly, to be sure the crossbar will not fail.]] --[[Надеюсь, на сей раз веревка держится крепко, и перекладина не сломается как в тот раз.]]
  ,Take         = [[I remove the hook from the crossbar and reset it, to be sure it will hold.]] --[[Я снимаю крюк с перекладины, а затем прицепляю его обратно. Вроде держится хорошо, и перекладина -- крепкая.]]
  ,TakeOff      = redirect_("Take", "maindeck3_rope")
}

maindeck3_gocabin = item {
   nam          = _"captain's cabin"--_"каюта капитана"
  ,WalkIn       = walk_("cabin3")
  ,GetIn        = walk_("cabin3")
}

maindeck3_gohold = item {
   nam          = _"hold"--_"трюм"
  ,WalkIn       = [[I do not need to go down into the hold. The air is worse than the captain's cabin. It is easier to breathe out here in the open.]]-- [[Мне совсем не хочется спускаться в трюм. Наверняка там дышать еще тяжелее, чем в капитанской каюте. Лучше уж остаться здесь, мне и правда становится немного легче, когда я стою под дождем.]]
  ,WalkTo       = redirect_("WalkIn", "maindeck3_gohold")
  ,DescendTo    = redirect_("WalkIn", "maindeck3_gohold")
  ,ClimbIn      = redirect_("WalkIn", "maindeck3_gohold")
}

maindeck3_ship = item {
   nam          = _"ship to"--_"корабль"
  ,Exam         = [[The Mayflower is weathering a terrible storm, but she does not move.]]--[["Майский цветок" попал в страшный шторм, оставаясь при этом на берегу.]]
  ,Descend      = walk_("nearship3", [[I climb down the side of the ship, my hands slipping on the rope, and rain flooding my eyes. A unseen force must have kept me, and would not let me fall. 
  ^Near the bottom of the rope I kicked off the hull and splashed into the water below.]]--[[Я стал спускаться с корабля. Руки мои скользили по веревке, несколько раз я чуть не сорвался вниз, дождь заливал мне глаза. Но какая-то неведомая сила точно помогала мне, не давала мне упасть.^Спустившись почти на самый низ, я спрыгнул и оказался по пояс в воде.]])
  ,Clean        = nilfn
}

maindeck3_gobeach = item {
   nam          = _"Beach"--_"берег"
  ,DescendOn    = redirect_("Descend", "maindeck3_ship")
}

nearship3 = scene {
   nam          = "The ship"--"У корабля"
  ,obj          = { 
                     "nearship3_ship"
                    ,"nearship3_water"
                    ,"nearship3_shore"
                    ,"cmn_wound2"
                  }
  ,Wait         = redirect_("Wait", "onbed3")
}

nearship3_ship = item {
   nam          = _"ship to"--_"корабль"	
  ,dsc          = [[I stand in the water next to the ship.]]--[[Я стою в воде рядом со своим кораблем.]]
  ,Exam         = [[With high tide it appears as if the land along with the Mayflower is slowly sinking into the ocean. 
  ^I should hurry to shore now.]]--[[Видимо, снова начался прилив. Как если бы весь этот остров вместе с "Майским цветком" медленно уходил на дно океана. У меня нет никакого желания рассматривать корабль, стоя по пояс в воде. Лучше поскорее выбираться на берег.]]
  ,Ascend       = [[I do not have the strength to climb back up the rope.]]--[[Я даже не уверен, что смогу сейчас подняться по этой веревке наверх. В любом случае не для того я спускался.]]
  ,Climb        = redirect_("Ascend", "nearship3_ship")
  ,ClimbIn      = redirect_("Ascend", "nearship3_ship")
  ,Walk         = redirect_("Ascend", "nearship3_ship")
  ,Move         = [[It would be impossible to move the ship.]]--[[Смешно даже думать об этом.]]
}

nearship3_water = item {
   nam          = _"water"--_"вода"
  ,dsc          = [[I need to get out of the water quickly.]]--[[Мне нужно побыстрее выбираться на берег.]]
  ,Exam         = [[The rain splashing against the surface resembles boiling water in a pot.]]--[[Вода вокруг точно вскипает под струями дождя.]]
  ,Drink        = [[I cannot consume seawater.]]--[[Я не собираюсь пить соленую воду.]]
  ,withThrowIn  = true
}

nearship3_shore = item {
   nam          = _"Beach"--_"берег"
  ,Walk         = walk_("shore3")
}

shore3 = scene {
   nam          = "On the sandy shore"--"На песчаном берегу"
  ,obj          = { 
                     "shore3_rain"
                    ,"shore3_itself"
                    ,"shore3_goship"
                    ,"shore3_gorocks"
                    ,"cmn_wound2"
                  }
  ,Wait         = redirect_("Wait", "onbed3")
}

shore3_rain = item {
   nam          = _"rain"--_"дождь"
  ,dsc          = [[There is a solid wall of rain.]]-- [[Я иду через сплошную стену дождя.]]
  ,Exam         = [[The effect of walking in the downpour is that it is amplified moving through it.]]-- [[Дождь точно усиливается с каждым моим шагом.]]
}

shore3_itself = item {
   nam          =_"Beach|Sand"-- _"берег|песок"
  ,dsc          = [[My feet labor in the sandy muck. I fall to my knees and cannot get back up...
  ^I muster all my strength and free my feet from the trap, then continue on.]]-- [[Ноги мои застревают в вязком песке, голова раскалывается от боли. Я падаю на колени и не сразу могу подняться. Наконец я нахожу в себе силы, чтобы встать на ноги и продолжаю путь.]]
  ,Exam         = [[The coast has been transformed into a swamp.]]-- [[Весь этот берег превратился в огромное болото.]]
  ,WalkOn       = [[I can barely walk along the shore now.]]-- [[Я едва могу идти по этой песчаной косе.]]
  ,Lie          = [[No, I have not the time or place to rest.]]-- [[Нет, я не могу останавливаться. Мне нужно идти!]]
  ,Sit          = redirect_("Lie", "shore3_itself")
  ,withThrow    = true
}

shore3_goship = item {
   nam          = _"ship"--_"корабль"
  ,Walk         = [[I am soaked through and burdened with the added weight. I cannot possibly climb aboard the ship now.]]-- [[Я и так промок насквозь... Опять забираться в воду? К тому же вряд ли я сейчас смогу подняться на корабль. И вряд ли захочу.]]
  ,WalkTo       = redirect_("Walk", "shore3_goship")
}

shore3_gorocks = item {
   nam          = _"cliff"--_"утес"
  ,WalkTo       = walk_("nearrocks3")
}

nearrocks3 = scene {
   nam          = "We Rock"--"У скал"
  ,obj          = { "nearrocks3_itself", "cmn_wound2", "nearrock3_gocliff", "nearrock3_goshore" }
  ,Wait         = redirect_("Wait", "onbed3")
}

nearrocks3_itself = item {
   nam          = _"rock|~stones"--_"скалы|~камни"
  ,dsc          = [[I stand near the rocks at the base of the cliff. It is but a short leap to mount and climb, however, my feet strain just to keep me standing, and I cannot manage it.]]-- [[Я стою у скал, до утеса осталось совсем немного -- один небольшой рывок. Однако ноги мои уже подгибаются от усталости, я не представляю, как буду взбираться на камни.]]
  ,Exam         = [[Perhaps I have been here a hundred times before.]]-- [[Кажется, я был здесь по меньшей мере сотню раз.]]
  ,Ascend       = walk_("before_cliff")
  ,Climb        = walk_("before_cliff")
  ,Lie          = [[There is no rest to be had in the midst of the storm.]]-- [[Я чувствую, что у меня осталось совсем немного времени. Мне нельзя задерживаться здесь.]]
  ,Sit          = redirect_("Lie", "nearrocks3_itself")
  ,withThrow    = true
}

nearrock3_goshore = item {
   nam          = _"Beach"--_"берег"
  ,Walk         = walk_("shore3")
  ,WalkTo       = walk_("shore3")
}

nearrock3_gocliff = item {
   nam          = _"cliff"--_"утес"
  ,WalkTo       = redirect_("Ascend", "nearrocks3_itself")
  ,Ascend       = redirect_("Ascend", "nearrocks3_itself")
  ,Climb        = redirect_("Ascend", "nearrocks3_itself")
}

before_cliff = scene {
   nam          = nilfun
  ,enter        = mute_(3000,3000)
  ,dsc          = [[My feet slip on the rocks, and my hands are torn and bleeding, but still I stubbornly continue on to the rise of the cliff. Never before has this feat been so unbearable. 
  ^At the top, as if a reward, the rain is quelled.
  ^I halt, surprised by the sudden turn of Nature. The wind continues, the same that pushed the storm clouds on and away to reveal the Sun.
  ^<i>My eyes close, with peace and light.</ i>]]--[[Ноги мои скользят по камням, я раздираю в кровь руки, но все равно упорно продолжаю ползти вверх. Никогда еще подъем на утес не был таким невыносимо тяжелым.^  Наконец, я поднимаюсь.^ И словно в награду за мои мучения вдруг прекращается дождь.^  Я даже застываю от удивления. Ветер по-прежнему сильный, однако этот же ветер разгоняет с неба грозовые облака, и начинает светить солнце.^ Я чувствую приятное умиротворение и <i>закрываю глаза</i>.]]
  ,verbs        = {
                    { "Close", "~close", "eyes" } --FIXME
                  }
  ,Close        = walk_("cliff4")
}

cliff4 = scene {
   nam          = "At the cliff"--"На утесе"
  ,enter        = music_("clearwaters", 0)
  ,obj          = { 
                     "cliff4_itself"
                    ,"cliff4_waves"
                    ,"cliff4_wind"
                    ,"cliff4_island"
                    ,"cliff4_goshore"
                    ,"cmn_wound2"
                  }
  ,Exit         = [[I cannot leave the cliff yet... I need to stand here for a moment more.
  ^Just a moment...]]--[[Мне совсем не хочется уходить отсюда. Нет, не сейчас. Я почти уверен, что, стоит мне спуститься со скал, как вновь начнется ливень. Я бы просто хотел еще немного постоять здесь. Еще чуть-чуть.]]
  ,Wait         = [[There is a peace here that begs me to stay, and I am willing.]]--[[Да, я не против еще немного побыть здесь.]]
  ,TurnAround   = [[There is no one here, I already know.]]--[[Здесь никого нет. Теперь я точно знаю это.]]
  ,Descend      = redirect_("Exit", "cliff4")
}

cliff4_itself = item {
   nam          = _"Rock|~stones"--_"утес|~камни"
  ,dsc          = [[I stand on the cliff, breathing fresh air from the sea.]]--[[Я стою на утесе, вдыхая полной грудью свежий и холодный воздух.]]
  ,Exam         = [[My strength fades, and my mind humbles itself before Nature at her most beautiful. I consider the cost I have paid nothing in comparison.]]--[[Силы мои на исходе, однако я чувствую странное смиренное спокойствие. Я наконец-то здесь. Это самое красивое место на острове. Это стоило того, чтобы пробираться сюда через ветер и дождь.]]
  ,Lie          = [[Better I stand on my feet while I have strength remaining.]]--[[Лучше я постою на ногах. Пока у меня еще есть силы.]]
  ,Sit          = redirect_("Lie", "cliff4_itself")
  ,Descend      = redirect_("Exit", "cliff4")
  ,WalkOn       = [[There is no path worth following.]]--[[Лучше я просто постою здесь.]]
}

cliff4_waves = item {
   nam          = _"wave"-- _"волны"
  ,dsc          = [[Waves crash onto the rocks.]]--[[Волны внизу с грохотом разбиваются о камни.]]
  ,Exam         = [[Their anger contrasts the beauty above.
^...my head throbs in pain, and I lose awareness of myself for an instant.]]--[[Этот шум разгневанного прибоя как-то странно успокаивает меня. Но голова по-прежнему раскалывается от боли. Я чувствую -- еще немного, и я потеряю сознание.]]
}

cliff4_wind = item {
   nam          = _"~abyss|break"--_"~пропасть|обрыв"
  ,dsc          = [[The gail strengthens such that it nearly removes my feet from their post. I would draw closer to the edge but the wind pushes against me.]]--[[Ветер такой сильный, что почти сбивает меня с ног. В нескольких ярдах от меня -- отвесная пропасть. Мне хочется подойти ближе, но ветер отталкивает меня назад.]]
  ,Exam         = [[The wind will not let me move closer to the edge.]]--[[Я не могу подойти к краю утеса. Ветер не пускает меня.]]
  ,JumpFrom     = redirect_("Exam", "cliff4_wind")
  ,Descend      = [[I cannot climb down from the cliff in my current state.]]--[[Я не смогу спуститься с этого обрыва.]]
  ,WalkTo       = redirect_("Exam", "cliff4_wind")
}

cliff4_island = item {
   nam          = _"island"--_"остров"
  ,dsc          = [[The island flashes into view as the storm subsides.
  ^I retrieve my telescope from my jacket pocket.]]--[[Я вспоминаю об острове. Ливень закончился, и сейчас, наверное, я должен увидеть его через подзорную трубу.]]
  ,Exam         = [[There is nothing to see...]]--[[Так я ничего не вижу.]]
  ,ExamWith     = use_ {
                    ["spyglass3"] = walk_("fin1")
                  }
}

cliff4_goshore = item {
   nam          = _"Beach"--_"берег"
  ,Walk         = redirect_("Exit", "cliff4")
  ,WalkTo       = redirect_("Exit", "cliff4")
}

fin1 = scene {
   nam          = nilfun
  ,enter        = mute_(3000,3000)
  ,dsc          = [[I look at the island through the telescope, shrouded in a cloud of mist. The fog thickens and the island fades, dissolving into the haze, then nothing remains but the horizon. 
  ^A gull swoops over my head and cries out.]]--[[Я долго смотрю на остров через подзорную трубу. Его по-прежнему окутывают облака тумана. Туман становится все гуще и гуще. Вскоре мне начинает казаться, что остров постепенно исчезает, растворяется в этой обволакивающей дымке.  И вот передо мной уже не остается ничего, кроме бесконечного уходящего в горизонт океана.^ Я вздыхаю, но все равно продолжаю смотреть через подзорную трубу. Над головой моей с диким криком проносится чайка.]]
  ,verbs        = {
                    { "Next", "дальше", "{}" } --FIXME
                  }
  ,Next         = walk_("fin2")
}

fin2 = pause {
   nam          = nilfun
  ,fading       = 0
  ,dsc          = "^^^^^^^^^^^^^^"..img("gfx/island.png")
  ,time         = 3000
  ,enter        = music_("mourningsong")
  ,next         = "fin3"
}

fin3 = pause {
   nam          = nilfun
  ,fading       = 90
  ,time         = 4000
  ,next         = "titles1"
}

titles1 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("INSTEAD Platform and Meta-Parser Module by "--[["Платформа INSTEAD и модуль Мета-парсер по "]]))) .. "^" .. txtc(title2:txt("Peter Kosyh"--[["Петр Косых"]])) ..
                  "^^" .. txtc(txtb(title1:txt("Story and Programming by "--[["Сценарий и программирование игры по "]]))) .. "^" .. txtc(title2:txt("Vasily Voronkov"--[["Василий Воронков"]]))
  ,time         = 4000
  ,next         = "titles2"
}

titles2 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("Music by "--[["Музыка по "]]))) .. "^" .. txtc(title2:txt("Kevin MacLeod"))
  ,time         = 4000
  ,next         = "titles3"
}

titles3 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("Game Testing by " --[["Бета-тестирование по "]]))) .. "^" .. txtc(title2:txt("Peter Kosyh"--[["Петр Косых"]])) .. "^" .. txtc(title2:txt("Vadim Balashov"--[["Вадим Балашов"]]))
  ,time         = 4000
  ,next         = "titles4"
}

titles4 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("English Localization by " --[["Английская версия по "]]))) .. "^" .. txtc(title2:txt("Ryan Joseph"))
  ,time         = 4000
  ,next         = "titles5"
}

titles5 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("The title image is the photography of "--[["Титульное изображение сделано на основе фотографии"]]))) .. "^" .. txtc(title2:txt('Nicolas de Camaret, Easter Island')) ..
                  "^" .. txtc(title2:txt('http://www.flickr.com/photos/ndecam/5803817397/'))
  ,time         = 4000
  ,next         = "titles6"
}

titles6 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("The background image was created by "--[["Для фона использовалась текстура"]]))) .. "^" .. txtc(title2:txt('Erica Parée, Paper Texture 1')) ..
                  "^" .. txtc(title2:txt('http://www.flickr.com/photos/pareeerica/2683238976/'))
  ,time         = 4000
  ,next         = "titles7"
}

titles7 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^" .. txtc(txtb(title1:txt("Clear Waters"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/')) ..
                  "^^" .. txtc(txtb(title1:txt("Cryptic Sorrow"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/')) ..
                  "^^" .. txtc(txtb(title1:txt("Heartbreaking"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/')) ..
                  "^^" .. txtc(txtb(title1:txt("Reaching Out"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/')) ..
                  "^^" .. txtc(txtb(title1:txt("Wounded"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/')) ..
                  "^^" .. txtc(txtb(title1:txt("Mourning Song"))) .. "^" .. txtc(title2:txt('Kevin MacLeod')) .. "^" .. txtc(title2:txt('http://incompetech.com/'))
  ,time         = 4000
  ,next         = "titles8"
}

titles8 = pause {
   nam          = nilfun
  ,dsc          = "^^^^^^^^^^^^^^^^^" .. txtc(txtb(title1:txt("Moscow, 2013 - 2015"--[["Москва, 2013"]])))
  ,time         = 5000
  ,next         = stead.restart
}
