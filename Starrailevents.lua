
SMODS.Atlas{key = 'hertagift', px = 66, py = 95, path = 'herta.png'}
SMODS.Atlas{key = 'ruanmei1', px = 66, py = 95, path = 'ruanmei1.png'}
SMODS.Atlas{key = 'ruanmei2', px = 66, py = 95, path = 'ruanmei2.png'}
SMODS.Atlas{key = 'ruanmei3', px = 66, py = 95, path = 'ruanmei3.png'}
SMODS.Atlas{key = 'ahawanou', px = 66, py = 95, path = 'ahawanou.png'}
SMODS.Atlas{key = 'chongchaochenshuilingzhu', px = 66, py = 95, path = 'chongchaochenshuilingzhu.png'}
SMODS.Atlas{key = 'chunmeiqishidebangzhu', px = 66, py = 95, path = 'chunmeiqishidebangzhu.png'}
SMODS.Atlas{key = 'chuwangzhengba', px = 66, py = 95, path = 'chuwangzhengba.png'}
SMODS.Atlas{key = 'diguoyichan', px = 66, py = 95, path = 'diguoyichan.png'}
SMODS.Atlas{key = 'gudutaikong', px = 66, py = 95, path = 'gudutaikong.png'}
SMODS.Atlas{key = 'guilaidesuiyang', px = 66, py = 95, path = 'guilaidesuiyang.png'}
SMODS.Atlas{key = 'hexiebisai', px = 66, py = 95, path = 'hexiebisai.png'}
SMODS.Atlas{key = 'saliao', px = 66, py = 95, path = 'saliao.png'}
SMODS.Atlas{key = 'sanjinzhizhanzheng', px = 66, py = 95, path = 'sanjinzhizhanzheng.png'}
SMODS.Atlas{key = 'sanzhixiaozhu', px = 66, py = 95, path = 'sanzhixiaozhu.png'}
SMODS.Atlas{key = 'tiancaijulebu', px = 66, py = 95, path = 'tiancaijulebu.png'}
SMODS.Atlas{key = 'weixiantouwei', px = 66, py = 95, path = 'weixiantouwei.png'}
SMODS.Atlas{key = 'womenshiniuzai', px = 66, py = 95, path = 'womenshiniuzai.png'}
SMODS.Atlas{key = 'xiangsushijie', px = 66, py = 95, path = 'xiangsushijie.png'}
SMODS.Atlas{key = 'xingjihepingtouzi', px = 66, py = 95, path = 'xingjihepingtouzi.png'}
SMODS.Atlas{key = 'xugeyuanba', px = 66, py = 95, path = 'xugeyuanba.png'}
SMODS.Atlas{key = 'xugoushixuejia', px = 66, py = 95, path = 'xugoushixuejia.png'}
SMODS.Atlas{key = 'yinhehaoren', px = 66, py = 95, path = 'yinhehaoren.png'}
SMODS.Atlas{key = 'youmukuanggong', px = 66, py = 95, path = 'youmukuanggong.png'}
SMODS.Atlas{key = 'zhanbu', px = 66, py = 95, path = 'zhanbu.png'}
SMODS.Atlas{key = 'shijianbao', px = 66, py = 95, path = 'shijianbao.png'}
SMODS.Atlas{key = 'balatro', px = 333, py = 216, raw_key= true, path = 'balatro.png'}
SMODS.Atlas{key = 'shop_sign', px = 113, py = 57, atlas_table = 'ANIMATION_ATLAS', frames = 4, raw_key= true, path = 'ShopSignAnimation.png'}
SMODS.Atlas{key = 'huanyuhuangzai', px = 71, py = 95, path = 'huanyuhuangzai.png'}
SMODS.Atlas{key = 'huangjinyujixie', px = 71, py = 95, path = 'huangjinyujixie.png'}
SMODS.Atlas{key = 'huanyupaizu', px = 71, py = 95, path = 'huanyupaizu.png'}
SMODS.Atlas{key = 'xingqiri', atlas_table = 'ANIMATION_ATLAS', px = 34, py = 34, path = 'sunday.png', frames = 1}
SMODS.Atlas{key = 'jingzhongguwo', px = 66, py = 66, path = 'jingzhongguwo.png'}
SMODS.Sound({key = "soevent", path = "event.ogg"})
SMODS.Sound({
    vol = 0.6,
    pitch = 1,
    key = "music_sunday",
    path = "blindmusic.ogg",
    select_music_track = function()
        return (G.GAME and G.GAME.blind and (G.GAME.blind.config.blind.boss and G.GAME.blind.config.blind.boss.showdown and G.GAME.blind.name == 'xingqiri')) and 2 or false
    end,
})

local idstarrailloc = init_localization
function init_localization()
    idstarrailloc()
    --G.localization.misc.dictionary.ph_improve_run = "来测..."
    G.localization.misc.ranks.none1 = ""
    G.localization.misc.suits_singular.none2 = ""
end

local generate_UIBox_ability_table_ref = Card.generate_UIBox_ability_table
function Card:generate_UIBox_ability_table()
    local generate_UIBox_ability_table_val = generate_UIBox_ability_table_ref(self)

    if self.ability and self.ability.name == 'Zhanbu' and G.STATE == G.STATES.SELECTING_HAND and not self.debuff then
        local main_text = generate_UIBox_ability_table_val.main
local cards1 = localize((G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].base.suit or 'none2'), "suits_singular")
local cardr1 = localize((G.deck and G.deck.cards[1] and G.deck.cards[#G.deck.cards].base.value or 'none1'), 'ranks')
local cards2 = localize((G.deck and G.deck.cards[2] and G.deck.cards[#G.deck.cards-1].base.suit or 'none2'), "suits_singular")
local cardr2 = localize((G.deck and G.deck.cards[2] and G.deck.cards[#G.deck.cards-1].base.value or 'none1'), 'ranks')
local cards3 = localize((G.deck and G.deck.cards[3] and G.deck.cards[#G.deck.cards-2].base.suit or 'none2'), "suits_singular")
local cardr3 = localize((G.deck and G.deck.cards[3] and G.deck.cards[#G.deck.cards-2].base.value or 'none1'), 'ranks')
        main_text[#main_text + 1] = (self.area and self.area == G.consumeables) and {
            {
                n = G.UIT.T,
                config = {
                    text = cards1..cardr1..'  '..cards2..cardr2..'  '..cards3..cardr3,
                    colour = G.C.DARK_EDITION,
                    scale = 0.32
                }
            }
        } or nil
    end
    return generate_UIBox_ability_table_val
end

function copy_card_ref(other, new_card, card_scale, playing_card, strip_edition)
    local new_card = new_card or Card(other.T.x, other.T.y, G.CARD_W*(card_scale or 1), G.CARD_H*(card_scale or 1), G.P_CARDS.empty, G.P_CENTERS.c_base, {playing_card = playing_card})
    new_card:set_ability(other.config.center)
    new_card.ability.type = other.ability.type
    for k, v in pairs(other.ability) do
        if type(v) == 'table' then 
            new_card.ability[k] = copy_table(v)
        else
            new_card.ability[k] = v
        end
    end

    if not strip_edition then 
        new_card:set_edition(other.edition or {}, nil, true)
    end
    check_for_unlock({type = 'have_edition'})
    new_card:set_seal(other.seal, true)
    if other.params then
        new_card.params = other.params
        new_card.params.playing_card = playing_card
    end
    new_card.debuff = other.debuff
    new_card.pinned = other.pinned
    return new_card
end

function decimalToTernary(decimal)
    if (SMODS.Mods["Talisman"] or {}).can_load then
    decimal = math.floor(to_number(decimal))
    else
    decimal = math.floor(decimal)
    end
    local ternary = ""

    if decimal == 0 then
        return "0"
    end

    while decimal > 0 do
        local remainder = decimal % 3
        ternary = tostring(remainder) .. ternary
        decimal = math.floor(decimal / 3)
    end

    return ternary
end

local blind_set_blind_ref = Blind.set_blind
function Blind.set_blind(self, blind, reset, silent)

    blind_set_blind_ref(self, blind, reset, silent)

    if G.deck.config.sanjinzhizhanzheng and (not reset) and (not silent) then
        G.deck.config.sanjinzhizhanzheng = false
    end
end

local trigger_effectref=Back.trigger_effect
function Back.trigger_effect(self,args) 
    if G.deck.config.sanjinzhizhanzheng and (self.name == 'Plasma Deck' or G.GAME.selected_sleeve == "sleeve_casl_plasma") and args.context == 'final_scoring_step' then
        local tot = args.chips + args.mult
        args.chips = math.floor(decimalToTernary(tot/2))
        args.mult = math.floor(decimalToTernary(tot/2))
        update_hand_text({delay = 0}, {mult = args.mult, chips = args.chips})
        G.E_MANAGER:add_event(Event({func = (function()
            play_sound('gong', 0.94, 0.3)
            play_sound('gong', 0.94*1.5, 0.2)
            play_sound('idst_soevent', 1.5)
            ease_colour(G.C.UI_CHIPS, {0.8, 0.45, 0.85, 1})
            ease_colour(G.C.UI_MULT, {0.8, 0.45, 0.85, 1})
            attention_text({scale = 1.4, text = localize("k_idst_attention1"), hold = 2, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end)}))
        return args.chips, args.mult
    elseif G.deck.config.sanjinzhizhanzheng and args.context == 'final_scoring_step' then
        local tot = args.chips + args.mult
        args.chips = math.floor(decimalToTernary(args.chips))
        args.mult = math.floor(decimalToTernary(args.mult))
        update_hand_text({delay = 0}, {mult = args.mult, chips = args.chips})
        G.E_MANAGER:add_event(Event({func = (function()
            play_sound('gong', 0.94, 0.3)
            play_sound('gong', 0.94*1.5, 0.2)
            play_sound('idst_soevent', 1.5)
            ease_colour(G.C.UI_CHIPS, {0.8, 0.45, 0.85, 1})
            ease_colour(G.C.UI_MULT, {0.8, 0.45, 0.85, 1})
            attention_text({scale = 1.4, text = localize("k_idst_attention2"), hold = 2, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end)}))
        return args.chips, args.mult
    end
    G.E_MANAGER:add_event(Event({trigger = 'after',blockable = false,blocking = false,delay =  4.3,func = (function() 
        ease_colour(G.C.UI_CHIPS, G.C.BLUE, 2)
        ease_colour(G.C.UI_MULT, G.C.RED, 2)
    return true end)}))
    G.E_MANAGER:add_event(Event({trigger = 'after',blockable = false,blocking = false,no_delete = true,delay =  6.3,func = (function() 
        G.C.UI_CHIPS[1], G.C.UI_CHIPS[2], G.C.UI_CHIPS[3], G.C.UI_CHIPS[4] = G.C.BLUE[1], G.C.BLUE[2], G.C.BLUE[3], G.C.BLUE[4]
        G.C.UI_MULT[1], G.C.UI_MULT[2], G.C.UI_MULT[3], G.C.UI_MULT[4] = G.C.RED[1], G.C.RED[2], G.C.RED[3], G.C.RED[4]
    return true end)}))
    --delay(0.6)
    return trigger_effectref(self,args)
end

local alias__G_UIDEF_use_and_sell_buttons = G.UIDEF.use_and_sell_buttons;
function G.UIDEF.use_and_sell_buttons(card)
    local ret = alias__G_UIDEF_use_and_sell_buttons(card)
    
    if card.config.center.key and (card.area == G.pack_cards and G.pack_cards) and card.ability.set == "Event" then
        return {
            n=G.UIT.ROOT, config = {padding = 0, colour = G.C.CLEAR}, nodes={
                {n=G.UIT.R, config={mid = true}, nodes={
                }},
                {n=G.UIT.R, config={ref_table = card, r = 0.08, padding = 0.1, align = "bm", minw = 0.5*card.T.w - 0.15, minh = 0.8*card.T.h, maxw = 0.7*card.T.w - 0.15, hover = true, shadow = true, colour = G.C.UI.BACKGROUND_INACTIVE, one_press = true, button = 'select_event', func = 'can_select_event'}, nodes={
                {n=G.UIT.T, config={text = localize('b_select'),colour = G.C.UI.TEXT_LIGHT, scale = 0.55, shadow = true}}
            }},
        }}
    end
    
    return ret
end

G.FUNCS.can_select_event = function(e)
    if e.config.ref_table.ability.set ~= 'Event' or (e.config.ref_table.edition and e.config.ref_table.edition.negative) or #G.consumeables.cards < G.consumeables.config.card_limit then 
        e.config.colour = G.C.GREEN
        e.config.button = 'select_event'
    else
      e.config.colour = G.C.UI.BACKGROUND_INACTIVE
      e.config.button = nil
    end
end

G.FUNCS.select_event = function(e)
    local c1 = e.config.ref_table
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
          c1.area:remove_card(c1)
          c1:add_to_deck()
          if c1.children.price then c1.children.price:remove() end
          c1.children.price = nil
          if c1.children.buy_button then c1.children.buy_button:remove() end
          c1.children.buy_button = nil
          remove_nils(c1.children)
          G.consumeables:emplace(c1)
          G.GAME.pack_choices = G.GAME.pack_choices - 1
          if G.GAME.pack_choices <= 0 then
            G.FUNCS.end_consumeable(nil, delay_fac)
          end
          return true
        end
    }))
end

function level_up_herta_hand(card, hand, instant, amount1, amount2)
    amount1 = amount1 or 3
    amount2 = amount2 or 30
    G.GAME.hands[hand].l_mult = math.max(G.GAME.hands[hand].l_mult + amount1, 1)
    G.GAME.hands[hand].l_chips = math.max(G.GAME.hands[hand].l_chips + amount2, 0)
    if not instant then 
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            play_sound('tarot1')
            if card and card.juice_up then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = true
            return true end }))
        update_hand_text({delay = 0}, {mult = G.GAME.hands[hand].l_mult, StatusText = true})
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
            play_sound('tarot1')
            if card and card.juice_up then card:juice_up(0.8, 0.5) end
            return true end }))
        update_hand_text({delay = 0}, {chips = G.GAME.hands[hand].l_chips, StatusText = true})
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
            play_sound('tarot1')
            if card and card.juice_up then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = nil
            return true end }))
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {level=G.GAME.hands[hand].level})
        delay(1.3)
    end
    G.E_MANAGER:add_event(Event({
        trigger = 'immediate',
        func = (function() check_for_unlock{type = 'upgrade_hand', hand = hand, level = G.GAME.hands[hand].level} return true end)
    }))
end

SMODS.Booster{
    key = "event_pack",
    atlas = 'shijianbao',
    pos = {x = 0, y = 0},
    weight = 1,
    cost = 8,
    config = {extra = 3, choose = 1},
    discovered = true,
    loc_txt ={},
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.choose, card.ability.extra} }
    end,
    create_card = function(self, card)
        return {set = "Event", area = G.pack_cards, skip_materialize = true, soulable = false, key_append = "eve"}
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, G.C.FILTER)
        ease_background_colour{new_colour = G.C.CHIPS, special_colour = G.C.DARK_EDITION, contrast = 5}
    end,
    create_UIBox = function(self)
        local _size = SMODS.OPENED_BOOSTER.ability.extra
        G.pack_cards = CardArea(
            G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
            math.max(1,math.min(_size,5))*G.CARD_W*1.1,
            1.05*G.CARD_H, 
            {card_limit = _size, type = 'consumeable', highlight_limit = 1})

        local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
            {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
                {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                    {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                        {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
            {n=G.UIT.R, config={align = "cm"}, nodes={}},
            {n=G.UIT.R, config={align = "tm"}, nodes={
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
                    UIBox_dyn_container({
                        {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_idsteventpack')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {localize('k_choose')..' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
                                {n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
                    }),}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
                    {n=G.UIT.R,config={minh =0.2}, nodes={}},
                    {n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
                        {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
        return t
    end,
}

SMODS.ConsumableType{
    key = "Event",
    primary_colour = HEX("9932CC"),
    secondary_colour = HEX("9932CC"),
    collection_rows = {4,4},
    loc_txt = {},
    default = "c_idst_ahawanou",
    shop_rate = 0,
}

SMODS.Consumable{
    key = 'hertagift',
    name = 'Hertagift',
    set = 'Spectral',
    cost = 20,
    unlocked = true,
    discovered = true,
    hidden = true,
    soul_set = 'Spectral',
    soul_rate = 0.003,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "hertagift",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        --attention_text({scale = 1.4, text = '升个配置', colour = G.C.DARK_EDITION, hold = 2, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize('k_all_hands'),chips = '...', mult = '...', level=''})
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.8, 0.5)
            G.TAROT_INTERRUPT_PULSE = true
            return true end }))
        update_hand_text({delay = 0}, {mult = '+3', StatusText = true})
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.8, 0.5)
            return true end }))
        update_hand_text({delay = 0}, {chips = '+30', StatusText = true})
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.8, 0.5)
            G.TAROT_INTERRUPT_PULSE = nil
            return true end }))
        delay(1.3)
        for k, v in pairs(G.GAME.hands) do
            level_up_herta_hand(card, k, true, 3, 30)
        end
        update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
        delay(1.3)
        if string.find(string.lower(G.PROFILES[G.SETTINGS.profile].name), "herta") then
        attention_text({scale = 1.4, text = localize("k_idst_attention3"), colour = G.C.DARK_EDITION, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        for i=1, 3 do
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
            local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_black_hole', 'herta')
            _card:set_edition({negative = true}, true)
            _card:add_to_deck()
            G.consumeables:emplace(_card)
        return true end }))
        end
        end
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'ruanmei1',
    name = 'Ruanmei1',
    set = 'Event',
    cost = 25,
    unlocked = true,
    discovered = true,
    hidden = true,
    soul_set = 'Tarot',
    soul_rate = 0.001,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "ruanmei1",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        ease_dollars(2000)
        --G.GAME.modifiers.achruanmei = true
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'ruanmei2',
    set = 'Event',
    cost = 25,
    unlocked = true,
    discovered = true,
    hidden = true,
    soul_set = 'Planet',
    soul_rate = 0.001,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "ruanmei2",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --[[info_queue[#info_queue + 1] = {
            set = "Joker",
            key = "j_caino",
            specific_vars = {1, 1},
        }
        info_queue[#info_queue + 1] = {
            set = "Joker",
            key = "j_triboulet",
            specific_vars = {2},
        }
        info_queue[#info_queue + 1] = {
            set = "Joker",
            key = "j_yorick",
            specific_vars = {1, 23, 23, 1},
        }
        info_queue[#info_queue + 1] = {
            set = "Joker",
            key = "j_chicot",
            specific_vars = {},
        }
        --[[info_queue[#info_queue + 1] = {
            set = "Joker",
            key = "j_perkeo",
            specific_vars = {1},
        }]]
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        local cards = {
            "j_caino",
            "j_triboulet",
            "j_yorick",
            "j_chicot",
            "j_perkeo"
        }
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            if card then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = true
            local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, cards[1], nil)
            _card:set_edition({negative = true}, true)
            _card:add_to_deck()
            G.jokers:emplace(_card)
            delay(0.9)
        return true end }))
        for i = 2, 4 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, cards[i], nil)
                _card:set_edition({negative = true}, true)
                _card:add_to_deck()
                G.jokers:emplace(_card)
                delay(0.9)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            if card then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = nil
            local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, cards[5], nil)
            _card:set_edition({negative = true}, true)
            _card:add_to_deck()
            G.jokers:emplace(_card)
        return true end }))
        --G.GAME.modifiers.achruanmei = true
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'ruanmei3',
    set = 'Event',
    cost = 25,
    unlocked = true,
    discovered = true,
    hidden = true,
    soul_set = 'Spectral',
    soul_rate = 0.001,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "ruanmei3",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition.negative) then
        info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        end
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            play_sound('idst_soevent')
            if card then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = true
            local _card = create_card('Tarot_Planet', G.consumeables, nil, nil, nil, nil, nil, 'ruanmei3')
            _card:set_edition({negative = true})
            _card:add_to_deck()
            G.consumeables:emplace(_card)
            delay(0.2)
        return true end }))
        for i = 1, 18 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card('Tarot_Planet', G.consumeables, nil, nil, nil, nil, nil, 'ruanmei3')
                _card:set_edition({negative = true})
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                delay(0.2)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            play_sound('idst_soevent')
            if card then card:juice_up(0.8, 0.5) end
            G.TAROT_INTERRUPT_PULSE = nil
            local _card = create_card('Tarot_Planet', G.consumeables, nil, nil, nil, nil, nil, 'ruanmei3')
            _card:set_edition({negative = true})
            _card:add_to_deck()
            G.consumeables:emplace(_card)
        return true end }))
        --G.GAME.modifiers.achruanmei = true
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'ahawanou',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "ahawanou",
    config = { extra = {max_highlighted = 3} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {self.config.extra.max_highlighted} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                G.hand.highlighted[i]:flip()
                play_sound('card1', percent)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        delay(0.2)
        local leftmost = G.hand.highlighted[1]
        for i = 1, #G.hand.highlighted do
            if G.hand.highlighted[i].T.x < leftmost.T.x then
                leftmost = G.hand.highlighted[i]
            end
        end
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
                if G.hand.highlighted[i] ~= leftmost then
                    copy_card_ref(leftmost, G.hand.highlighted[i])
                end
            return true end }))
        end
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                G.hand.highlighted[i]:flip()
                play_sound('tarot2', percent, 0.6)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
            G.hand:unhighlight_all()
        return true end }))
        delay(0.5)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if self.config.extra.max_highlighted >= #G.hand.highlighted and #G.hand.highlighted >= (self.config.extra.min_highlighted or 2) then
            return true
        end
    end
}

SMODS.Consumable{
    key = 'chongchaochenshuilingzhu',
    set = 'Event',
    cost = 10,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "chongchaochenshuilingzhu",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        ease_ante(-1)
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante - 1
        delay(0.9)
        if G.SETTINGS.SOUND.volume > 30 then
            if pseudorandom('chongchaochenshuilingzhu') < 2/9 then
                if G.GAME.round_resets.ante > 8 then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                        attention_text({scale = 1.4, text = localize("k_idst_attention4"), colour = G.C.MULT, hold = 8, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                    return true end }))
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                        play_sound('idst_soevent')
                        if card then card:juice_up(0.8, 0.5) end
                        G.TAROT_INTERRUPT_PULSE = true
                    return true end }))
                    ease_ante(1)
                    for i = 1, 6 do
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                        return true end }))
                        ease_ante(1)
                    end
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
                        play_sound('idst_soevent')
                        if card then card:juice_up(0.8, 0.5) end
                        G.TAROT_INTERRUPT_PULSE = nil
                    return true end }))
                    ease_ante(1)
                    G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
                    G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + 8
                    delay(0.9)
                elseif G.GAME.round_resets.ante <= 8 then
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                        attention_text({scale = 1.4, text = localize("k_idst_attention4"), colour = G.C.MULT, hold = (8 - G.GAME.round_resets.ante), align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                    return true end }))
                    local chong = (9 - G.GAME.round_resets.ante)
                    if (8 - G.GAME.round_resets.ante) >= 2 then
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                            G.TAROT_INTERRUPT_PULSE = true
                        return true end }))
                        ease_ante(1)
                        for i = 1, (7 - G.GAME.round_resets.ante) do
                            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
                                play_sound('idst_soevent')
                                if card then card:juice_up(0.8, 0.5) end
                            return true end }))
                            ease_ante(1)
                        end
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                            G.TAROT_INTERRUPT_PULSE = nil
                        return true end }))
                        ease_ante(1)
                        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
                        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + chong
                        delay(0.9)
                    elseif (8 - G.GAME.round_resets.ante) == 1 then
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                            G.TAROT_INTERRUPT_PULSE = true
                        return true end }))
                        ease_ante(1)
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                            G.TAROT_INTERRUPT_PULSE = nil
                        return true end }))
                        ease_ante(1)
                        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante or G.GAME.round_resets.ante
                        G.GAME.round_resets.blind_ante = G.GAME.round_resets.blind_ante + chong
                        delay(0.9)
                    elseif (8 - G.GAME.round_resets.ante) == 0 then
                        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                            play_sound('idst_soevent')
                            if card then card:juice_up(0.8, 0.5) end
                        return true end }))
                        ease_ante(1)
                        delay(0.9)
                    end
                end
            end
        end
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'chunmeiqishidebangzhu',
    set = 'Event',
    cost = 8,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "chunmeiqishidebangzhu",
    config = { extra = {max_highlighted = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_steel
        if not card.edition or (card.edition and not card.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
        end
        info_queue[#info_queue+1] = {key = 'red_seal', set = 'Other'}
        return { vars = {self.config.extra.max_highlighted} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15, func = function()
                G.hand.highlighted[i]:flip()
                play_sound('card1', percent)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1, func = function()
                G.hand.highlighted[i]:set_ability(G.P_CENTERS.m_steel, nil, nil)
                G.hand.highlighted[i]:set_base(G.P_CARDS['H_'..'K'])
                G.hand.highlighted[i]:set_edition({polychrome = true}, true)
                G.hand.highlighted[i]:set_seal('Red', nil, true)
            return true end }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15, func = function()
                G.hand.highlighted[i]:flip()
                play_sound('tarot2', percent, 0.6)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            G.hand:unhighlight_all()
            attention_text({scale = 1.4, text = localize("k_idst_attention5"), colour = G.C.RED, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        delay(3.0)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if self.config.extra.max_highlighted >= #G.hand.highlighted and #G.hand.highlighted >= (self.config.extra.min_highlighted or 1) then
            return true
        end
    end
}

SMODS.Consumable{
    key = 'chuwangzhengba',
    name = 'Chuwangzhengba',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "chuwangzhengba",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition.negative) then
            info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        end
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        local double = false
        local food_jokers = {
            'Gros Michel',
            'Ice Cream',
            'Cavendish',
            'Turtle Bean',
            'Diet Cola',
            'Popcorn',
            'Ramen',
            'Seltzer'
        }
        if (not card.edition and G.consumeables.config.card_limit > #G.consumeables.cards) or ((card.edition and card.edition.negative) and G.consumeables.config.card_limit > #G.consumeables.cards + 1) then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                local _card = create_card('Event', G.consumeables, nil, nil, nil, nil, nil, 'chu')
                _card:add_to_deck()
                G.consumeables:emplace(_card)
            return true end }))
        end
        delay(0.9)
        for i = 1, #food_jokers do
            if next(find_joker(food_jokers[i])) then
                double = true
                break
            end
        end
        if double then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                local _card = create_card('Event', G.consumeables, nil, nil, nil, nil, nil, 'chu')
                _card:set_edition({negative = true}, true)
                _card:add_to_deck()
                G.consumeables:emplace(_card)
            return true end }))
        end
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        local exist = false
        local double = false
        local food_jokers = {
            'Gros Michel',
            'Ice Cream',
            'Cavendish',
            'Turtle Bean',
            'Diet Cola',
            'Popcorn',
            'Ramen',
            'Seltzer'
        }
        for i = 1, #G.consumeables.cards do
            if G.consumeables.cards[i] == card then
                exist = true
                break
            end
        end
        for i = 1, #food_jokers do
            if next(find_joker(food_jokers[i])) then
                double = true
                break
            end
        end
        if exist and (card.edition and card.edition.negative) and G.consumeables.config.card_limit > #G.consumeables.cards then
            return true
        elseif exist and not card.edition then
            return true
        elseif not exist and G.consumeables.config.card_limit > #G.consumeables.cards then
            return true
        end      
        if double then
            return true
        end
    end
}

SMODS.Consumable{
    key = 'diguoyichan',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "diguoyichan",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition.negative) then
            info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        end
        info_queue[#info_queue+1] = {key = 'perishable', set = 'Other', vars = {G.GAME.perishable_rounds or 1, 0}}
        info_queue[#info_queue + 1] = G.P_CENTERS.e_negative
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        local index_type = math.random(1, 3)
        if index_type == 1 then
            consumeable_type = 'Tarot_Planet'
        elseif index_type == 2 then
            consumeable_type = 'Spectral'
        elseif index_type == 3 then
            consumeable_type = 'Event'
        end
        for i = 1, 2 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'diguoyichan')
                if pseudorandom('diguoyichan') < 2/3 then
                    _card.ability.perishable = true
                    _card.ability.perish_tally = 0
                    _card:set_debuff(true)
                end
                _card:set_edition({negative = true})
                _card:add_to_deck()
                G.jokers:emplace(_card)
                delay(0.9)
            return true end }))
        end
        delay(0.9)
        for i = 1, 2 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card(consumeable_type, G.consumeables, nil, nil, nil, nil, nil, 'diguoyichan')
                if pseudorandom('diguoyichan') < 2/3 then
                    _card.ability.perishable = true
                    _card.ability.perish_tally = 0
                    _card:set_debuff(true)
                end
                _card:set_edition({negative = true})
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                delay(0.9)
            return true end }))
        end
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'gudutaikong',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "gudutaikong",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            attention_text({scale = 1.4, text = localize("k_idst_attention6"), colour = G.C.MULT, hold = 5, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        if G.GAME.last_hand_played then
            local gudulevel = G.GAME.hands[G.GAME.last_hand_played].played - G.GAME.hands[G.GAME.last_hand_played].level
            G.GAME.hands[G.GAME.last_hand_played].played = G.GAME.hands[G.GAME.last_hand_played].level
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.03, delay = 0.3}, {handname=localize(G.GAME.last_hand_played, 'poker_hands'),chips = G.GAME.hands[G.GAME.last_hand_played].chips, mult = G.GAME.hands[G.GAME.last_hand_played].mult, level=G.GAME.hands[G.GAME.last_hand_played].level})
            level_up_hand(card, G.GAME.last_hand_played, nil, gudulevel)
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
        else
            local gudulevel = G.GAME.hands["High Card"].played - G.GAME.hands["High Card"].level
            G.GAME.hands["High Card"].played = G.GAME.hands["High Card"].level
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.03, delay = 0.3}, {handname=localize("High Card", 'poker_hands'),chips = G.GAME.hands["High Card"].chips, mult = G.GAME.hands["High Card"].mult, level=G.GAME.hands["High Card"].level})
            level_up_hand(card, "High Card", nil, gudulevel)
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
        end
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'guilaidesuiyang',
    name = 'Guilaidesuiyang',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "guilaidesuiyang",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {2.5*(2^(G.GAME.used_event_times2 or 0))} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
            attention_text({scale = 1.4, text = localize("k_idst_attention7"), colour = G.C.MULT, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        G.GAME.used_event_times2 = (G.GAME.used_event_times2 or 0) + 1
        delay(3.0)
    end,
    calculate = function(self, card, context)
        if context.joker_main then
        return {
            message = localize{type = 'variable', key = 'a_xmult', vars = {2.5*(2^(G.GAME.used_event_times2 or 0))}},
            Xmult_mod = 2.5*(2^(G.GAME.used_event_times2 or 0))
        }
        end
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'hexiebisai',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "hexiebisai",
    config = { extra = {max_highlighted = 2} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {self.config.extra.max_highlighted} }
    end,
    use = function(self, card, area, copier)
        local unhighlight_cards = {}
        for k, v in ipairs(G.hand.cards) do
            if not v.highlighted then
                unhighlight_cards[#unhighlight_cards + 1] = v
            end
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        for i = 1, #unhighlight_cards do
            local percent = 1.15 - (i - 0.999)/(#unhighlight_cards - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                unhighlight_cards[i]:flip()
                play_sound('card1', percent)
                unhighlight_cards[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        delay(0.2)
        for i = 1, #unhighlight_cards do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
                copy_card(G.deck.cards[1], unhighlight_cards[i])
            return true end }))
        end
        for i = 1, #unhighlight_cards do
            local percent = 0.85 + (i - 0.999)/(#unhighlight_cards - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                unhighlight_cards[i]:flip()
                play_sound('tarot2', percent, 0.6)
                unhighlight_cards[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
            G.hand:unhighlight_all()
        return true end }))
        delay(0.5)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.deck and G.deck.cards[1] and self.config.extra.max_highlighted >= #G.hand.highlighted and #G.hand.highlighted >= (self.config.extra.min_highlighted or 1) then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'saliao',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "saliao",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition.negative) then
            info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        end
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        if (math.abs(G.GAME.round_resets.ante)+1)%2 == 0 then
            attention_text({scale = 1.4, text = localize("k_idst_attention8"), colour = G.C.CHIPS, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'saliao1')
                _card:set_edition({negative = true})
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                delay(0.2)
            return true end }))
        else
            attention_text({scale = 1.4, text = localize("k_idst_attention9"), colour = G.C.RED, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                local _card = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil, 'saliao2')
                _card:set_edition({negative = true})
                _card:add_to_deck()
                G.consumeables:emplace(_card)
                delay(0.2)
            return true end }))
        end
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'sanjinzhizhanzheng',
    set = 'Event',
    cost = 8,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "sanjinzhizhanzheng",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
            attention_text({scale = 1.4, text = localize("k_idst_attention10"), colour = G.C.CHIPS, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        G.deck.config.sanjinzhizhanzheng = true
        delay(3.0)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'sanzhixiaozhu',
    set = 'Event',
    cost = 10,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "sanzhixiaozhu",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))        
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            if tonumber(os.date("%H")) >= 4 and tonumber(os.date("%H")) <= 12 then
                attention_text({scale = 1.4, text = localize("k_idst_attention11"), colour = G.C.DARK_EDITION, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif tonumber(os.date("%H")) > 12 and tonumber(os.date("%H")) <= 20 then
                attention_text({scale = 1.4, text = localize("k_idst_attention12"), colour = G.C.DARK_EDITION, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            else
                attention_text({scale = 1.4, text = localize("k_idst_attention13"), colour = G.C.DARK_EDITION, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            end
        return true end }))
        G.GAME.current_round.free_rerolls = G.GAME.current_round.free_rerolls + (25-tonumber(os.date("%H")))
        calculate_reroll_cost(true)
        delay(2.2)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SHOP and G.shop then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'tiancaijulebu',
    name = 'Tiancaijulebu',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "tiancaijulebu",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        if G.consumeables.cards[1] and G.consumeables.cards[1].ability.name ~= 'Chuwangzhengba' then
            G.consumeables.cards[1]:use_consumeable(area, copier)
        elseif G.consumeables.cards[1] and G.consumeables.cards[1].ability.name == 'Chuwangzhengba' then
            local double = false
            local food_jokers = {
                'Gros Michel',
                'Ice Cream',
                'Cavendish',
                'Turtle Bean',
                'Diet Cola',
                'Popcorn',
                'Ramen',
                'Seltzer'
            }
            if (not card.edition and G.consumeables.config.card_limit > #G.consumeables.cards) or ((card.edition and card.edition.negative) and G.consumeables.config.card_limit > #G.consumeables.cards + 1) then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    local _card = create_card('Event', G.consumeables, nil, nil, nil, nil, nil, 'chu')
                    _card:add_to_deck()
                    G.consumeables:emplace(_card)
                return true end }))
            end
            delay(0.9)
            for i = 1, #food_jokers do
                if next(find_joker(food_jokers[i])) then
                    double = true
                    break
                end
            end
            if double then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    local _card = create_card('Event', G.consumeables, nil, nil, nil, nil, nil, 'chu')
                    _card:set_edition({negative = true}, true)
                    _card:add_to_deck()
                    G.consumeables:emplace(_card)
                return true end }))
            end
            delay(0.9)
        end
        delay(0.5)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.consumeables.cards[1] and G.consumeables.cards[1].ability.name ~= 'Tiancaijulebu' and G.consumeables.cards[1].ability.name ~= 'Chuwangzhengba' and not G.consumeables.cards[1].debuff then
            return G.consumeables.cards[1]:can_use_consumeable(any_state, skip_check)
        elseif G.consumeables.cards[1] and G.consumeables.cards[1].ability.name == 'Chuwangzhengba' and not G.consumeables.cards[1].debuff then
            local exist = false
            local double = false
            local food_jokers = {
                'Gros Michel',
                'Ice Cream',
                'Cavendish',
                'Turtle Bean',
                'Diet Cola',
                'Popcorn',
                'Ramen',
                'Seltzer'
            }
            for i = 1, #G.consumeables.cards do
                if G.consumeables.cards[i] == card then
                    exist = true
                    break
                end
            end
            for i = 1, #food_jokers do
                if next(find_joker(food_jokers[i])) then
                    double = true
                    break
                end
            end
            if exist and (card.edition and card.edition.negative) and G.consumeables.config.card_limit > #G.consumeables.cards then
                return true
            elseif exist and not card.edition then
                return true
            elseif not exist and G.consumeables.config.card_limit > #G.consumeables.cards then
                return true
            end      
            if double then
                return true
            end
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'weixiantouwei',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "weixiantouwei",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
            attention_text({scale = 1.4, text = localize("k_idst_attention14"), colour = G.C.CHIPS, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        G.jokers.config.card_limit = G.jokers.config.card_limit + 1
        delay(3.0)
        if G.SETTINGS.GAMESPEED > 1 then
            if pseudorandom('weixiantouwei') < 3/4 then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.9, 1.5)
                    attention_text({scale = 1.4, text = localize("k_idst_attention15"), colour = G.C.MULT, hold = 4, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                return true end }))
                G.hand:change_size(-1)
                delay(4.0)
            end
        end
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'womenshiniuzai',
    set = 'Event',
    cost = 2,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "womenshiniuzai",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = {key = 'tag_double', set = 'Tag'}
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 2)
        G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                
        local chips_UI = G.hand_text_area.blind_chips
        G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
        G.HUD_blind:recalculate() 
        chips_UI:juice_up()
        play_sound('idst_soevent')
        G.E_MANAGER:add_event(Event({
            func = (function()
                add_tag(Tag('tag_double'))
                add_tag(Tag('tag_double'))
                play_sound('generic1', 0.9 + math.random()*0.1, 0.8)
                play_sound('holo1', 1.2 + math.random()*0.1, 0.4)
                return true
            end)
        }))
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'xiangsushijie',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "xiangsushijie",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.j_pareidolia
        info_queue[#info_queue+1] = G.P_CENTERS.j_smeared
        info_queue[#info_queue+1] = G.P_CENTERS.j_shortcut
        info_queue[#info_queue+1] = G.P_CENTERS.j_four_fingers
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        local cards = {
            "j_pareidolia",
            "j_smeared",
            "j_shortcut",
            "j_four_fingers",
        }
        local chosen_card = pseudorandom_element(cards, pseudoseed('xiangsushijie'))
        if G.SETTINGS.GRAPHICS.texture_scaling == 1 then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                attention_text({scale = 1.4, text = localize("k_idst_attention16"), colour = G.C.PURPLE, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, chosen_card, nil)
                _card:set_edition({negative = true}, true)
                _card:add_to_deck()
                G.jokers:emplace(_card)
            return true end }))
        else
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                if card then card:juice_up(0.8, 0.5) end
                attention_text({scale = 1.4, text = localize("k_idst_attention17"), colour = G.C.PURPLE, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                local _card = create_card('Joker', G.jokers, nil, nil, nil, nil, chosen_card, nil)
                _card:add_to_deck()
                G.jokers:emplace(_card)
            return true end }))
        end
        delay(3.0)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if (#G.jokers.cards < G.jokers.config.card_limit or self.area == G.jokers) or G.SETTINGS.GRAPHICS.texture_scaling == 1 then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'xingjihepingtouzi',
    name = 'Xingjihepingtouzi',
    set = 'Event',
    cost = 2,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "xingjihepingtouzi",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {G.GAME.used_event_times or 0} }
    end,
    use = function(self, card, area, copier)
        if not G.GAME.used_event_times then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
            return true end }))
            ease_dollars(-5)
            delay(2.0)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                attention_text({scale = 1.4, text = localize("k_idst_attention18"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            return true end }))
            ease_dollars(10)
        elseif G.GAME.used_event_times == 1 then
            local money_1 = math.abs(math.floor(G.GAME.dollars/2))
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
            return true end }))
            ease_dollars(-money_1)
            delay(2.0)
            if pseudorandom('xingjihepingtouzi') < 1/2 then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    attention_text({scale = 1.4, text = localize("k_idst_attention19"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                return true end }))
                ease_dollars(money_1*2)
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    attention_text({scale = 1.4, text = localize("k_idst_attention20"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                return true end }))
            end
        elseif G.GAME.used_event_times >= 2 then
            local money_2 = math.abs(G.GAME.dollars)
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
            return true end }))
            ease_dollars(-money_2)
            delay(2.0)
            if pseudorandom('xingjihepingtouzi') < 1/4 then
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    attention_text({scale = 1.4, text = localize("k_idst_attention21"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                return true end }))
                ease_dollars(money_2*3)
            else
                G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                    play_sound('idst_soevent')
                    card:juice_up(0.3, 0.5)
                    attention_text({scale = 1.4, text = localize("k_idst_attention22"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
                return true end }))
            end
        end
        G.GAME.used_event_times = (G.GAME.used_event_times or 0) + 1
        delay(3.0)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        return true
    end
}

SMODS.Consumable{
    key = 'xugeyuanba',
    set = 'Event',
    cost = 6,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "xugeyuanba",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {2^((G.GAME.used_event_times3 or 0)+1)} }
    end,
    use = function(self, card, area, copier)
        G.GAME.used_event_times3 = (G.GAME.used_event_times3 or 0) + 1
        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
            play_sound('idst_soevent')
            local text = G.FUNCS.get_poker_hand_info(G.hand.highlighted)
            update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(text, 'poker_hands'),chips = G.GAME.hands[text].chips, mult = G.GAME.hands[text].mult, level=G.GAME.hands[text].level})
            level_up_hand(card, text, nil, 2^(G.GAME.used_event_times3 or 0))
            update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 0}, {mult = 0, chips = 0, handname = '', level = ''})
        return true end }))
        for i = 1, #G.hand.highlighted do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
            G.hand:unhighlight_all()
        return true end }))
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND and #G.hand.highlighted >= 1 then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'xugoushixuejia',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "xugoushixuejia",
    config = { extra = {max_highlighted = 1} },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_glass
        if not card.edition or (card.edition and not card.edition.holo) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_holo
        end
        info_queue[#info_queue+1] = G.P_CENTERS.m_stone
        return { vars = {self.config.extra.max_highlighted} }
    end,
    use = function(self, card, area, copier)
        local xu_cards = {}
        local xu_pos_left = nil
        local xu_pos_right = nil
        for i = 1, #G.hand.cards do
            if G.hand.cards[i] == G.hand.highlighted[1] then
                xu_pos_left = i - 1
            end
            if G.hand.cards[i] == G.hand.highlighted[#G.hand.highlighted] then
                xu_pos_right = i + 1
            end
        end
        for i = 1, #G.hand.highlighted do
            xu_cards[#xu_cards + 1] = G.hand.highlighted[i]
        end
        if G.hand.cards[xu_pos_left] then
            G.hand.cards[xu_pos_left].stone = true
            xu_cards[#xu_cards + 1] = G.hand.cards[xu_pos_left]
        end
        if G.hand.cards[xu_pos_right] then
            G.hand.cards[xu_pos_right].stone = true
            xu_cards[#xu_cards + 1] = G.hand.cards[xu_pos_right]
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        for i = 1, #xu_cards do
            local percent = 1.15 - (i - 0.999)/(#xu_cards - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                xu_cards[i]:flip()
                play_sound('card1', percent)
                xu_cards[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        delay(0.2)
        for i = 1, #xu_cards do
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,func = function()
                if not xu_cards[i].stone then
                    xu_cards[i]:set_ability(G.P_CENTERS.m_glass, nil, nil)
                    xu_cards[i]:set_edition({holo = true}, true)
                else
                    xu_cards[i]:set_ability(G.P_CENTERS.m_stone, nil, nil)
                    xu_cards[i].stone = nil
                end
            return true end }))
        end
        for i = 1, #xu_cards do
            local percent = 0.85 + (i - 0.999)/(#xu_cards - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                xu_cards[i]:flip()
                play_sound('tarot2', percent, 0.6)
                xu_cards[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
            G.hand:unhighlight_all()
        return true end }))
        delay(0.5)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if self.config.extra.max_highlighted >= #G.hand.highlighted and #G.hand.highlighted >= (self.config.extra.min_highlighted or 1) then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'yinhehaoren',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "yinhehaoren",
    config = { extra = {max_highlighted = 2} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {self.config.extra.max_highlighted} }
    end,
    use = function(self, card, area, copier)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
        return true end }))
        for i = 1, #G.hand.highlighted do
            local percent = 1.15 - (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                G.hand.highlighted[i]:flip()
                G.hand.highlighted[i].ability.perma_bonus = G.hand.highlighted[i].ability.perma_bonus or 0
                G.hand.highlighted[i].ability.perma_bonus = G.hand.highlighted[i].ability.perma_bonus + 20
                play_sound('card1', percent)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        delay(0.2)
        for i = 1, #G.hand.highlighted do
            local percent = 0.85 + (i - 0.999)/(#G.hand.highlighted - 0.998)*0.3
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function()
                if G.hand.highlighted[i]:get_id() == 14 
                or G.hand.highlighted[i]:get_id() == 2 
                or G.hand.highlighted[i]:get_id() == 3 
                or G.hand.highlighted[i]:get_id() == 5 
                or G.hand.highlighted[i]:get_id() == 8 then
                G.hand.highlighted[i].ability.perma_bonus = G.hand.highlighted[i].ability.perma_bonus or 0
                G.hand.highlighted[i].ability.perma_bonus = G.hand.highlighted[i].ability.perma_bonus * 2
                end
                G.hand.highlighted[i]:flip()
                play_sound('tarot2', percent, 0.6)
                G.hand.highlighted[i]:juice_up(0.3, 0.3)
            return true end }))
        end
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2,func = function()
            G.hand:unhighlight_all()
        return true end }))
        delay(0.9)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if self.config.extra.max_highlighted >= #G.hand.highlighted and #G.hand.highlighted >= (self.config.extra.min_highlighted or 1) then
            return true
        end
    end
}

SMODS.Consumable{
    key = 'youmukuanggong',
    set = 'Event',
    cost = 4,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "youmukuanggong",
    config = { extra = {max_money = 50} },
    loc_vars = function(self, info_queue, card)
        --info_queue[#info_queue+1] = {
            --set = '',
            --key = '',
            --specific_vars = {}
        --}
        return { vars = {self.config.extra.max_money} }
    end,
    use = function(self, card, area, copier)
        local money = 0
        if G.jokers.highlighted[1].sell_cost <= (self.config.extra.max_money/2) then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                G.jokers.highlighted[1]:juice_up(0.3, 0.5)
                G.jokers.highlighted[1].sell_cost = G.jokers.highlighted[1].sell_cost*2
                money = G.jokers.highlighted[1].sell_cost
                attention_text({scale = 1.4, text = localize("k_idst_attention23"), colour = G.C.BLUE, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            return true end }))
        elseif G.jokers.highlighted[1].sell_cost > (self.config.extra.max_money/2) and G.jokers.highlighted[1].sell_cost < self.config.extra.max_money then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                G.jokers.highlighted[1]:juice_up(0.3, 0.5)
                G.jokers.highlighted[1].sell_cost = 50
                money = G.jokers.highlighted[1].sell_cost
                attention_text({scale = 1.4, text = localize("k_idst_attention24"), colour = G.C.YELLOW, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            return true end }))
        elseif G.jokers.highlighted[1].sell_cost >= self.config.extra.max_money then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                money = G.jokers.highlighted[1].sell_cost
                attention_text({scale = 1.4, text = localize("k_idst_attention25"), colour = G.C.RED, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            return true end }))
        end
        delay(3.0)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('idst_soevent')
            card:juice_up(0.3, 0.5)
            ease_dollars(money)
            attention_text({scale = 1.4, text = localize("k_idst_attention26"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
        return true end }))
        delay(3.0)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if #G.jokers.highlighted == 1 then
            return true
        else
            return false
        end
    end
}

SMODS.Consumable{
    key = 'zhanbu',
    name = 'Zhanbu',
    set = 'Event',
    cost = 8,
    unlocked = true,
    discovered = true,
    pos = { x = 0, y = 0 },
    loc_txt ={},
    atlas = "zhanbu",
    config = { extra = {} },
    loc_vars = function(self, info_queue, card)
        if not card.edition or (card.edition and not card.edition.polychrome) then
        info_queue[#info_queue+1] = G.P_CENTERS.e_polychrome
        end
        return { vars = {} }
    end,
    use = function(self, card, area, copier)
        local _first_dissolve = nil
        local new_cards = {}
        if not G.deck.cards[#G.deck.cards].edition then
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                G.deck.cards[#G.deck.cards]:set_edition({polychrome = true}, true)
            return true end }))
        else
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                attention_text({scale = 1.4, text = localize("k_idst_attention27"), colour = G.C.BLUE, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            return true end }))           
            delay(2.6)
        end
        delay(0.4)
        for i = 1, 3 do
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                play_sound('idst_soevent')
                card:juice_up(0.3, 0.5)
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                local _card = copy_card(G.deck.cards[#G.deck.cards], nil, nil, G.playing_card)
                _card:add_to_deck()
                G.deck.config.card_limit = G.deck.config.card_limit + 1
                table.insert(G.playing_cards, _card)
                G.hand:emplace(_card)
                _card:start_materialize(nil, _first_dissolve)
                _first_dissolve = true
                new_cards[#new_cards+1] = _card
                delay(0.9)
            return true end }))
        end
        playing_card_joker_effects(new_cards)
        delay(0.4)
    end,
    calculate = function(self, card, context)
    end,
    can_use = function(self, card)
        if G.STATE == G.STATES.SELECTING_HAND then
            if G.deck and G.deck.cards[1] then
                return true
            else
                return false
            end
        else
            return false
        end
    end
}

SMODS.Voucher {
    key = "huanyuhuangzai",
    name = "huanyuhuangzai",
    loc_txt = {},
    pos = { x = 0, y = 0 },
    atlas = 'huanyuhuangzai',
    cost = 10,
    unlocked = true,
    discovered = true,
    loc_vars = function(self, info_queue, center)
    end,
    redeem = function(self)
        G.E_MANAGER:add_event(Event({func = function()
            G.GAME.event_rate = 2
        return true end }))
    end,
}

SMODS.Voucher {
    key = "huangjinyujixie",
    name = "huangjinyujixie",
    loc_txt = {},
    pos = { x = 0, y = 0 },
    atlas = 'huangjinyujixie',
    cost = 10,
    unlocked = true,
    discovered = true,
    requires = {"v_idst_huanyuhuangzai"},
    loc_vars = function(self, info_queue, center)
    end,
    redeem = function(self)
        G.E_MANAGER:add_event(Event({func = function()
            G.GAME.event_rate = G.GAME.event_rate*2
        return true end }))
    end,
}

SMODS.Back{
    key = "huanyuback",
    name = "Huanyuback Deck",
    discovered = true,
    unlocked = true,
    atlas = 'huanyupaizu',
    pos = { x = 0, y = 0 },
    config = {vouchers = {'v_idst_huanyuhuangzai'}, consumables = {'c_idst_tiancaijulebu'}},
    loc_txt = {},
    loc_vars = function(self, info_queue, center)
        return {}
    end,
}

SMODS.Blind {
    key = 'xingqiri',
    name = 'xingqiri',
    loc_txt ={},
    dollars = 12,
    mult = 500,
    boss = {
        min = 3,
        max = 10,
        showdown = true
    },
    boss_colour = HEX('F7D762'),
    atlas = 'xingqiri',
    pos = { x = 0, y = 0 },
    discovered = true,
    set_blind = function(self, reset, silent)
        ease_hands_played(7)
    end,
    press_play = function(self)
        if G.GAME.current_round.hands_played == 6 or (G.GAME.current_round.hands_played%7) == 6 then
            attention_text({scale = 0.7, text = localize("k_idst_sunday7"), colour = G.C.DARK_EDITION, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 1000)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                
                local chips_UI = G.hand_text_area.blind_chips
                G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
                G.HUD_blind:recalculate() 
                chips_UI:juice_up()
                for i = 1, #G.play.cards do
                    G.E_MANAGER:add_event(Event({func = function()
                        G.play.cards[i]:juice_up()
                        G.play.cards[i]:set_debuff(true)
                    return true end }))
                end
                for i = 1, #G.jokers.cards do
                    G.E_MANAGER:add_event(Event({func = function()
                        G.jokers.cards[i]:juice_up()
                        G.jokers.cards[i]:set_debuff(true)
                    return true end }))
                end
                play_sound('idst_soevent')
            return true end }))
        else
            if G.GAME.current_round.hands_played == 0 or (G.GAME.current_round.hands_played%7) == 0 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday1"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif G.GAME.current_round.hands_played == 1 or (G.GAME.current_round.hands_played%7) == 1 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday2"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif G.GAME.current_round.hands_played == 1 or (G.GAME.current_round.hands_played%7) == 2 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday3"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif G.GAME.current_round.hands_played == 1 or (G.GAME.current_round.hands_played%7) == 3 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday4"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif G.GAME.current_round.hands_played == 1 or (G.GAME.current_round.hands_played%7) == 4 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday5"), colour = G.C.MONEY, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            elseif G.GAME.current_round.hands_played == 1 or (G.GAME.current_round.hands_played%7) == 5 then
            attention_text({scale = 1.4, text = localize("k_idst_sunday6"), colour = G.C.RED, hold = 3, align = 'cm', offset = {x = 0,y = -2.7},major = G.play})
            end
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
                G.GAME.blind.chips = math.floor(G.GAME.blind.chips * 0.5)
                G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
                
                local chips_UI = G.hand_text_area.blind_chips
                G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
                G.HUD_blind:recalculate() 
                chips_UI:juice_up()
            return true end }))
        end
    end,
    disable = function(self)
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
            G.GAME.blind.chips = G.GAME.blind.chips/250
            G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
        return true end }))
    end
}

--[[SMODS.Achievement{
    key = "achruanmei",
    atlas = "jingzhongguwo",
    pos = {x=0, y=0},
    hidden_pos = {x=0, y=0},
    bypass_all_unlocked = true,
    hidden_name = true,
    loc_txt = {
        name = "镜中故我",
        description = "遇见阮梅"
    },
    unlock_condition = function(self, args)
        if G.GAME.modifiers.achruanmei then
            return true
        end
    end,
}]]