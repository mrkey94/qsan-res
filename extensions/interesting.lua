extension = sgs.Package("interesting", sgs.Package_GeneralPack)
sgs.LoadTranslationTable{
	["interesting"] = "Giới hạn",
}
--001 卑弥呼
beimihu = sgs.General(extension,"beimihu","qun",3,false)

guishuCard = sgs.CreateSkillCard{
	name = "guishu",
	will_throw = false,
	handling_method = sgs.Card_MethodNone,
	filter = function(self, targets, to_select)
		local card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		card:addSubcard(self:getSubcards():first())
		card:setSkillName(self:objectName())
		if card and card:targetFixed() then
			return false
		end
		local what = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		what:addSubcard(self:getSubcards():first())
		what:setSkillName(self:objectName())
		if what and what:targetFixed() then
			return false
		end
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		return (card and card:targetFilter(qtargets, to_select, sgs.Self) and not sgs.Self:isProhibited(to_select, card, qtargets)) or (what and what:targetFilter(qtargets, to_select, sgs.Self) and not sgs.Self:isProhibited(to_select, what, qtargets))
	end,
	feasible = function(self, targets)
		local card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		card:addSubcard(self:getSubcards():first())
		card:setSkillName(self:objectName())
		local what = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		what:addSubcard(self:getSubcards():first())
		what:setSkillName(self:objectName())
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		if ((card and card:canRecast()) or (what and what:canRecast())) and #targets == 0 then
			return false
		end
		return (card and card:targetsFeasible(qtargets, sgs.Self)) or (what and what:targetsFeasible(qtargets, sgs.Self))
	end,	
	on_validate = function(self, card_use)
		local xunyou = card_use.from
		local room = xunyou:getRoom()
		local choices = {}
		local card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		card:addSubcard(self:getSubcards():first())
		card:setSkillName(self:objectName())
		local what = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		what:addSubcard(self:getSubcards():first())
		what:setSkillName(self:objectName())
		local qtargets = sgs.PlayerList()
		for _,p in sgs.qlist(card_use.to) do
			qtargets:append(p)
		end
		if what and what:targetsFeasible(qtargets, xunyou) then
			local available = true
			for _,p in sgs.qlist(card_use.to) do
				if xunyou:isProhibited(p, what) or (p:isKongcheng() and p:hasShownAllGenerals()) then
					available = false
					break
				end
			end
			available = available and what:isAvailable(xunyou)
			if available then
				table.insert(choices, "known_both")
			end
		end
		if card and card:targetsFeasible(qtargets, xunyou) then
			local available = true
			for _,p in sgs.qlist(card_use.to) do
				if xunyou:isProhibited(p, card) or not p:hasShownOneGeneral() or xunyou:isFriendWith(p) then
					available = false
					break
				end
			end
			available = available and card:isAvailable(xunyou)
			if available then
				table.insert(choices, "befriend_attacking")
			end
		end
		local choice = room:askForChoice(xunyou, self:objectName(), table.concat(choices, "+"))
		if choice == "known_both" then
			room:setPlayerMark(xunyou, self:objectName(), 1)
		elseif choice == "befriend_attacking" then
			room:setPlayerMark(xunyou, self:objectName(), 2)
		end
		local use_card = sgs.Sanguosha:cloneCard(choice, sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		use_card:addSubcard(self:getSubcards():first())
		use_card:setSkillName(self:objectName())
		use_card:setShowSkill(self:objectName())
		local available = true
		for _,p in sgs.qlist(card_use.to) do
			if xunyou:isProhibited(p, use_card)	then
				available = false
				break
			end
		end
		available = available and use_card:isAvailable(xunyou)
		if not available then return nil end
		return use_card		
	end,
}
guishu_bothCard = sgs.CreateSkillCard{
	name = "guishu_both",
	will_throw = false,
	handling_method = sgs.Card_MethodNone,
	filter = function(self, targets, to_select)
		local what = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		what:addSubcard(self:getSubcards():first())
		what:setSkillName("guishu")
		if what and what:targetFixed() then
			return false
		end
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		return what and what:targetFilter(qtargets, to_select, sgs.Self) and not sgs.Self:isProhibited(to_select, what, qtargets)
	end,
	feasible = function(self, targets)
		local what = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		what:addSubcard(self:getSubcards():first())
		what:setSkillName("guishu")
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		if what and what:canRecast() and #targets == 0 then
			return false
		end
		return what and what:targetsFeasible(qtargets, sgs.Self)
	end,	
	on_validate = function(self, card_use)
		local xunyou = card_use.from
		local room = card_use.from:getRoom()
		room:setPlayerMark(card_use.from, "guishu", 1)
		local use_card = sgs.Sanguosha:cloneCard("known_both", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		use_card:addSubcard(self:getSubcards():first())
		use_card:setSkillName("guishu")
		local available = true
		for _,p in sgs.qlist(card_use.to) do
			if xunyou:isProhibited(p, use_card)	then
				available = false
				break
			end
		end
		available = available and use_card:isAvailable(xunyou)
		if not available then return nil end
		return use_card		
	end,
}
guishu_attCard = sgs.CreateSkillCard{
	name = "guishu_att",
	will_throw = false,
	handling_method = sgs.Card_MethodNone,
	filter = function(self, targets, to_select)
		local card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		card:addSubcard(self:getSubcards():first())
		card:setSkillName("guishu")
		if card and card:targetFixed() then
			return false
		end
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		return card and card:targetFilter(qtargets, to_select, sgs.Self) and not sgs.Self:isProhibited(to_select, card, qtargets)
	end,
	feasible = function(self, targets)
		local card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		card:addSubcard(self:getSubcards():first())
		card:setSkillName("guishu")
		local qtargets = sgs.PlayerList()
		for _, p in ipairs(targets) do
			qtargets:append(p)
		end
		if card and card:canRecast() and #targets == 0 then
			return false
		end
		return card and card:targetsFeasible(qtargets, sgs.Self)
	end,	
	on_validate = function(self, card_use)
		local xunyou = card_use.from
		local room = xunyou:getRoom()
		room:setPlayerMark(xunyou, "guishu", 2)
		local use_card = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Sanguosha:getCard(self:getSubcards():first()):getSuit(), sgs.Sanguosha:getCard(self:getSubcards():first()):getNumber())
		use_card:addSubcard(self:getSubcards():first())
		use_card:setSkillName("guishu")
		use_card:setShowSkill("guishu")
		local available = true
		for _,p in sgs.qlist(card_use.to) do
			if xunyou:isProhibited(p, use_card)	then
				available = false
				break
			end
		end
		available = available and use_card:isAvailable(xunyou)
		if not available then return nil end
		return use_card		
	end,
}
guishu = sgs.CreateOneCardViewAsSkill{
	name = "guishu",
	response_or_use = true,
	view_filter = function(self, card)
		if card:getSuit() ~= sgs.Card_Spade or card:isEquipped() then return false end
		if not sgs.Self:hasUsed("#guishu") or sgs.Self:getMark(self:objectName()) == 0 then
			local slash = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Card_SuitToBeDecided, -1)
			slash:addSubcard(card:getEffectiveId())
			slash:deleteLater()
			local jink = sgs.Sanguosha:cloneCard("known_both", sgs.Card_SuitToBeDecided, -1)
			jink:addSubcard(card:getEffectiveId())
			jink:deleteLater()
			return slash:isAvailable(sgs.Self) or jink:isAvailable(sgs.Self)
		elseif sgs.Self:getMark(self:objectName()) == 1 then
			local slash = sgs.Sanguosha:cloneCard("befriend_attacking", sgs.Card_SuitToBeDecided, -1)
			slash:addSubcard(card:getEffectiveId())
			slash:deleteLater()
			return slash:isAvailable(sgs.Self)
		elseif sgs.Self:getMark(self:objectName()) == 2 then
			local slash = sgs.Sanguosha:cloneCard("known_both", sgs.Card_SuitToBeDecided, -1)
			slash:addSubcard(card:getEffectiveId())
			slash:deleteLater()
			return slash:isAvailable(sgs.Self)
		end
		return false
	end,
	view_as = function(self, originalCard)
		if not sgs.Self:hasUsed("#guishu") or sgs.Self:getMark(self:objectName()) == 0 then
			local zhiheng_card = guishuCard:clone()
			zhiheng_card:addSubcard(originalCard:getId())
			zhiheng_card:setSkillName(self:objectName())
			zhiheng_card:setShowSkill(self:objectName())
			return zhiheng_card
		elseif sgs.Self:getMark(self:objectName()) == 1 then
			local zhiheng_card = guishu_attCard:clone()
			zhiheng_card:addSubcard(originalCard:getId())
			zhiheng_card:setSkillName(self:objectName())
			zhiheng_card:setShowSkill(self:objectName())
			return zhiheng_card
		elseif sgs.Self:getMark(self:objectName()) == 2 then
			local zhiheng_card = guishu_bothCard:clone()
			zhiheng_card:addSubcard(originalCard:getId())
			zhiheng_card:setSkillName(self:objectName())
			zhiheng_card:setShowSkill(self:objectName())
			return zhiheng_card
		end
		return nil
	end,
	enabled_at_play = function(self, player)
		return true
	end
}

yuanyu = sgs.CreateTriggerSkill{
	name = "yuanyu" ,
	frequency = sgs.Skill_Compulsory,
	events = {sgs.DamageInflicted},
	can_trigger = function(self, event, room, player, data)
		if not player or player:isDead() or not player:hasSkill(self:objectName()) then return false end
		local damage = data:toDamage()
		if damage.from:getNextAlive():objectName() ~= player:objectName() and player:getNextAlive():objectName() ~= damage.from:objectName() then
			return self:objectName()
		end
		return ""
	end,
	on_cost = function(self, event, room, player, data)
		local invoke = false
		if player:hasShownSkill(self:objectName()) then
            invoke = true
            room:sendCompulsoryTriggerLog(player, self:objectName(),true)
        else
            invoke = player:askForSkillInvoke(self:objectName())
		end

		if invoke then
			room:broadcastSkillInvoke(self:objectName(), player)
            return true
		end
        return false
	end,
	on_effect = function(self, event, room, player, data)
		
		return true
	end,
}

beimihu:addSkill(guishu)
beimihu:addSkill(yuanyu)
lingcao = sgs.General(extension,"lingcao","wu",4) --凶手是谁？
dujin = sgs.CreateDrawCardsSkill{
	name = "dujin",
	frequency = sgs.Skill_Frequent,
	relate_to_place = "head",
	can_preshow = true,

	on_cost = function(self,event,room,player,data)
		if not player or player:isDead() or not player:hasSkill(self:objectName()) then return false end
		if player:askForSkillInvoke(self:objectName()) then
			room:broadcastSkillInvoke(self:objectName())
			return true
		end
	end,
	draw_num_func = function(self,player,n)
		return n + 1 + player:getEquips():length()/2
	end,
}
lingcao:addSkill(dujin)

lifeng = sgs.General(extension,"lifeng","shu",3)
tunchu = sgs.CreateDrawCardsSkill{
	name = "tunchu",
	can_preshow = true,
	relate_to_place = "head",
	on_cost = function(self,event,room,player)
		if player:getPile("yigeiwoligiaogiao"):isEmpty() and player:askForSkillInvoke(self:objectName()) then
			room:broadcastSkillInvoke(self:objectName(), player)
			return true
		end
	end,
	draw_num_func = function(self,player,n)
        player:setFlags("tunchu")
        return n + 2
	end,
}
tunchuGive = sgs.CreateTriggerSkill{
	name = "tunchu-give",
	events = {sgs.AfterDrawNCards},
	frequency = sgs.Skill_Compulsory,
	can_trigger = function(self,event,room,lusu)
		if not lusu or not lusu:isAlive() or not lusu:hasShownSkill("tunchu") then return false end
		if lusu:hasFlag("tunchu") then
			lusu:setFlags("-tunchu")
            return "tunchu-give"
		end
	end,
	on_effect = function(self,event,room,lusu)
		if lusu:isAlive() and not lusu:isKongcheng() then
			local card = room:askForExchange(lusu, self:objectName(), 1000, 0, "@"..self:objectName(), "", ".|.|.|hand")
			if not card:isEmpty() then
				local dummy = sgs.Sanguosha:cloneCard("jink")
				dummy:addSubcards(card)
				lusu:addToPile("yigeiwoligiaogiao", dummy)
				dummy:deleteLater()
				room:setPlayerCardLimitation(lusu, "use", "Slash", false)
			end
		end
		return false 
	end,
}
shuliang = sgs.CreateTriggerSkill{
	name = "shuliang",
	can_preshow = true,
	relate_to_place = "head",
	frequency = sgs.Skill_Frequent,
	events = {sgs.EventPhaseStart},
	can_trigger = function(self, event, room, player, data)
			if player and player:isAlive() and player:getPhase() == sgs.Player_Finish then
				local trigger_list_skill, trigger_list_who = {}, {}
				for _, caozhen in sgs.qlist(room:findPlayersBySkillName(self:objectName())) do
					if caozhen:getPile("yigeiwoligiaogiao"):length() > 0 and player:getHandcardNum() < player:getHp() then
						table.insert(trigger_list_skill, self:objectName())
						table.insert(trigger_list_who, caozhen:objectName())
					end
				end
				return table.concat(trigger_list_skill, "|"), table.concat(trigger_list_who, "|")
			end
		return ""
	end,
	on_cost = function(self, event, room, player, data, caozhen)
			local card = room:askForExchange(caozhen, self:objectName(), 1, 0, "@"..self:objectName()..":"..player:objectName(), "yigeiwoligiaogiao", ".|.|.|yigeiwoligiaogiao")
			if card and not card:isEmpty() then
				local log = sgs.LogMessage()
				log.type = "#InvokeSkill"
				log.from = caozhen
				log.arg = self:objectName()
				room:sendLog(log)
				room:broadcastSkillInvoke(self:objectName(), 2, caozhen)
				local reason = sgs.CardMoveReason(sgs.CardMoveReason_S_REASON_REMOVE_FROM_PILE, caozhen:objectName(), self:objectName(), "")
				room:throwCard(sgs.Sanguosha:getCard(card:first()), reason, caozhen)
				return true 
			end
		return false 
	end,
	
	on_effect = function(self, event, room, player, data, caozhen)
		player:drawCards(2, self:objectName())
		if caozhen:getPile("yigeiwoligiaogiao"):isEmpty() then
			 room:removePlayerCardLimitation(caozhen, "use", "Slash")
		end
		return false 
	end,
}
lifeng:addSkill(tunchu)
lifeng:addSkill(shuliang)
local skills = sgs.SkillList()
if not sgs.Sanguosha:getSkill("tunchu-give") then skills:append(tunchuGive) end
sgs.Sanguosha:addSkills(skills)


--003 卑弥呼


sgs.LoadTranslationTable{

 
    ["lifeng"] = "Lý Phong",
	["#lifeng"] = "Túc Binh Đích Trọng Tướng",
	["illustrator:lifeng"] = "biou09",
	["yigeiwoligiaogiao"] = "Lương",
	["@tunchu-give"] = "Đặt tùy ý lượng bài trên tay lên tướng.",
	["tunchu"] = "Truân Trữ",
	[":tunchu"] = "Chủ tướng kỹ, giai đoạn rút bài, nếu bạn chưa có [Lươg], bạn có thể rút thêm 2 lá; nếu làm vậy, cuối giai đoạn rút bài, bạn có thể đặt tùy ý bài trên tay lên tướng này, gọi là [Lương]. Nếu bạn có [Lương], bạn không thể sử dụng [Sát]." ,
	["shuliang"] = "Thâu Lương",
	["@shuliang"] = "Có thể bỏ 1 [Lương] để cho người có lượt rút 2 lá.",
	[":shuliang"] = "Chủ tướng kỹ, giai đoạn kết thúc của 1 người, nếu bài trên tay họ nhỏ hơn số máu, bạn có thể đưa 1 [Lương] vào chồng bài bỏ, lệnh họ rút 2 lá.",
	
    ["$tunchu1"] = "广屯粮草，方能长久对峙。",
	["$tunchu2"] = "屯以安定社稷，储为不时之需。",
    ["$shuliang1"] = "承父之志，助丞相再伐中原。",
	["$shuliang2"] = "兵马未动，粮草先行！",
	["~lifeng"] = "马困人饥，我军休矣……",
	
		
    ["lingcao"] = "Lăng Tháo",
	["#lingcao"] = "Kích Lưu Cấp Phong",
	["illustrator:lingcao"] = "YanBai",
	["dujin"] = "Độc Tiến",
	[":dujin"] = "Chủ tướng kỹ, giai đoạn rút bài, bạn có thể rút thêm X lá (X là 1 nửa số lá trong vùng trang bị + 1)" ,
	
    ["$dujin1"] = "带兵十万，不如老夫多甲一件！",
	["$dujin2"] = "轻舟独进，破敌先锋！",
	["~lingcao"] = "啊啊啊~此箭何来……",

    ["beimihu"] = "Himiko",
	["#beimihu"] = "Tà Mã Đài Đích Nữ Vương",
	["designer:beimihu"] = "淬毒",
	["illustrator:beimihu"] = "Town",
	["guishu"] = "Quỷ Thuật",
	[":guishu"] = "Có thể sử dụng 1 lá Bích trên tay như [Tri Bỉ Tri Kỷ] hoặc [Viễn Giao Cận Công], trong cùng 1 lượt cần sử dụng xen kẽ 2 lá bài trên." ,
	["yuanyu"] = "Viễn Vực",
	[":yuanyu"] = "Tỏa định kỹ, khi nhận sát thương, nếu nguồn không phải là người kế bên bạn, bạn chặn sát thương này.",
	
	["$guishu1"] = "契约已定！",
	["$guishu2"] = "准备好，听候女王的差遣了吗？",
	["$yuanyu1"] = "是你，在召唤我吗？",
	["$yuanyu2"] = "这片土地的人，真是太有趣了。",
	["~beimihu"] = "我还会从黄泉比良坂回来的……",
	
	

	

}
return{extension}