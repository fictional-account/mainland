require "timer"
require "hideinv"
require "quotes"
require "para"
require "dash"
require "fonts"
dofile "parser/metaparser.lua"

input.cursor = img "theme/cursor.gif"

morph.debug = true
morph.yo = false
morph:init(
  "main.lua", 
  "tutorial.lua", 
  "game/common.lua", 
  "game/entry1.lua", 
  "game/entry2.lua", 
  "game/entry3.lua", 
  "game/entry4.lua", 
  "game/entry5.lua", 
  "game/entry6.lua", 
  "game/entry7.lua", 
  "game/entry8.lua")

gametitle = font("theme/corrupt.ttf", 40);
header = font("theme/corrupt.ttf", 22);
title = font("theme/corrupt.ttf", 22);
quest = font("theme/corrupt.ttf", 22);

title1 = font("theme/corrupt.ttf", 22);
title2 = font("theme/corrupt.ttf", 22);
small = font("theme/corrupt.ttf", 22);
small_fn = sprite.font("theme/corrupt.ttf", 22);
regular = font("theme/corrupt.ttf", 22);
credits = font("theme/constan.ttf", 11);

gui = {}
gui.fading = 10;
parser.scroll = true
parser.debug = true
parser.cmd_history = true
parser.empty_warning = quest:txt("I must collect my thoughts...", "gray")
parser.hintinv = true
parser.inv_delim = " " .. small:txt("\n", "black") .. " "
parser.inv_delim_size = sprite.text_size(small_fn, "\n");
parser.inv_rows = 2;
-- parser.filter = true

game.verbs = {};
format.para_space = "";
parser.hintfmt = function(s,w)
  local ret = "";
  for t in string.gmatch(w, "[^%s]+") do
    if ret ~= "" then
      ret = ret .. " " .. regular:txt(t,"#006600");
    else
      ret = regular:txt(t,"#006600");
    end
  end
  return ret;
end
parser.selffmt = function(s,w)
  return regular:txt(w,"blue");
end

game.fading = function(s)
  if here().fading then
    return here().fading;
  elseif player_moved() then
    return gui.fading;
  else
    return false;
  end
end

instead.get_title = function()
  return nil;
end

function name_(tab)
  return function(s,w,t)
    return generic_choose(tab, function(s) 
      return get_verb(parser.verbnr)==s; 
    end);
  end
end

function trim_verb(vb)
  if vb then
    if type(vb) == "function" then
      vb = vb(parser);
    end
    local idx = string.find(vb, "%s");
    if idx ~= nil and idx > 1 then
      vb = string.sub(vb, 1, idx-1);
    end
  end
  return vb;
end

function get_verb(id)
  local verbs = nvl(here().verbs,game.verbs);
  local vob = verbs[id];
  if vob then
    local vb = trim_verb(vob[1]);
    return vb;
  end
end

function inventory()
  local len = 0;
  for i,v in ipairs(inv()) do
    len = len + 1;
  end
  if len < 2 then
    return "I don't have anything with me."--"У меня с собой ничего нет.";
  else
    local function enum(objs,cnd)
      local founds = {};
      for i,v in ipairs(inv()) do
        if i > 1 and (cnd == nil or cnd(v)) and not v.hidden then
          table.insert(founds, v);
        end
      end
      local cc = 0;
      local len = table.len(founds);
      for i,v in ipairs(founds) do
        cc = cc + 1;
        if cc > 1 and i ~= len then
          objs = objs .. ", ";
        elseif cc > 1 and i == len then
          objs = objs .. " and ";
        end
        objs = objs .. rcall(v.nam,v);
      end
      if cc > 0 then
        objs = objs .. ".";
        return objs;
      else
        return "";
      end
    end
    local objs = "I'm wearing "--"На мне ";
    local dress = enum(objs, function(v) return v.dress and not v._off; end);
    objs = dress;
    if objs == "" then
      objs = "I have "--"У меня с собой ";
    else
      objs = objs .. " I have "--" С собой у меня ";
    end
    objs = enum(objs, function(v) return not v.dress or v._off; end);
    if objs == "" then
      return dress;
    else
      return objs;
    end
  end
end

function nvl(x,y)
  if x == nil then
    return y;
  else
    return x;
  end
end

function nilfn()
  return nil;
end

function pause(o)
  local enter = o.enter;
  if o.nam == nil then
    o.nam = nilfn;
  end
  o.enter = function(s)
    if enter ~= nil then
      rcall(enter,s);
    end
    timer:set(o.time);
  end
  o.timer = function(s)
    timer:stop();
    if type(o.next) == "function" then
      o:next();
    else
      walk_(o.next)();
    end
  end
  o.noparser = true;
  return room(o);
end

function scene(o)
  if o.nam == nil then
    o.nam = nilfn;
  else
    o.nam = title:txt(o.nam);
  end
  local dsc = o.dsc;
  o.dsc = function(s)
    local ret = nvl(rcall(s._tmpdsc,s),"");
    if dsc ~= nil and rcall(dsc,s) ~= nil then
      if ret ~= "" then
        return "<i>" .. ret .. "</i>^^" .. rcall(dsc,s);
      else
        return rcall(dsc,s);
      end
    else
      if ret ~= nil and ret ~= "" then
        return "<i>" .. ret .. "</i>";
      else
        return nil;
      end
    end
  end
  o.Exam = function(s)
    if s._tmpdsc ~= nil then
      s._tmpdsc = nil;
    end
    if s.newdsc ~= nil then
      return rcall(s.newdsc,s);
    else
      local dd = nvl(rcall(s.dsc,s),"");
      for i,v in ipairs(s.obj) do
        local d = rcall(v.dsc);
        if d ~= nil then
          dd = dd .. " " .. d;
        end
      end
      return dd;
    end
  end
  o.exit = function(s)
    if s._tmpdsc ~= nil then
      s._tmpdsc = nil;
    end
  end
  return room(o);
end

function diary(o)
  o.keynam = o.nam;
  o.nam = header:txt(o.nam);
  o.verbs = { { "Next", "Keep Writing", "{}" } };
  o.Next = chain_ { cls, o.next };
  local enter = o.enter;
  o.enter = function(s)
    if enter ~= nil then
      rcall(enter,s);
    end
    mainland._episode = txtb(o.keynam);
  end
  return room(o);
end

function item(o)
  local nam = o.nam;
  local dsc = o.dsc;
  if o.nam ~= nil then
    o.nam = function(s)
      if o.cnd == nil or rcall(o.cnd) then
        local retval = rcall(nam,s);
        --if have(s) then
        --  return regular:txt(retval,"darkgreen");
        --else
          return retval;
        --end
      else
        return "";
      end
    end
  else
    o.nam = nilfn;
  end
  o.dsc = function(s)
    if o.cnd == nil or rcall(o.cnd) then
      return rcall(dsc,s);
    else
      return nil;
    end
  end
  return obj(o);
end

function cls()
  parser._lastdisp = '';
  parser._lastcmd = nil;
end

function if_(c)
  return function()
    return apply(c);
  end
end

function not_(c)
  return function()
    return not apply(c);
  end
end

function walk_(scn,dsc)
  return function()
    cls();
    if dsc ~= nil then
      ref(scn)._tmpdsc = dsc;
    end
    walk(scn);
  end
end

function walkfast_(scn)
  return function()
    walk(scn);
  end
end

function take_(obj)
  return function()
    take(obj);
  end
end

function drop_(obj)
  return function()
    remove(obj,me());
  end
end

function remove_(obj,scn)
  return function()
    remove(obj,scn);
  end
end

function put_(obj,scn)
  return function()
    put(obj,scn);
  end
end

function inc_(var)
  return function()
    exec(var.."="..var.."+1");
  end
end

function set_(var)
  return function()
    exec(var.."=true");
  end
end

function unset_(var)
  return function()
    exec(var.."=false");
  end
end

function rnd_(tab)
  return function()
    local r = table.len(tab);
    --math.randomseed(os.time());
    local rn = rnd(r);
    return rcall(tab[rn]);
  end
end

function choose_(tab)
  return function()
    return generic_choose(tab, apply);
  end
end

function use_(tab) 
  return function(s,w)
    return generic_choose(tab, function(s)
      if not w then
        return s == "nil";
      else
        return s == deref(w);
      end
    end);
  end
end

function loc(...)
  local hs = deref(here());
  local arg = {...}
  for i,v in ipairs(arg) do
    if (type(v) == "table" and here() == v) or hs == v then
      return true;
    end
  end
end

function location_(tab)
  return function()
    return generic_choose(tab, function(s) return loc(s) end);
  end
end

function generic_choose(tab, fun)
  local df = nil;
  for i,v in pairs(tab) do
    if i == "default" then
      df = v;
    elseif fun(i) then
      return rcall(v);
    end
  end
  if df ~= nil then
    return rcall(df);
  else
    return nil;
  end
end


function chain_(tab)
  return function(s)
    local ret = nil;
    for i,v in ipairs(tab) do
      if type(v) == "function" then
        ret = v(s);
      else
        ret = v;
      end
    end
    return ret;
  end
end

function apply(c)
  return assert(loadstring("return ("..c..")"))();
end

function redirect_(act,obj)
  return function()
    if type(obj) ~= "table" then
      obj = ref(obj);
    end
    parser:redirect({act,obj});
    return true;
  end
end

function txt_(txt,p)
  return function(s)
    if p == nil then
      p = "вн";
    end
    local nm = s:M(p);
    return txt:gsub("%%", nm);
  end
end

function exec(s)
  assert(loadstring(s))();
end

function rcall(o,s)
  if o == nil then
    return nil;
  elseif type(o) == "function" then
    return rcall(o(s), s);
  else
    return o;
  end
end

function table.len(self)
  local count = 0;
  for i,v in pairs(self) do 
    count = count + 1;
  end
  return count;
end

function sound_(snd)
  return function() 
    play_sound(snd);
  end
end

function music_(mus, loop, fadeout, fadein)
  return function() 
    play_music(mus, loop, fadeout, fadein);
  end
end

function mute_(fadeout,fadein)
  return function()
    play_music(nil, nil, fadeout, fadein);
  end
end

function play_music(file,loop,fadeout,fadein)
  local fl = file;
  local fout,fin = 2000,2000;
  if file ~= nil and file ~= "" then
    fl = "mus/"..file..".ogg";
  end
  if fadeout ~= nil then    
    fout = fadeout;
  end
  if fadein ~= nil then
    fin = fadein;
  end
  set_music_fading(fadeout, fadein);
  if loop == nil then
    loop = 1;
  end
  if fl ~= nil then
    set_music(fl, loop);
  else
    stop_music();
    mute_sound();
    _lastsound = nil;
  end
end

function play_sound(file,loop,ch)
  notnil(file,"file");
  local fl = const.path.sfx..file..".ogg";
  if ch == nil then
    ch = 2;
  end
  set_sound(fl, ch, loop);
  if loop ~= nil then
    _lastsound = {file,loop,ch};
  end
end

function mute_sound()
  stop_sound(2);
  stop_sound(3);
  stop_sound(4);
end

function string:unilen()
  local _, count = string.gsub(self, "[^\128-\193]", "");
  return count;
end

function string:startsWith(start)
  return string.sub(self,1,string.len(start))==start;
end

--Verb related functions
function verb_with(s, pf, cnd, coll, with, withAux)
  local ret = "";
  local vb = get_verb(s.verbnr);
  local ovb = vb;
  local aux = nil;
  local aux2 = nil;
  if with then
    vb = "with" .. vb;
    aux = true;
  elseif withAux then
    vb = "aux" .. vb;
    aux2 = true;
  end
  local map = nil;--articles[ovb];
  local p = pf;
  for i,v in ipairs(coll()) do
    v.aux = aux;
    v.aux2 = aux2;
    if type(pf) == "function" then
      p = pf(s);
    else
      p = pf;
    end
    if map ~= nil then
      local va = nil;
      if v.articles ~= nil then
        va = v.articles[ovb];
      end
      if va ~= nil and map[va] ~= nil then
        p = map[va];
      end
    end
    for k,ov in pairs(v) do
      --print("_with:"..deref(v)..";k="..k..";vb="..vb);
      if k == vb 
        and (not with or ov)
        and (not withAux or ov)
        and (cnd == nil or cnd(v)) 
        and not v.hidden then
        ret = ret .. "{" .. deref(v) .. "}" .. p .. "|";
      end
    end
  end
  return ret;
end

function verb_with_obj_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function verb_with_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, inv);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function verb_with_obj_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs);
    local ret = ret .. verb_with(s, p, cnd, inv);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux_with_obj_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs, true);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux_with_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, inv, true);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux_with_obj_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs, true);
    local ret = ret .. verb_with(s, p, cnd, inv, true);
    if app ~= nil then
      return app .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux2_with_obj_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs, false, true);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux2_with_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, inv, false, true);
    if app ~= nil and rcall(app,s) ~= nil then
      return rcall(app,s) .. "|" .. ret;
    else
      return ret;
    end
  end
end

function aux2_with_obj_inv_(p, cnd, app)
  return function(s)
    local ret = verb_with(s, p, cnd, objs, false, true);
    local ret = ret .. verb_with(s, p, cnd, inv, false, true);
    if app ~= nil then
      return app .. "|" .. ret;
    else
      return ret;
    end
  end
end