--[[********************************************************************
	Copyright (c) 2013-2015 Mogara

  This file is part of QSanguosha-Hegemony.

  This game is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License as
  published by the Free Software Foundation; either version 3.0
  of the License, or (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  General Public License for more details.

  See the LICENSE file for more details.

  Mogara
*********************************************************************]]

---荀攸
local qice_skill = {}
qice_skill.name = "qice"
table.insert(sgs.ai_skills, qice_skill)
qice_skill.getTurnUseCard = function(self,room,player,data)
	if self.player:hasUsed("ViewAsSkill_qiceCard") or self.player:isKongcheng() then return end
	local handcardnum = self.player:getHandcardNum()
	local caocao = self.room:findPlayerBySkillName("jianxiong")
	local preventdamage = false
	if not (caocao and self:isFriend(caocao)
		and caocao:getHp() > 1 
		and self:hasSkill("jianxiong|jjianxiong", caocao)
		and not self:willSkipPlayPhase(caocao))
		and getCardsNum("Peach", self.player) > 0 then
		preventdamage = true
	end
	
	local usevalue = 0
	local keepvalue = 0	
	local id
	local cards = self.player:getHandcards()
	local allcard = {}
	cards = sgs.QList2Table(cards)
	for _,card in ipairs(cards) do
		if card:canRecast() then return end
		if card:isAvailable(self.player) then
			if card:isKindOf("EquipCard") and not self:getSameEquip(card) and handcardnum > 1 then
				local use = sgs.CardUseStruct(card, self.player, self.player, true)
				self:useEquipCard(card, use)
			end
			usevalue = self:getUseValue(card) + usevalue
		end
		if not id then
			id = tostring(card:getId())
		else
			id = id .. "+" .. tostring(card:getId())
		end
	end	
	self:sortByKeepValue(cards)
	for i = 1, #cards, 1 do
		if i > self:getOverflow(self.player) then
			keepvalue = self:getKeepValue(cards[i]) + keepvalue
		end
	end

	local cardsavailable = function(use_card)--策略优化？
		local targets = {}
		if use_card:isKindOf("AwaitExhausted") then
			for _, p in sgs.qlist(self.room:getAlivePlayers()) do
				if not self.player:isProhibited(p, use_card) and self.player:hasShownOneGeneral() and self.player:getRole() ~= "careerist" and
							p:getRole() ~= "careerist" and p:hasShownOneGeneral() and p:getKingdom() == self.player:getKingdom() then
						table.insert(targets, p)
				end
			end
		elseif use_card:getSubtype() == "global_effect" and not use_card:isKindOf("FightTogether") then
			for _, p in sgs.qlist(self.room:getAlivePlayers()) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		elseif use_card:getSubtype() == "aoe" and not use_card:isKindOf("BurningCamps") then
			for _, p in sgs.qlist(self.room:getOtherPlayers(self.player)) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		elseif use_card:isKindOf("BurningCamps") then
				players = self.player:getNextAlive():getFormation()
			for _, p in sgs.qlist(players) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		end
		return #targets <= handcardnum
	end
	
	local parsed_card = {}
	if cardsavailable(sgs.Card_Parse("amazing_grace:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("amazing_grace:qice[to_be_decided:0]=" .. id .."&qice"))		--五谷
	end
	if cardsavailable(sgs.Card_Parse("god_salvation:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("god_salvation:qice[to_be_decided:0]=" .. id .."&qice"))		--桃园
	end
	if cardsavailable(sgs.Card_Parse("burning_camps:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("burning_camps:qice[to_be_decided:0]=" .. id .."&qice"))		--火烧连营
	end
	if cardsavailable(sgs.Card_Parse("drowning:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("drowning:qice[to_be_decided:0]=" .. id .."&qice"))				--水淹七军
	end
	if cardsavailable(sgs.Card_Parse("threaten_emperor:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("threaten_emperor:qice[to_be_decided:0]=" .. id .."&qice"))		--挟天子以令诸侯
	end
	if cardsavailable(sgs.Card_Parse("await_exhausted:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("await_exhausted:qice[to_be_decided:0]=" .. id .."&qice"))			--以逸待劳
	end
	if cardsavailable(sgs.Card_Parse("befriend_attacking:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("befriend_attacking:qice[to_be_decided:0]=" .. id .."&qice"))		--远交近攻
	end
	if cardsavailable(sgs.Card_Parse("duel:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("duel:qice[to_be_decided:0]=" .. id .."&qice"))				--决斗
	end
	if cardsavailable(sgs.Card_Parse("dismantlement:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("dismantlement:qice[to_be_decided:0]=" .. id .."&qice"))		--过河拆桥
	end
	if cardsavailable(sgs.Card_Parse("snatch:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("snatch:qice[to_be_decided:0]=" .. id .."&qice"))				--顺手牵羊
	end
	if cardsavailable(sgs.Card_Parse("ex_nihilo:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("ex_nihilo:qice[to_be_decided:0]=" .. id .."&qice"))			--无中生有
	end
	if not preventdamage or not self:hasTrickEffective(sgs.Card_Parse("archery_attack:qice[to_be_decided:0]=" .. id .."&qice"), caocao)
		and cardsavailable(sgs.Card_Parse("archery_attack:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("archery_attack:qice[to_be_decided:0]=" .. id .."&qice"))	--万箭齐发
	end
	if not preventdamage or not self:hasTrickEffective(sgs.Card_Parse("savage_assault:qice[to_be_decided:0]=" .. id .."&qice"), caocao) and
		cardsavailable(sgs.Card_Parse("savage_assault:qice[to_be_decided:0]=" .. id .."&qice")) then
		table.insert(parsed_card, sgs.Card_Parse("savage_assault:qice[to_be_decided:0]=" .. id .."&qice"))	--南蛮
	end
	
	local value = 0
	local tcard
	for _, c in ipairs(parsed_card) do
		assert(c)
		if self:getUseValue(c) > value and self:getUseValue(c) > keepvalue and self:getUseValue(c) > usevalue and (usevalue < 6 or handcardnum == 1) then
			value = self:getUseValue(c)
			tcard = c
		end
	end
	if tcard then
		return tcard
	end
end

sgs.ai_skill_invoke.zhiyu = function(self, data)
	if not self:willShowForMasochism() then return false end
	local damage = data:toDamage()
	local cards = self.player:getHandcards()
	cards = sgs.QList2Table(cards)
	local first
	local difcolor = 0
	for _, card in ipairs(cards)  do
		if not first then first = card end
		if (first:isRed() and card:isBlack()) or (card:isRed() and first:isBlack()) then
			difcolor = 1
			break
		end
	end
	if difcolor == 0 and damage.from then
		if self:isFriend(damage.from) and not damage.from:isKongcheng() then
			return false
		elseif self:isEnemy(damage.from) then
			if self:doNotDiscard(damage.from, "h") and not damage.from:isKongcheng() then return false end
			return true
		end
	end
	return true
end

--卞皇后
--[[旧ai
sgs.ai_skill_invoke.wanwei = function(self, data)
	if not self:willShowForDefence() then return false end
	local move = data:toMoveOneTime()
	local target = move.to
	if self:isFriend(target) then return false end
	self.wanwei = {}
	local cards = sgs.QList2Table(self.player:getCards("e"))
	local hcards = sgs.QList2Table(self.player:getHandcards())
	table.insertTable(cards, hcards)
	self:sortByUseValue(cards)
	for i = 1, move.card_ids:length(), 1 do
		table.insert(self.wanwei, card[i]:getEffectiveId())
	end
	return true
end

sgs.ai_skill_exchange.wanwei = function(self)
	if not self:willShowForDefence() then return {} end
	local target = self.player:getTag("wanwei"):toPlayer()
	if not self:isFriend(target) then
		return self:askForDiscard("dummy_reason", 1, 1, false, true)
	else
		if self:isWeak(target) and not self:isWeak() and self:getCardsNum("Peach") > 0 then
			for _, c in sgs.qlist(self.player:getHandcards()) do
				if c:isKindOf("Peach") then return { c:getEffectiveId() } end
			end
		end
	end
	return {}
end

sgs.ai_skill_discard.wanwei = function(self)
	if not self:willShowForDefence() then return {} end
	return self:askForDiscard("dummy_reason", 1, 1, false, true)
end
--]]

sgs.ai_skill_invoke.wanwei = true

sgs.ai_skill_exchange["_wanwei"] = function(self,pattern,max_num,min_num,expand_pile)
	local result = {}
	local cards = self.player:getCards("he")
	cards=sgs.QList2Table(cards)
	self:sortByKeepValue(cards)
	for _, c in ipairs(cards) do
		table.insert(result, c:getId())
		if #result == max_num then
			return result
		end
	end
	return result
end

sgs.ai_skill_invoke.yuejian = function(self, data)
	local target = self.room:getCurrent()
	if target:getHandcardNum() > target:getMaxCards() and target:isWounded() then return true end
	return false
end

--李傕＆郭汜
local xiongsuan_skill = {}
xiongsuan_skill.name = "xiongsuan"
table.insert(sgs.ai_skills, xiongsuan_skill)
xiongsuan_skill.getTurnUseCard = function(self)
	global_room:writeToConsole("进入凶算")
	--不考虑自杀了
	if self.player:getMark("@fierce") < 1 or not self.player:canDiscard(self.player, "h") then return end
	if self.player:getMark("Global_TurnCount") < 2 and not self.player:hasShownOneGeneral() then return end
	local cards = self.player:getHandcards()
	cards = sgs.QList2Table(cards)
	self:sortByKeepValue(cards)
	if cards[1]:isKindOf("Peach") then
		return
	else
		return sgs.Card_Parse("@XiongsuanCard=".. cards[1]:getEffectiveId() .."&xiongsuan")
	end
end

sgs.ai_skill_use_func.XiongsuanCard = function(card, use, self)
	global_room:writeToConsole("使用凶算")
	local target
	for _, friend in ipairs(self.friends) do
		if self:isFriendWith(friend) and friend:hasSkill("xiongyi") and friend:getMark("@arise") < 1 and friend:getHp() > 1 then
			self.xiongsuan_skill = "xiongyi"
			target = friend
			break
		end
	end
	for _, friend in ipairs(self.friends) do--复制的乱舞触发条件
		if self:isFriendWith(friend) and friend:hasSkill("luanwu") and friend:getMark("@chaos") < 1 and friend:getHp() > 1 then
			local good, bad = 0, 0
			local alive = self.room:alivePlayerCount()
			if good < alive/4 then break end

			for _, player in sgs.qlist(self.room:getOtherPlayers(self.player)) do
				if player:isRemoved() then
					continue
				end
				local hp = math.max(player:getHp(), 1)
				if getCardsNum("Analeptic", player, self.player) > 0 then
					if self:isFriend(player) then good = good + 1.0 / hp
					else bad = bad + 1.0 / hp
					end
				end

				local has_slash = (getCardsNum("Slash", player, self.player) > 0)
				local can_slash = false
				if not can_slash then
					for _, p in sgs.qlist(self.room:getOtherPlayers(player)) do
						if player:distanceTo(p) <= player:getAttackRange() then can_slash = true break end
					end
				end
				if not has_slash or not can_slash then
					if self:isFriend(player) then good = good + math.max(getCardsNum("Peach", player, self.player), 1)
					else bad = bad + math.max(getCardsNum("Peach", player, self.player), 1)
					end
				end

				if getCardsNum("Jink", player, self.player) == 0 then
					local lost_value = 0
					if player:hasShownSkills(sgs.masochism_skill) then lost_value = player:getHp() / 2 end
					local hp = math.max(player:getHp(), 1)
					if self:isFriend(player) then bad = bad + (lost_value + 1) / hp
					else good = good + (lost_value + 1) / hp
					end
				end
			end
			if good > bad and not target then
				self.xiongsuan_skill = "luanwu"
				target = friend
				break
			end
		end
	end
	if not target then--大部分参考苦肉，暂未考虑给无限定技的队友
		local can_xiongsuan = false
		if ((self.player:getHp() > 3 and self.player:getLostHp() <= 1 and self:getOverflow(self.player, false) < 2) or self:getOverflow(self.player, false) < -1)
		or (self.player:getHp() == 1 and self:getCardsNum("Analeptic") >= 1)  then
			can_xiongsuan = true
		end
		local slash = sgs.cloneCard("slash")
		if self:hasCrossbowEffect(self.player) then
			for _, enemy in ipairs(self.enemies) do
				if enemy:hasShownOneGeneral() then
					if self.player:canSlash(enemy, nil, true) and self:slashIsEffective(slash, enemy)
						and not (enemy:hasShownSkill("kongcheng") and enemy:isKongcheng())
						and not (enemy:hasShownSkills("fankui") and not self.player:hasSkill("paoxiao"))
						and sgs.isGoodTarget(enemy, self.enemies, self) and not self:slashProhibit(slash, enemy) and self.player:getHp() > 1 then
							can_xiongsuan = true
					end
				end
			end
		end
		if self.player:getHp() > 1 and
			((self.player:hasSkill("luanji") and self:getAoeValue("ArcheryAttack") > 0) 
			or (self.player:hasSkill("shuangxiong") and self.player:getMark("#shuangxiong+no_suit_black") + self.player:getMark("#shuangxiong+no_suit_red") > 0)) then--攻击技能
			can_xiongsuan = true
		end
		if self.player:hasSkills("chenglve|qianhuan|huashen") and self:getCardsNum("Peach") >= 1 then--卖血技能
			can_xiongsuan = true
		end
		if self.player:hasSkill("congjian") then
			can_xiongsuan = false
		end
		if can_xiongsuan then
			self.xiongsuan_skill = "xiongsuan"
			target = self.player
		end
	end
	if target then
		use.card = card
		if use.to then
			use.to:append(target)
			global_room:writeToConsole("使用凶算目标:"..target:objectName().." 技能:"..self.xiongsuan_skill)
		end
	end
end

sgs.ai_skill_choice.xiongsuan = function(self, choices, data)
	return self.xiongsuan_skill
end

sgs.ai_card_intention.XiongsuanCard = -40
sgs.ai_use_priority.XiongsuanCard = 6.8--复制的苦肉优先度

--左慈
--[[旧技能
sgs.ai_skill_invoke.huashen = function(self, data)
	local huashens = self.player:getTag("Huashens"):toList()
	if huashens:length() < 2 then return true end
	local names = {}
	for _, q in sgs.qlist(huashens) do
		table.insert(names, q:toString())
	end
	g1 = sgs.Sanguosha:getGeneral(names[1])
	g2 = sgs.Sanguosha:getGeneral(names[2])
	return self:getHuashenPairValue(g1, g2) < 6
end

sgs.ai_skill_invoke["xinsheng"] = function(self, data)
	return true
end

sgs.ai_skill_choice.huashen = function(self, choice, data)
	local head = self.player:inHeadSkills("huashen") or self.player:inHeadSkills("xinsheng")
	local names = choice:split("+")
	local max_point = 0
	local pair = ""

	for _, name1 in ipairs(names) do
		local g1 = sgs.Sanguosha:getGeneral(name1)
		if not g1 then continue end
		--[[
		for _, skill in sgs.qlist(g1:getVisibleSkillList(true, head)) do
			if skill:getFrequency() == sgs.Skill_Limited and skill:getLimitMark() ~= "" and self.player:getMark(skill:getLimitMark()) == 0 and self.player:hasSkill(skill:objectName()) then
				ajust1 = ajust1 - 1
			end
		end
		--
		for _, name2 in ipairs(names) do
			local g2 = sgs.Sanguosha:getGeneral(name2)
			if not g2 or g1:getKingdom() ~= g2:getKingdom() or name1 == name2 then continue end
			local points = self:getHuashenPairValue(g1, g2)
			max_point = math.max(max_point, points)
			if max_point == points then pair = name1 .. "+" .. name2 end
		end
	end
	self.player:speak("结果是：" .. pair)
	return pair
end

function SmartAI:getHuashenPairValue(g1, g2)
	local player= self.player
	local current_value = 0
	for name, value in pairs(sgs.general_pair_value) do
		if g1:objectName() .. "+" .. g2:objectName() == name or g2:objectName() .. "+" .. g1:objectName() == name then
			current_value = value
			break
		end
	end
	local oringin_g1 = 3
	local oringin_g2 = 3
	for name, value in pairs(sgs.general_value) do
		if g1:objectName() == name then oringin_g1 = value end
		if g2:objectName() == name then oringin_g2 = value end
	end

	if current_value == 0 then
		local oringin_g1 = 3
		local oringin_g2 = 3
		for name, value in pairs(sgs.general_value) do
			if g1:objectName() == name then oringin_g1 = value end
			if g2:objectName() == name then oringin_g2 = value end
		end
		current_value = oringin_g1 + oringin_g2
	end

	local skills = {}
	for _, skill in sgs.qlist(g1:getVisibleSkillList(true, player:inHeadSkills("huashen"))) do
		table.insert(skills, skill:objectName())
		if skill:getFrequency() == sgs.Skill_Limited and skill:getLimitMark() ~= "" and player:getMark(skill:getLimitMark()) == 0 then
			current_value = current_value - 1
		end
	end
	for _, skill in sgs.qlist(g2:getVisibleSkillList(true, player:inHeadSkills("huashen"))) do
		table.insert(skills, skill:objectName())
		if skill:getFrequency() == sgs.Skill_Limited and skill:getLimitMark() ~= "" and player:getMark(skill:getLimitMark()) == 0 then
			current_value = current_value - 1
		end
	end

	if g1:isCompanionWith(g2:objectName()) and player:getMark("CompanionEffect") == 0 then
		current_value = current_value - 0.5
	end

	for _, skill in ipairs(skills) do
		if sgs.cardneed_skill:match(skill) then
			if player:getHandcardNum() < 3 then
				current_value = current_value - 0.4
			elseif player:getHandcardNum() < 5 then
				current_value = current_value + 0.5
			end
		end
		if sgs.masochism_skill:match(skill) then
			if player:getHp() < 2 then
				current_value = current_value - 0.3
			end
			for i = 1, player:getHp() - 3, 1 do
				current_value = current_value + 0.6
			end
			for i = 1, self:getCardsNum("Peach"), 1 do
				current_value = current_value + 0.15
			end
			for i = 1, self:getCardsNum("Analeptic"), 1 do
				current_value = current_value + 0.1
			end
		end
		if sgs.lose_equip_skill:match(skill) then
			if self:getCardsNum("EquipCard") < 2 then
				current_value = current_value - 0.3
			end
			for i = 1, self:getCardsNum("EquipCard"), 1 do
				current_value = current_value + 0.1
			end
			for _, p in sgs.qlist(self.room:getOtherPlayers(player)) do
				if self:isFriend(p) then
					if self:hasSkill("duoshi", p) then
						current_value = current_value + 0.4
					end
					if self:hasSkill("zhijian", p) then
						current_value = current_value + 0.3
					end
				end
			end
		end
		if skill == "jizhi" then
			for i = 1, self:getCardsNum("TrickCard"), 1 do
				current_value = current_value + 0.1
			end
		end
	end
	player:speak(g1:objectName() .. "+" .. g2:objectName() .. "的组合得分是：" .. current_value)
	return current_value
end

sgs.ai_skill_choice.xinsheng = function(self, choice, data)
	return sgs.ai_skill_choice["huashen"](self, choice, data)
end
]]--
--[[
local yigui_skill = {}
yigui_skill.name = "yigui"
table.insert(sgs.ai_skills, yigui_skill)
yigui_skill.getTurnUseCard = function(self,room,player,data)
	if self.player:property("Huashens"):toString():isEmpty() then return end
	-- huashens = zuoci->property("Huashens").toString().split("+");
	--[[ if (card->getSkillName(true) == "yigui" && to->hasShownOneGeneral()) {
            QString generalName = card->tag["YiguiGeneral"].toString();
            const General *general = Sanguosha->getGeneral(generalName);
            return (general && !general->getKingdoms().contains(to->getKingdom()));
			
	local cardsavailable = function(use_card)--策略优化？
		local targets = {}
		if use_card:isKindOf("AwaitExhausted") then
			for _, p in sgs.qlist(self.room:getAlivePlayers()) do
				if not self.player:isProhibited(p, use_card) and self.player:hasShownOneGeneral() and self.player:getRole() ~= "careerist" and
							p:getRole() ~= "careerist" and p:hasShownOneGeneral() and p:getKingdom() == self.player:getKingdom() then
						table.insert(targets, p)
				end
			end
		elseif use_card:getSubtype() == "global_effect" and not use_card:isKindOf("FightTogether") then
			for _, p in sgs.qlist(self.room:getAlivePlayers()) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		elseif use_card:getSubtype() == "aoe" and not use_card:isKindOf("BurningCamps") then
			for _, p in sgs.qlist(self.room:getOtherPlayers(self.player)) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		elseif use_card:isKindOf("BurningCamps") then
				players = self.player:getNextAlive():getFormation()
			for _, p in sgs.qlist(players) do
				if not self.player:isProhibited(p, use_card) then
					table.insert(targets, p)
				end
			end
		end
		return #targets <= handcardnum
	end
	
	local parsed_card = {}
	if cardsavailable(sgs.Card_Parse("amazing_grace:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("amazing_grace:yigui[no_suit:0]=" .. id .."&yigui"))		--五谷
	end
	if cardsavailable(sgs.Card_Parse("god_salvation:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("god_salvation:yigui[no_suit:0]=" .. id .."&yigui"))		--桃园
	end
	if cardsavailable(sgs.Card_Parse("burning_camps:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("burning_camps:yigui[no_suit:0]=" .. id .."&yigui"))		--火烧连营
	end
	if cardsavailable(sgs.Card_Parse("drowning:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("drowning:yigui[no_suit:0]=" .. id .."&yigui"))				--水淹七军
	end
	if cardsavailable(sgs.Card_Parse("threaten_emperor:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("threaten_emperor:yigui[no_suit:0]=" .. id .."&yigui"))		--挟天子以令诸侯
	end
	if cardsavailable(sgs.Card_Parse("await_exhausted:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("await_exhausted:yigui[no_suit:0]=" .. id .."&yigui"))			--以逸待劳
	end
	if cardsavailable(sgs.Card_Parse("befriend_attacking:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("befriend_attacking:yigui[no_suit:0]=" .. id .."&yigui"))		--远交近攻
	end
	if cardsavailable(sgs.Card_Parse("duel:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("duel:yigui[no_suit:0]=" .. id .."&yigui"))				--决斗
	end
	if cardsavailable(sgs.Card_Parse("dismantlement:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("dismantlement:yigui[no_suit:0]=" .. id .."&yigui"))		--过河拆桥
	end
	if cardsavailable(sgs.Card_Parse("snatch:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("snatch:yigui[no_suit:0]=" .. id .."&yigui"))				--顺手牵羊
	end
	if cardsavailable(sgs.Card_Parse("ex_nihilo:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("ex_nihilo:yigui[no_suit:0]=" .. id .."&yigui"))			--无中生有
	end
	if not preventdamage or not self:hasTrickEffective(sgs.Card_Parse("archery_attack:yigui[no_suit:0]=" .. id .."&yigui"), caocao)
		and cardsavailable(sgs.Card_Parse("archery_attack:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("archery_attack:yigui[no_suit:0]=" .. id .."&yigui"))	--万箭齐发
	end
	if not preventdamage or not self:hasTrickEffective(sgs.Card_Parse("savage_assault:yigui[no_suit:0]=" .. id .."&yigui"), caocao) and
		cardsavailable(sgs.Card_Parse("savage_assault:yigui[no_suit:0]=" .. id .."&yigui")) then
		table.insert(parsed_card, sgs.Card_Parse("savage_assault:yigui[no_suit:0]=" .. id .."&yigui"))	--南蛮
	end
	
	local value = 0
	local tcard
	for _, c in ipairs(parsed_card) do
		assert(c)
		if self:getUseValue(c) > value and self:getUseValue(c) > keepvalue and self:getUseValue(c) > usevalue and (usevalue < 6 or handcardnum == 1) then
			value = self:getUseValue(c)
			tcard = c
		end
	end
	if tcard then
		return tcard
	end
end
]]

sgs.ai_skill_invoke.jihun = true

--沙摩柯
sgs.ai_skill_invoke.jili = function(self, data)
	if not self:willShowForAttack() then return false end
	return true
end

--[[沙摩柯武器优先度调整]]--
function SmartAI:shamokeUseWeaponPriority(card)
	local class_name = card:getClassName()
	local v = self:getUsePriority(card)
	if self.player:hasSkill("jili") and not self.player:isKongcheng()
	and card:isKindOf("Weapon") and not card:isKindOf("Crossbow") then
		--global_room:writeToConsole("进入shamokeUseWeapon函数")
		local hcards = self.player:getHandcards()
		hcards = sgs.QList2Table(hcards)
		self:sortByUsePriority(hcards)
		local firstcard = hcards[1]
		--assert(self.player:getMark("jili"))--沙摩柯标记
		--global_room:writeToConsole("jilimark:")
		--global_room:writeToConsole(self.player:getMark("jili"))
		--assert(sgs.Sanguosha:correctAttackRange(self.player,true,false))--攻击距离修正技能
		--global_room:writeToConsole(sgs.Sanguosha:correctAttackRange(self.player,true,false))
		if self.player:getMark("jili") + 2 == sgs.weapon_range[class_name] + sgs.Sanguosha:correctAttackRange(self.player,true,false)
		and v ~= self:getUsePriority(firstcard) then--防止无限自增死循环，防止两把武器相同距离死循环
			if not (firstcard:isKindOf("Weapon") and sgs.weapon_range[class_name] == sgs.weapon_range[firstcard:getClassName()]) then
				v = self:getUsePriority(firstcard) + 0.1
				--global_room:writeToConsole("装备的优先度调整:")
				--global_room:writeToConsole(v)
			end
		end
	end
	return v
end

sgs.ai_cardneed.jili = sgs.ai_cardneed.weapon

--马谡
sgs.ai_skill_invoke.zhiman = function(self, data)
	local damage = self.player:getTag("zhiman_data"):toDamage()
	local target = damage.to
	local promo = self:findPlayerToDiscard("ej", false, sgs.Card_MethodGet, nil, true)
	if self:isFriend(damage.to) and (table.contains(promo, target) or not self:needToLoseHp(target, self.player)) then return true end
	if not self:isFriend(damage.to) and damage.damage > 1 and not target:hasArmorEffect("SilverLion") then return false end
	if table.contains(promo, target) then return true end
	if self:hasSkill(sgs.masochism_skill, target) and self.player:canGetCard(target, "e") then self.player:speak("因为防止卖血") return true end
	return false
end

sgs.ai_choicemade_filter.skillInvoke.zhiman = function(self, player, promptlist)
	local damage = self.room:getTag("CurrentDamageStruct"):toDamage()
	if damage.from and damage.to then
		if promptlist[#promptlist] == "yes" then
			if not damage.to:hasEquip() and damage.to:getJudgingArea():isEmpty() then
				sgs.updateIntention(damage.from, damage.to, -40)
			end
		elseif self:canAttack(damage.to) then
			sgs.updateIntention(damage.from, damage.to, 30)
		end
	end
end

sgs.ai_choicemade_filter.cardChosen.zhiman = function(self, player, promptlist)
	local intention = 10
	local id = promptlist[3]
	local card = sgs.Sanguosha:getCard(id)
	local target = findPlayerByObjectName(promptlist[5])
	if self:needToThrowArmor(target) and self.room:getCardPlace(id) == sgs.Player_PlaceEquip and card:isKindOf("Armor") then
		intention = -intention
	elseif self:doNotDiscard(target) then intention = -intention
	elseif self:hasSkill(sgs.lose_equip_skill, target) and not target:getEquips():isEmpty() and
		self.room:getCardPlace(id) == sgs.Player_PlaceEquip and card:isKindOf("EquipCard") then
			intention = -intention
	elseif self.room:getCardPlace(id) == sgs.Player_PlaceJudge then
		intention = -intention
	end
	sgs.updateIntention(player, target, intention)
end

local sanyao_skill = {}
sanyao_skill.name = "sanyao"
table.insert(sgs.ai_skills, sanyao_skill)
sanyao_skill.getTurnUseCard = function(self, room, player, data)
	if not self:willShowForAttack() then return end
	if self.player:hasUsed("SanyaoCard") then return end
	if self.player:isNude() then return end
	return sgs.Card_Parse("@SanyaoCard=.&sanyao")
end

sgs.ai_skill_use_func.SanyaoCard = function(card, use, self)
	local targets = sgs.SPlayerList()
	local maxhp = 0
    for _, p in sgs.qlist(self.room:getAlivePlayers()) do
		if maxhp < p:getHp() then maxhp = p:getHp() end
	end
    for _, p in sgs.qlist(self.room:getAlivePlayers()) do
		if p:getHp() == maxhp then
			targets:append(p)
		end
	end
	if self:isWeak() or not not self:needToLoseHp() then
		targets:removeOne(self.player)
	end
	local target = self:findPlayerToDiscard("ej", false, sgs.Card_MethodGet, targets)
	if not target then
		for _, p in sgs.qlist(targets) do
			if self:isEnemy(p) and self:isWeak(p) then target = p break end
		end
	end
	if not target then
		for _, p in sgs.qlist(targets) do
			if self:getDangerousCard(p) and self.player:canGetCard(p, self:getDangerousCard(p)) then
				target = p
				break
			end
		end
	end
	if not target then
		for _, p in sgs.qlist(targets) do
			if self:isEnemy(p) and not self:hasSkill(sgs.masochism_skill, p) and self:getOverflow() > 0 then target = p break end
		end
	end

	if self:needToThrowArmor() then
		use.card = sgs.Card_Parse("@SanyaoCard=" .. self.player:getArmor():getId() .. "&sanyao")
		if targets:length() == 0 then use.card = nil return end
		if use.to then
			if target then
				use.to:append(target)
			else
				use.to:append(targets:first())
			end
			return
		end
	else
		if not target then use.card = nil return end
		local cards = sgs.QList2Table(self.player:getCards("e"))
		for _, c in sgs.qlist(self.player:getHandcards()) do
			table.insert(cards, c)
		end
		self:sortByUseValue(cards)

		local card_id
		for _, c in ipairs(cards) do
			if c:isKindOf("Lightning") and not isCard("Peach", c, self.player) and not self:willUseLightning(c) then
				card_id = c:getEffectiveId()
				break
			end
		end

		if not card_id then
			for _, c in ipairs(cards) do
				if not isCard("Peach", c, self.player)
					and (c:isKindOf("AmazingGrace") or c:isKindOf("GodSalvation") and not self:willUseGodSalvation(c)) then
					card_id = c:getEffectiveId()
					break
				end
			end
		end
		if not card_id then
			for _, c in ipairs(cards) do
				if (not isCard("Peach", c, self.player) or self:getCardsNum("Peach") > 1)
					and (not isCard("Jink", c, self.player) or self:getCardsNum("Jink") > 1 or self:isWeak())
					and not (self.player:getWeapon() and self.player:getWeapon():getEffectiveId() == c:getEffectiveId())
					and not (self.player:getOffensiveHorse() and self.player:getOffensiveHorse():getEffectiveId() == c:getEffectiveId()) then
					card_id = c:getEffectiveId()
				end
			end
		end
		if card_id then
			use.card = sgs.Card_Parse("@SanyaoCard=" .. card_id .. "&sanyao")
			if use.to then
				if use.to:isEmpty() then use.to:append(target) return end
			end
		end
	end
end

--凌统
sgs.ai_skill_playerchosen.xuanlue = function(self, targets)
	if not self:willShowForAttack() then return nil end
	return self:findPlayerToDiscard()
end

sgs.ai_choicemade_filter.cardChosen.xuanlue = function(self, player, promptlist)
	local intention = 10
	local id = promptlist[3]
	local card = sgs.Sanguosha:getCard(id)
	local target = findPlayerByObjectName(promptlist[5])
	if self:needToThrowArmor(target) and self.room:getCardPlace(id) == sgs.Player_PlaceEquip and card:isKindOf("Armor") then
		intention = -intention
	elseif self:doNotDiscard(target) then intention = -intention
	elseif self:hasSkill(sgs.lose_equip_skill, target) and not target:getEquips():isEmpty() and
		self.room:getCardPlace(id) == sgs.Player_PlaceEquip and card:isKindOf("EquipCard") then
			intention = -intention
	elseif self:getOverflow(target) > 2 then intention = 0
	end
	sgs.updateIntention(player, target, intention)
end

sgs.ai_cardneed.xuanlue = sgs.ai_cardneed.weapon

--[[复制身份未修改
function SmartAI:moveField(player, flag, froms, tos)
	player = player or self.player
	froms = froms or self.room:getAlivePlayers()
	tos = tos or self.room:getAlivePlayers()
	flag = flag or "ej"
	--optional = optional or false
	
	if type(froms) == "table" then
		local players = sgs.SPlayerList()
		for _, p in ipairs(froms) do
			players:append(p)
		end
		froms = players
	end
	if type(tos) == "table" then
		local players = sgs.SPlayerList()
		for _, p in ipairs(tos) do
			players:append(p)
		end
		tos = players
	end
	
	local from_friends, from_enemies, to_friends, to_enemies = {}, {}, {}, {}
	for _, p in sgs.qlist(froms) do
		if self:isFriend(p) then
			table.insert(from_friends, p)
		else
			table.insert(from_enemies, p)
		end
	end
	for _, p in sgs.qlist(tos) do
		if self:isFriend(p) then
			table.insert(to_friends, p)
		else
			table.insert(to_enemies, p)
		end
	end
	
	local from_friends_noself = {}
	for _, p in ipairs(from_friends) do
		if p:objectName() == player:objectName() then continue end
		table.insert(from_friends_noself, p)
	end
	
	self:sort(from_enemies, "defense")
	self:sort(from_friends, "defense")
	self:sort(from_friends_noself, "defense")
	
	if flag:match("j") then
		for _, friend in ipairs(from_friends) do
			if not friend:getCards("j"):isEmpty() and not friend:containsTrick("YanxiaoCard") and card_for_qiaobian(self, friend, ".", flag, to_friends, to_enemies) then
				return friend, card_for_qiaobian(self, friend, "card", flag, to_friends, to_enemies), card_for_qiaobian(self, friend, "target", flag, to_friends, to_enemies)
			end
		end
		for _, enemy in ipairs(from_enemies) do
			if not enemy:getCards("j"):isEmpty() and enemy:containsTrick("YanxiaoCard") and card_for_qiaobian(self, enemy, ".", flag, to_friends, to_enemies) then
				return enemy, card_for_qiaobian(self, enemy, "card", flag, to_friends, to_enemies), card_for_qiaobian(self, enemy, "target", flag, to_friends, to_enemies)
			end
		end
	end
	
	if flag:match("e") then
		for _, friend in ipairs(from_friends_noself) do
			if not friend:getCards("e"):isEmpty() and self:hasSkills(sgs.lose_equip_skill, friend) and card_for_qiaobian(self, friend, ".", flag, to_friends, to_enemies) then
				return friend, card_for_qiaobian(self, friend, "card", flag, to_friends, to_enemies), card_for_qiaobian(self, friend, "target", flag, to_friends, to_enemies)
			end
		end
		local targets = {}
		for _, enemy in ipairs(self.enemies) do
			if not self:hasSkills(sgs.lose_equip_skill, enemy) and card_for_qiaobian(self, enemy, ".", flag, to_friends, to_enemies) then
				table.insert(targets, enemy)
			end
		end

		if #targets > 0 then
			self:sort(targets, "defense")
			return targets[1], card_for_qiaobian(self, targets[1], "card", flag, to_friends, to_enemies), card_for_qiaobian(self, targets[1], "target", flag, to_friends, to_enemies)
		end
	end
	return nil
end
--勇进
local yongjin_skill = {}
yongjin_skill.name = "yongjin"
table.insert(sgs.ai_skills, yongjin_skill)
yongjin_skill.getTurnUseCard = function(self)
	global_room:writeToConsole("进入函数勇进")
	if self.player:getMark("@yongjinMark") <= 0 then return end
	return sgs.Card_Parse("@yongjinCard=.")
end

sgs.ai_skill_use_func.yongjinCard = function(card, use, self)
	local from, card, to = self:moveField(nil, "e")
	if from and card and to then
		use.card = sgs.Card_Parse("@yongjinCard=.")
	end
end

sgs.ai_use_priority.yongjinCard = 50

sgs.ai_skill_playerchosen.yongjin_from = function(self, targets)
	local from, card, to = self:moveField(nil, "e")
		if from then return from
	end
end
sgs.ai_skill_cardchosen.yongjin = function(self, who, flags)
	local from, card, to = self:moveField(nil, "e")
	if card then return card end
end

sgs.ai_skill_playerchosen.yongjin_to = function(self, targets)
	local from, card, to = self:moveField(nil, "e")
		if to then return to
	end
end]]--

--吕范
--[[旧调度
local diaodu_skill = {}
diaodu_skill.name = "diaodu"
table.insert(sgs.ai_skills, diaodu_skill)
diaodu_skill.getTurnUseCard = function(self,room,player,data)
	if self.player:hasUsed("DiaoduCard") then return end
	if #self.friends_noself == 0 then return end
	return sgs.Card_Parse("@DiaoduCard=.&diaodu")
end

sgs.ai_skill_use_func.DiaoduCard = function(card, use, self)
	use.card = nil
	for _, card in sgs.qlist(self.player:getCards("h")) do
		if card:isKindOf("Weapon") and not self.player:getWeapon() then
			use.card = card
		end
		if card:isKindOf("Armor") and not self.player:getArmor() then
			use.card = card
		end
		if card:isKindOf("OffensiveHorse") and not self.player:getOffensiveHorse() then
			use.card = card
		end
		if card:isKindOf("DefensiveHorse") and not self.player:getDefensiveHorse() then
			use.card = card
		end
		if card:isKindOf("Treasure") and not self.player:getTreasure() then
			use.card = card
		end
		if use.card then return end
	end
	use.card = card
end

sgs.ai_skill_use["@@diaodu_equip"] = function(self, prompt)
	local id

	if self:needToThrowArmor() then
		for _, p in ipairs(self.friends_noself) do
			if self.player:isFriendWith(p) and not p:getArmor() then
				return ("@DiaoduequipCard=" .. self.player:getArmor():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
		end
	end
	for _, p in ipairs(self.friends_noself) do
		if not self.player:isFriendWith(p) then continue end
		for _, card in sgs.qlist(self.player:getCards("h")) do
			if card:isKindOf("Weapon") and self.player:getWeapon() then
				return "@DiaoduequipCard=" .. self.player:getWeapon():getEffectiveId() .. "&diaoduequip->" .. p:objectName()
			end
			if card:isKindOf("Armor") and self.player:getArmor() and not (self.player:getArmor():isKindOf("PeaceSpell") and self:isWeak()) then
				return "@DiaoduequipCard=" .. self.player:getArmor():getEffectiveId() .. "&diaoduequip->" .. p:objectName()
			end
			if card:isKindOf("OffensiveHorse") and self.player:getOffensiveHorse() then
				return "@DiaoduequipCard=" .. self.player:getOffensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName()
			end
			if card:isKindOf("DefensiveHorse") and self.player:getDefensiveHorse() then
				return "@DiaoduequipCard=" .. self.player:getDefensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName()
			end
			if card:isKindOf("Treasure") and self.player:getTreasure() and (not self.player:getArmor():isKindOf("WoodenOx") and self.player:getPile("wooden_ox"):length() > 1) then
				return "@DiaoduequipCard=" .. self.player:getTreasure():getEffectiveId() .. "&diaoduequip->" .. p:objectName()
			end
		end
	end
	if self.player:hasSkills(sgs.lose_equip_skill) then
		for _, card in sgs.qlist(self.player:getCards("e")) do
			for _, p in ipairs(self.friends_noself) do
				if not self.player:isFriendWith(p) then continue end
				if card:isKindOf("Armor") and not p:getArmor() and not(card:isKindOf("PeaceSpell") and self:isWeak()) then
					return ("@DiaoduequipCard=" .. self.player:getArmor():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
				end
				if card:isKindOf("OffensiveHorse") and not p:getOffensiveHorse() then
					return ("@DiaoduequipCard=" .. self.player:getOffensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
				end
				if card:isKindOf("DefensiveHorse") and not p:getDefensiveHorse() then
					return ("@DiaoduequipCard=" .. self.player:getDefensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
				end
				if card:isKindOf("Treasure") and not p:getTreasure() and (not self.player:getArmor():isKindOf("WoodenOx") and self.player:getPile("wooden_ox"):length() > 1) then
					return ("@DiaoduequipCard=" .. self.player:getTreasure():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
				end
				if card:isKindOf("Weapon") and not p:getWeapon() then
					return ("@DiaoduequipCard=" .. self.player:getWeapon():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
				end
			end
		end
	end
	for _, card in sgs.qlist(self.player:getCards("e")) do
		for _, p in ipairs(self.friends_noself) do
			if not self.player:isFriendWith(p) or not self:hasSkill(sgs.need_equip_skill .. "|" .. sgs.lose_equip_skill, p) then continue end
			if card:isKindOf("Armor") and not p:getArmor() and not(card:isKindOf("PeaceSpell") and self:isWeak()) then
				return ("@DiaoduequipCard=" .. self.player:getArmor():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
			if card:isKindOf("OffensiveHorse") and not p:getOffensiveHorse() then
				return ("@DiaoduequipCard=" .. self.player:getOffensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
			if card:isKindOf("DefensiveHorse") and not p:getDefensiveHorse() then
				return ("@DiaoduequipCard=" .. self.player:getDefensiveHorse():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
			if card:isKindOf("Treasure") and not p:getTreasure() and (not self.player:getArmor():isKindOf("WoodenOx") and self.player:getPile("wooden_ox"):length() > 1) then
				return ("@DiaoduequipCard=" .. self.player:getTreasure():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
			if card:isKindOf("Weapon") and not p:getWeapon() then
				return ("@DiaoduequipCard=" .. self.player:getWeapon():getEffectiveId() .. "&diaoduequip->" .. p:objectName())
			end
		end
	end

	for _, card in sgs.qlist(self.player:getCards("h")) do
		if card:isKindOf("EquipCard") then
			local dummy_use = {isDummy = true}
			self:useEquipCard(card, dummy_use)
			if dummy_use.card and dummy_use.card:getEffectiveId() == card:getEffectiveId() then
				return card:toString()
			end
		end
	end
	return "."
end
]]--
sgs.ai_skill_invoke.diaodu = function(self, data)
	--if not self:willShowForAttack() then return false end
	return true
end

sgs.ai_skill_playerchosen.diaodu = function(self, targets)
	for _,p in sgs.qlist(targets) do
		if self:needToThrowArmor(p) then--还可以细化条件，装备转移？
			return p
		end
	end
	for _,p in sgs.qlist(targets) do
		if p:hasSkills(sgs.lose_equip_skill) then
			return p
		end
	end
	return self.player
end

sgs.ai_skill_playerchosen["diaodu_give"] = function(self, targets)
	return {}--空返回代表取消？怎样才能给自己
	--return self.player--还可以细化条件
end

--默认的可以了? 
sgs.ai_skill_cardchosen.diaodu = function(self, who, flags)
	return self:askForCardChosen(who, flags, "dummyreason", sgs.Card_MethodDiscard)
end

sgs.ai_skill_choice["diaodu"] = function(self, choices, data)
	return "yes"
end

sgs.ai_skill_invoke.diancai = function(self, data)
	if not self:willShowForDefence() then return false end
	return true
end

--君孙权
local lianzi_skill = {}
lianzi_skill.name = "lianzi"
table.insert(sgs.ai_skills, lianzi_skill)
lianzi_skill.getTurnUseCard = function(self)
	if self.player:hasUsed("LianziCard") or self.player:isKongcheng() then return end
	local num = self.player:getPile("flame_map"):length()
	for _, p in sgs.qlist(self.room:getAlivePlayers()) do
		if p:hasShownOneGeneral() and p:getKingdom() == "wu" and p:getRole() ~= "careerist" then
			num = num + p:getEquips():length()
		end
	end
	if num >= 3 then
		local hcards = sgs.QList2Table(self.player:getHandcards())
		self:sortByUseValue(hcards)
		return sgs.Card_Parse("@LianziCard=" .. hcards[1]:getEffectiveId() .. "&lianzi")
	end
end

sgs.ai_skill_use_func.LianziCard = function(card, use, self)
	use.card = card
end

sgs.ai_skill_invoke.jubao = function(self, data)
	return true
end

--sgs.ai_skill_cardchosen.jubao = sgs.ai_skill_cardchosen.jianchu

--缺聚宝选装备？直接用鞬出。ai默认是顺拆的策略

--缘江烽火图【缘江】
flamemap_skill = {}
flamemap_skill.name = "flamemap"
table.insert(sgs.ai_skills, flamemap_skill)
flamemap_skill.getTurnUseCard = function(self)
	local cards = {}
	for _, c in sgs.qlist(self.player:getCards("he")) do
		if c:isKindOf("EquipCard") then table.insert(cards, c) end
	end
	if #cards == 0 then return end
	if not self.player:hasUsed("FlameMapCard") then
		return sgs.Card_Parse("@FlameMapCard=.&showforviewhas")
	end
end

sgs.ai_skill_use_func.FlameMapCard = function(card,use,self)
	local sunquan = self.room:getLord(self.player:getKingdom())
	if not sunquan or not sunquan:hasLordSkill("jiahe") then return end
	local full = (sunquan:getPile("flame_map"):length() >= 5)
	sgs.ai_use_priority.FlameMapCard = 0
	if self.player:hasSkills(sgs.lose_equip_skill) then
		for _, card in sgs.qlist(self.player:getCards("h")) do
			if card:isKindOf("EquipCard") then return end
		end
		if self:needToThrowArmor() then
			--self.player:speak("有返回：" .. self.player:getArmor():getLogName())
			use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getArmor():getEffectiveId() .. "&showforviewhas")
			return
		end
		if self.player:getOffensiveHorse() then
			--self.player:speak("有返回：" .. self.player:getOffensiveHorse():getLogName())
			use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getOffensiveHorse():getEffectiveId() .. "&showforviewhas")
			return
		end
		if self.player:getWeapon() then
			--self.player:speak("有返回：" .. self.player:getWeapon():getLogName())
			use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getWeapon():getEffectiveId() .. "&showforviewhas")
			return
		end
		if self.player:getArmor() and not(self.player:getArmor():isKindOf("PeaceSpell") and self:isWeak()) then
			--self.player:speak("有返回：" .. self.player:getArmor():getLogName())
			use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getArmor():getEffectiveId() .. "&showforviewhas")
			return
		end
		if self.player:getDefensiveHorse() then
			--self.player:speak("有返回：" .. self.player:getDefensiveHorse():getLogName())
			use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getDefensiveHorse():getEffectiveId() .. "&showforviewhas")
			return
		end
	else
		if self.player:hasEquip() then
			if self:needToThrowArmor() then
				sgs.ai_use_priority.FlameMapCard = 9
				--self.player:speak("有返回：" .. self.player:getArmor():getLogName())
				use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getArmor():getEffectiveId() .. "&showforviewhas")
				return
			end
			if self.player:getArmor() and self:evaluateArmor(self.player:getArmor(), who) < -5 then
				sgs.ai_use_priority.FlameMapCard = 9
				--self.player:speak("有返回：" .. self.player:getArmor():getLogName())
				use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getArmor():getEffectiveId() .. "&showforviewhas")
				return
			end
		end
		for _, card in sgs.qlist(self.player:getCards("h")) do
			if card:isKindOf("EquipCard") then
				local dummy_use = {isDummy = true}
				self:useEquipCard(card, dummy_use)
				if not dummy_use.card then
					if self.room:getCardPlace(card:getEffectiveId()) == sgs.Player_PlaceHand then
						sgs.ai_use_priority.FlameMapCard = 9
						--self.player:speak("有返回：" .. card:getLogName())
						use.card = sgs.Card_Parse("@FlameMapCard=" .. card:getEffectiveId() .. "&showforviewhas")
						return
					end
				else
					if dummy_use.card:isKindOf("EquipCard") and self:getSameEquip(card) then
						sgs.ai_use_priority.FlameMapCard = 9
						--self.player:speak("有返回：" .. self:getSameEquip(card):getLogName())
						use.card = sgs.Card_Parse("@FlameMapCard=" .. self:getSameEquip(card):getEffectiveId() .. "&showforviewhas")
						return
					end
				end
			end
		end
		if self.player:hasEquip() and not full then
			if self.player:getOffensiveHorse() then
				--self.player:speak("有返回：" .. self.player:getOffensiveHorse():getLogName())
				use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getOffensiveHorse():getEffectiveId() .. "&showforviewhas")
				return
			end
			if self.player:getWeapon() then
				--self.player:speak("有返回：" .. self.player:getWeapon():getLogName())
				use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getWeapon():getEffectiveId() .. "&showforviewhas")
				return
			end
			if not self:isWeak() then
				if self.player:getArmor() then
					--self.player:speak("有返回：" .. self.player:getArmor():getLogName())
					use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getArmor():getEffectiveId() .. "&showforviewhas")
					return
				end
				if self.player:getDefensiveHorse() then
					--self.player:speak("有返回：" .. self.player:getDefensiveHorse():getLogName())
					use.card = sgs.Card_Parse("@FlameMapCard=" .. self.player:getDefensiveHorse():getEffectiveId() .. "&showforviewhas")
					return
				end
			end
		end
	end
end
sgs.ai_use_value.FlameMapCard = 10

--缘江烽火图【宏图】
sgs.ai_skill_choice.flamemap = function(self, choices)
	--英姿、好施、涉猎、度势
	--初步策略：手牌十分充裕选度势，其次优先级：好施，涉猎，英姿，如果能选择两项则必选度势（0张手牌，没额外摸牌技选好施+英姿）
	--界限突破英姿变为锁定技并获得手牌上限效果，损失血量过大或有其他摸牌技能，优先考虑英姿
	
	choices = choices:split("+")
	local sunquan = self.room:getLord(self.player:getKingdom())
	local n = sunquan:getPile("flame_map"):length()

	if self.player:hasSkill("duoshi") or
	(self.player:getHandcardNum() == 0 and not (self.player:hasSkills("yingzi_zhouyu|yingzi_sunce|haoshi") or self.player:hasTreasure("JadeSeal")))then
		table.removeOne(choices, "duoshi_flamemap")--双度势应该不需要，0张手牌，没额外摸牌技移除度势
	end

	if self.player:hasSkill("haoshi") and table.contains(choices, "haoshi_flamemap") then
		if sgs.ai_skill_invoke.haoshi(self) and self.haoshi_target then
			return "haoshi_flamemap"--有目标时双好施
		else
			table.removeOne(choices, "haoshi_flamemap")--复杂情况不考虑
		end
	end
	
	if n > 4 and table.contains(choices, "duoshi_flamemap") then
		return "duoshi_flamemap"--能选择两项则必选度势
	end

	if n > 4 and table.contains(choices, "haoshi_flamemap") and
	self.player:getHandcardNum() > 3 and sgs.ai_skill_invoke.haoshi_flamemap(self) then--手牌大于3时触发好施必定有队友
		return "haoshi_flamemap"--手牌充裕时好施给队友+度势
	end	

	if table.contains(choices, "yingzi_flamemap") and table.contains(choices, "haoshi_flamemap")  then
		if self.player:hasSkills("yingzi_zhouyu|yingzi_sunce") --已有英姿且能好施，0手牌或有目标
		and sgs.ai_skill_invoke.haoshi_flamemap(self) then
			return "haoshi_flamemap"
		end
		if self.player:getLostHp() < 2 and self.player:hasTreasure("JadeSeal")--血量健康有玉玺且能好施
		and sgs.ai_skill_invoke.haoshi_flamemap(self) then
			return "haoshi_flamemap"
		end
		if (self.player:getLostHp() > 1 and not self.player:hasSkill("keji"))--损失血量过大
		or self.player:hasSkills("yingzi_zhouyu|yingzi_sunce")--已有英姿，不适合好施
		or self.player:hasTreasure("JadeSeal") then--已有玉玺，不适合好施
			return "yingzi_flamemap"
		end
	end

	if table.contains(choices, "haoshi_flamemap") and sgs.ai_skill_invoke.haoshi_flamemap(self) then
		return "haoshi_flamemap"
	end

	if table.contains(choices, "shelie") and sgs.ai_skill_invoke.shelie(self) then
		return "shelie"
	end

	if table.contains(choices, "yingzi_flamemap") then
		return "yingzi_flamemap"
	end

	if table.contains(choices, "duoshi_flamemap") then
		return "duoshi_flamemap"
	end
end

--缘江烽火图【烽火】：藏专属装备坑下其他君主，有sb把定澜夜明珠放到烽火里面的话赶紧放出来
sgs.ai_skill_use["@@flamemap"] = function(self, prompt)
	local pilecards = self.player:getPile("flame_map")
	
	for _, id in sgs.qlist(pilecards) do
		local card = sgs.Sanguosha:getCard(id)
		if card:isKindOf("LuminousPearl") then
			return "@FlameMapCard=" .. id .. "&showforviewhas"
		elseif card:isKindOf("DragonPhoenix") then
			local lord = self.room:getLord("shu")
			if lord and self:isEnemy(lord) then
				continue
			end
		elseif card:isKindOf("PeaceSpell") then
			local lord = self.room:getLord("qun")
			if lord and self:isEnemy(lord) then
				continue
			end
		elseif card:isKindOf("SixDragon") then
			local lord = self.room:getLord("wei")
			if lord and self:isEnemy(lord) then
				continue
			end
		end
		return "@FlameMapCard=" .. id .. "&showforviewhas"
	end
	return "@FlameMapCard=" .. pilecards:first() .. "&showforviewhas"
end

sgs.ai_skill_invoke.yingzi_flamemap = function(self, data)
	--[[
	if not self:willShowForAttack() and not self:willShowForDefence() then
		return false
	end
	if self.player:hasFlag("haoshi") then
		local invoke = self.player:getTag("haoshi_yingzi_flamemap"):toBool()
		self.player:removeTag("haoshi_yingzi_flamemap")
		if not invoke then return false end
		local extra = self.player:getMark("haoshi_num")
		if self.player:hasShownOneGeneral() and not self.player:hasShownSkill("yingzi_flamemap") and self.player:getMark("HalfMaxHpLeft") > 0 then
			extra = extra + 1
		end
		if self.player:hasShownOneGeneral() and not self.player:isWounded()	and not self.player:hasShownSkill("yingzi_flamemap") and player:getMark("CompanionEffect") > 0 then
			extra = extra + 2
		end
		if self.player:getHandcardNum() + extra <= 1 or self.haoshi_target then
			self.player:setMark("haoshi_num", extra)
			return true
		end
		return false
	end
	]]--现在是锁定技了
	return true
end


--好施，复杂情况不考虑双好施
sgs.ai_skill_invoke.haoshi_flamemap = sgs.ai_skill_invoke.haoshi
--[[
sgs.ai_skill_invoke.haoshi_flamemap = function(self, data)
	if self.player:hasSkills("haoshi") then
		if sgs.ai_skill_invoke.haoshi(self) and self.haoshi_target then
			return true--双好施且有目标
		else
			return false--双好施一个不发动
		end
	end
	return sgs.ai_skill_invoke.haoshi(self)
end
]]--


--涉猎
sgs.ai_skill_invoke.shelie = function(self, data)
	if self.player:hasSkills("haoshi|haoshi_flamemap") and self.player:getHandcardNum() < 2 then return false end
	local extra = 0
	if self.player:hasTreasure("JadeSeal") then
		extra = extra+1
	end
	if self.player:hasSkill("yingzi_zhouyu") then
		extra = extra+1
	end
	if self.player:hasSkill("yingzi_sunce") then
		extra = extra+1
	end
	if self.player:hasSkill("yingzi_flamemap") then
		extra = extra+1
	end
	if extra > 1 then return false end
	return true
end

sgs.ai_skill_movecards.shelie = function(self, upcards, downcards, min_num, max_num)
	local upcards_copy, enableds, down = table.copyFrom(upcards), table.copyFrom(upcards), {}
	while #enableds ~= 0 do
		local card = self:askForAG(enableds, false, "shelie")
		for _, card_id in ipairs(upcards_copy) do
		    if sgs.Sanguosha:getCard(card_id):getSuit() == sgs.Sanguosha:getCard(card):getSuit() then
			    table.removeOne(enableds, card_id)
			end
		end
		table.removeOne(upcards_copy, card)
		table.insert(down, card)
	end
	return upcards_copy, down
end

--度势
local duoshi_flamemap_skill = {}
duoshi_flamemap_skill.name = "duoshi_flamemap"
table.insert(sgs.ai_skills, duoshi_flamemap_skill)
duoshi_flamemap_skill.getTurnUseCard = function(self, inclusive)
	local DuoTime = 1
	if self.player:hasSkills("hongyan|yingzi_zhouyu|yingzi_sunce|yingzi_flamemap|haoshi|haoshi_flamemap") then
		DuoTime = 2
	end
	for _, player in ipairs(self.friends) do
		if player:hasShownSkills("xiaoji|xuanlue|diaodu") then
			DuoTime = 2
			break
		end
	end
	if self.player:hasSkills("xiaoji|xuanlue|diaodu") then
		DuoTime = 2
		for _,card in sgs.qlist(self.player:getCards("he")) do
			if card:isKindOf("EquipCard") then
				DuoTime = DuoTime + 1
			end
		  end
	end
	if self.player:getHandcardNum() > 4 then
		DuoTime = DuoTime + 1
	end

	if self.player:usedTimes("ViewAsSkill_duoshi_flamemapCard") >= DuoTime or self:getOverflow() < 0 then return end
	if self.player:usedTimes("ViewAsSkill_duoshi_flamemapCard") >= 4 then return end
	
	if sgs.turncount <= 1 and #self.friends_noself == 0 and not self:isWeak() and self:getOverflow() <= 0 then return end
	local cards = self.player:getCards("h")
	cards = sgs.QList2Table(cards)
	self:sortByUseValue(cards)
	for _, card in ipairs(cards) do
		if self:getUseValue(card) >= 4.5 and card:isAvailable(self.player) then
			local dummy_use = {isDummy = true}
			if not card:targetFixed() then dummy_use.to = sgs.SPlayerList() end
			if card:isKindOf("EquipCard") then
				self:useEquipCard(card, dummy_use)
			else
				self:useCardByClassName(card, dummy_use)
			end
			if dummy_use.card and self:getUsePriority(card) >= 2.8 then
				return
			end
		end
	end

	if (self:hasCrossbowEffect() or self:getCardsNum("Crossbow") > 0) and self:getCardsNum("Slash") > 0 then
		self:sort(self.enemies, "defense")
		for _, enemy in ipairs(self.enemies) do
			local inAttackRange = self.player:distanceTo(enemy) == 1 or self.player:distanceTo(enemy) == 2 and self:getCardsNum("OffensiveHorse") > 0 and not self.player:getOffensiveHorse()
			if inAttackRange  and sgs.isGoodTarget(enemy, self.enemies, self) then
				local slashes = self:getCards("Slash")
				local slash_count = 0
				for _, slash in ipairs(slashes) do
					if not self:slashProhibit(slash, enemy) and self:slashIsEffective(slash, enemy) then
						slash_count = slash_count + 1
					end
				end
				if slash_count >= enemy:getHp() then return end
			end
		end
	end

	local red_card
	if self.player:getHandcardNum() <= 1 then return end
	self:sortByUseValue(cards, true)

	for _, card in ipairs(cards) do
		if card:isRed() then
			local shouldUse = true
			if card:isKindOf("Slash") then
				local dummy_use = { isDummy = true }
				if self:getCardsNum("Slash") == 1 then
					self:useBasicCard(card, dummy_use)
					if dummy_use.card then shouldUse = false end
				end
			end

			if self:getUseValue(card) > sgs.ai_use_value.AwaitExhausted and card:isKindOf("TrickCard") then
				local dummy_use = { isDummy = true }
				self:useTrickCard(card, dummy_use)
				if dummy_use.card then shouldUse = false end
			end

			local sunshangxiang = false
			if self.player:hasSkill("xiaoji") and self.player:getCards("e"):length() > 0 then
				sunshangxiang = true
			end
			for _, player in ipairs(self.friends) do
				if player:hasShownSkill("xiaoji") and player:getCards("e"):length() > 0 then
					sunshangxiang = true
					break
				end
			end

			if shouldUse and not card:isKindOf("Peach") then
				red_card = card
				break
			end

		end
	end

	if red_card then
		local card_id = red_card:getEffectiveId()
		local card_str = string.format("await_exhausted:duoshi_flamemap[%s:%d]=%d&duoshi_flamemap",red_card:getSuitString(), red_card:getNumber(), red_card:getEffectiveId())
		local await = sgs.Card_Parse(card_str)
		assert(await)
		return await
	end
end


--夜明珠
local LuminousPearl_skill = {}
LuminousPearl_skill.name = "LuminousPearl"
table.insert(sgs.ai_skills, LuminousPearl_skill)
LuminousPearl_skill.getTurnUseCard = function(self)
	if not self.player:hasUsed("ZhihengCard") and not self.player:hasShownSkill("zhiheng") and self.player:hasTreasure("LuminousPearl") then
		return sgs.Card_Parse("@ZhihengCard=.")
	end
end

sgs.ai_use_priority.LuminousPearl = 7
sgs.ai_keep_value.LuminousPearl = 4.3


--变更武将相关
--[[
QString general_name = askForGeneral(player, to_select.join("+"), QString(), true, "transform");

QString Room::askForGeneral(ServerPlayer *player, const QString &generals, const QString &default_choice, bool single_result, const QString &skill_name, const QVariant &data, bool can_convert)
{
    return askForGeneral(player, generals.split("+"), default_choice, single_result, skill_name, data, can_convert); // For Lua only!!!
}

QString Room::askForGeneral(ServerPlayer *player, const QStringList &generals, const QString &_default_choice, bool single_result, const QString &skill_name, const QVariant &data, bool can_convert, bool same_kingdom)
QStringList general = ai->askForChoice(skill_name, generals.join("+"), data).split("+");

transform_技能名
]]--

function SmartAI:getGeneralValue(player, position)
	local general
	if position then
		general = player:getGeneral()
	else
		general = player:getGeneral2()
	end
	if general:objectName() == "anjiang" then
		if self.player:objectName() ~= player:objectName() then return 3 end
	else
		if position then
			general = player:getActualGeneral1()
		else
			general = player:getActualGeneral2()
		end
	end
	local ajust = 0
	for _, skill in sgs.qlist(general:getVisibleSkillList(true, position)) do
		if skill:getFrequency() == sgs.Skill_Limited and skill:getLimitMark() ~= "" and player:getMark(skill:getLimitMark()) == 0 then
            ajust = ajust - 1
		end
	end
	for name, value in pairs(sgs.general_value) do
		if general:objectName() == name then
			return value + ajust
		end
	end
	return 3
end

function SmartAI:needToTransform()
	local g1 = self.player:getActualGeneral1()
	local g2 = self.player:getActualGeneral2()
	local current_value = 0
	for name, value in pairs(sgs.general_pair_value) do
		if g1:objectName() .. "+" .. g2:objectName() == name or g2:objectName() .. "+" .. g1:objectName() == name then
			current_value = value
			break
		end
	end
	local oringin_g1 = 3
	local oringin_g2 = 3
	for name, value in pairs(sgs.general_value) do
		if g1:objectName() == name then oringin_g1 = value end
		if g2:objectName() == name then oringin_g2 = value end
	end
	if current_value == 0 then current_value = oringin_g1 + oringin_g2 end
	local g2_v = current_value - (oringin_g2 - self:getGeneralValue(self.player, false)) - oringin_g1
	return g2_v < 3
end

sgs.ai_skill_invoke.transform = function(self, data)
	return self:needToTransform()
end

sgs.ai_skill_choice.transform = function(self, generals)
	generals = generals:split("+")
	local g1 = self.player:getActualGeneral1()
	return generals[#generals]
end