dofile "util.lua"

morph:word({ female = true, 
                    singular = true, 
                    "Lisa", 
                    "Лизу", 
                    "Лизе", 
                    "Лизу", 
                    "Лизой", 
                    "Лизе" })
morph:word({        singular = true, 
                    "coastal", 
                    "прибрежную", 
                    "прибрежной", 
                    "прибрежную", 
                    "прибрежной", 
                    "прибрежной" })
morph:word({        singular = true, 
                    "whiskey", 
                    "whiskey", 
                    "whiskey", 
                    "whiskey", 
                    "whiskey", 
                    "whiskey" })
--1. Search
Verb { "Search %2", "~Search the|~Investigate the", verb_with_obj_("with") }

--2. Exit
Verb { "Exit", "~Exit the", "{}" }
parser.events.Exit = function()
  return "Where can I go?"--"И куда же мне уйти?";
end;

--3. Exam
function verb_exam_type(s)
  if s:word(3) == "with" then
    return "ExamWith %2 %4";
  else
    return "Exam %2";
  end
end
Verb { verb_exam_type, "~Examine the|~View the|~Look at the", verb_with_obj_inv_("with", nil, "{hero}with|{}"), "{}|with", aux_with_inv_("with") }
parser.events.ExamWith = function()
  return "I can see it without a telescope."--"Вряд ли мне для этого требуется подзорная труба.";
end

--4. Walk
Verb { "Walk %2", "~Walk to the", verb_with_obj_("with") }
parser.events.Walk = nil;

--5. Wait
Verb { "Wait", "~Wait", "{}" }
parser.events.Wait = function()
  return "What am I waiting for?"--"Я немного подождал -- сам не понимая, чего я жду.";
end

--6. Take
Verb { "Take %2", "~Take the|~Grab the", verb_with_obj_("with") }

--7. Clean
Verb { "Clean %2 %3", "~Clean the|~Wipe the", verb_with_obj_inv_("with"), aux_with_obj_inv_("тв") }
parser.events.Clean = function()
  return "I have no time.";
end

--8. TakeOff
Verb { "TakeOff %2", "~Take off the|~Remove the", verb_with_obj_inv_("with") }

--9. Wear
Verb { "Wear %2", "~Wear the", verb_with_inv_("with") }

--10. Open
Verb { "Open %2 %3", "~Open the", verb_with_obj_("with"), aux_with_inv_("тв", nil, "{}") }

--11. Ascend
function verb_ascend_type(s)
  if s:word(2) == "в" then
    return "GetIn %3";
  else
    return "Ascend %3";
  end
end
Verb { verb_ascend_type, "~Ascend the", "Up the|~Go up the", verb_with_obj_("with") }

--12. Descend
Verb { "Descend %2", "~Descend the|~Climb down the|~Get down from the", verb_with_obj_("with") }

--13. Jump
Verb { "Jump %2", "~Jump onto the", verb_with_obj_("with") }
Verb { "JumpFrom %2", "~Jump from the", verb_with_obj_("with") }

--14. Sit
Verb { "Sit %2", "~Sit on the", verb_with_obj_("with") }

--15. Stand
function verb_stand_type(s)
  if s:word(2) == "из-за" then
    return "StandAtFrom %3";
  elseif s:word(2) == "из" then
    return "StandFrom %3";
  elseif s:word(2) == "на" then
    return "StandOn %3";
  else
    return "Stand %3";
  end
end
function verb_stand(s)
  if s:word(2) == "на" then
    return "with";
  else
    return "рд";
  end
end
Verb { verb_stand_type, "~Up", "due to|from the|with the|in the", verb_with_obj_(verb_stand) }

--16. Fire
Verb { "Fire %2 %3", "~Set fire to the|~Set alight the", verb_with_obj_inv_("with"), aux_with_inv_("тв") }
parser.events.Fire = function(self, s)
  return "I don't need to light a fire" .. s:M("with") .. ".";
end

--17. FireOff
Verb { "FireOff %2", "~Extinguish the|~Put out the", verb_with_obj_inv_("with") }
parser.events.FireOff = function(self, s)
  return "Fortunately, " .. s:M("they") .. " didn't burn."
end

--18. Pour
Verb { "Pour %2 %4", "~Pour the|~Empty the|~Drain the", verb_with_obj_inv_("with"), "на", aux_with_obj_inv_("with") }--FIXME changed to 'pour' without knowing for sure. Was 'pure'.

--19. Pick
Verb { "Pick %2", "~Select the", verb_with_obj_("with") }

--20. Throw
function verb_throw_type(s)
  if s:word(3) == "into" then
    return "ThrowIn %2 %4";
  else
    return "Throw %2 %4";
  end
end
Verb { verb_throw_type, "~Throw the", verb_with_inv_("with"), "{}|into", aux_with_obj_("with") }

--21. Move
Verb { "Move %2", "~Move the", verb_with_obj_("with") }

--22. Bant
Verb { "Bant %2 %3", "~Tie the|~Bandage the|~Wrap the", verb_with_obj_inv_("with"), aux_with_obj_inv_("тв") }

--23. Cure
Verb { "Cure %2 %3", "~Cure the", verb_with_obj_inv_("with"), aux_with_obj_inv_("тв") }

--24. Wash
Verb { "Wash %2 %3", "~Rinse the|~Wash the|~Douse the", verb_with_obj_inv_("with"), aux_with_obj_inv_("тв") }

--25. Heat
Verb { "Heat %2 %3", "~Heat the|~Warm the|~Burn the", verb_with_inv_("with"), aux_with_obj_inv_("тв") }

--26. Untie
Verb { "Untie %2", "~Unbind the|~Untie the", verb_with_obj_("with") }

--27. Cut
Verb { "Cut %2 %3", "~Cut the|~Sever the|~Chop the", verb_with_obj_("with"), aux_with_obj_inv_("тв") }
parser.events.Cut = function(self, s)
  return "I don't want to use the ax on " .. s:M("with") .. ".";
end

--28. Get
Verb { "Get %2 %4", "~Get the", verb_with_obj_("with"), "из", aux_with_obj_("рд") }

--29. Swing
Verb { "Swing %2", "~Swing the", verb_with_obj_("дт") }

--30. Turn
Verb { "TurnAround", "~Turn around", "{}" }
parser.events.TurnAround = function()
  return "I see nothing of interest.";
end

--31. Lie
Verb { "Lie %2", "~Lie down", verb_with_obj_("with") }

--32. KnifeCut
Verb { "KnifeCut %2 %3", "~Cut the|~Slice the|~Slash the", verb_with_obj_("with"), aux_with_obj_inv_("тв") }
parser.events.KnifeCut = function(self, s)
  return "I don't see a reason to use the " .. s:M("it") .. " knife for paper. It could ruin the blade.";
end

--33. Climb
function verb_ascend_type2(s)
  if s:word(2) == "в" then
    return "ClimbIn %3";
  else
    return "Climb %3";
  end
end
Verb { verb_ascend_type2, "~Climb the|~Mount the", "на|в", verb_with_obj_("with") }

--34. Wet
Verb { "Wet %2 %3", "~Dampen the|~Wet the", verb_with_inv_("with"), aux_with_inv_("тв") }

--35. Drink
Verb { "Drink %2", "~Drink the|~Gulp the", verb_with_obj_inv_("with") }