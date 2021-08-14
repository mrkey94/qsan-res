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

sgs.ai_chat = {}

function speak(to, type)
	if not sgs.GetConfig("AIChat", false) then return end
	if to:getState() ~= "robot" then return end
	if sgs.GetConfig("OriginAIDelay", 0) == 0 then return end

	if table.contains(sgs.ai_chat, type) then
		local i = math.random(1, #sgs.ai_chat[type])
		to:speak(sgs.ai_chat[type][i])
	end
end

function speakTrigger(card, from, to, event)
	if sgs.GetConfig("OriginAIDelay", 0) == 0 then return end
	if type(to) == "table" then
		for _, t in ipairs(to) do
			speakTrigger(card, from, t, event)
		end
		return
	end

	if (event == "death") and from:hasShownSkill("ganglie") then
		speak(from, "ganglie_death")
	end

	if not card then return end

	if card:isKindOf("Indulgence") and (to:getHandcardNum() > to:getHp()) then
		speak(to, "indulgence")
	elseif card:isKindOf("LeijiCard") then
		speak(from, "leiji_jink")
	elseif card:isKindOf("QuhuCard") then
		speak(from, "quhu")
	elseif card:isKindOf("Slash") and to:hasShownSkill("yiji") and (to:getHp() <= 1) then
		speak(to, "guojia_weak")
	elseif card:isKindOf("SavageAssault") and (to:hasShownSkill("kongcheng") or to:hasShownSkill("huoji")) then
		speak(to, "daxiang")
	elseif card:isKindOf("FireAttack") and to:hasShownSkill("luanji") then
		speak(to, "yuanshao_fire")
	elseif card:isKindOf("Peach") and math.random() < 0.1 then
		speak(to, "usepeach")
	end
end

sgs.ai_chat_func[sgs.SlashEffected].blindness = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local effect = data:toSlashEffect()
	if not effect.from then return end

	local chat = {""
				}

	if self:hasCrossbowEffect(effect.from) then
		table.insert(chat, "")
	end

	if effect.from:getMark("drank") > 0 then
		table.insert(chat, "")
	end

	if sgs.isAnjiang(effect.to) then
		table.insert(chat, "")
		if not sgs.isAnjiang(effect.from) and effect.from:getRole() ~= "careerist" then
			table.insert(chat, "" .. sgs.Sanguosha:translate(effect.from:getKingdom()))
		end
	end

	local index = 1 + (os.time() % #chat)

	if os.time() % 10 <= 3 and not effect.to:isLord() and math.random() < 0.9 then
		effect.to:speak(chat[index])
	end
end

sgs.ai_chat_func[sgs.Death].stupid_friend = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local damage = data:toDeath().damage
	local chat = {""
				}
	if damage and damage.from and player:isFriendWith(damage.from) and damage.to:objectName() == player:objectName() and ((not damage.card) or (damage.card:getSkillName() ~= "lijian")) then
		local index = 1 + (os.time() % #chat)
		damage.to:speak(chat[index])
	end
end
--[[
sgs.ai_chat_func[sgs.Dying].fuck_renegade = function(self, player, data)
	local dying = data:toDying()
	local chat = {"小内，你还不跳啊，要崩盘吧",
				"9啊，不9就输了",
				"999...999...",
				"小内，我死了，你也赢不了",
				"没戏了，小内不帮忙的话，我们全部托管吧",
				}
	if (self.role=="rebel" or self.role == "loyalist") and sgs.current_mode_players["renegade"] > 0 and dying.who:objectName() == player:objectName() then
		local index = 1 + (os.time() % #chat)
		player:speak(chat[index])
	end
end
]]
sgs.ai_chat_func[sgs.EventPhaseStart].ally = function(self, player, data)
	if player:getState() ~= "robot" then return end
	if player:getPhase() == sgs.Player_Play then
		local gameProcess = sgs.gameProcess()
		if string.find(gameProcess, ">>>") then
			local kingdom = gameProcess:split(">")[1]
			if player:getKingdom() == kingdom then return end
			kingdom = sgs.Sanguosha:translate(kingdom)
			local chat = {
				" " .. kingdom .. ""
			}
			if os.time() % 10 < 1 then
				player:speak(chat[math.random(1, #chat)])
			end
		end
	end
end

sgs.ai_chat_func[sgs.EventPhaseStart].comeon = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local chat = {""
				}
	if player:getPhase() == sgs.Player_Finish and not player:isKongcheng() and player:hasShownSkill("leiji") and os.time() % 10 < 4 then
		local index = 1 + (os.time() % #chat)
		player:speak(chat[index])
	end
end

sgs.ai_chat_func[sgs.EventPhaseStart].beset = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local chat = {
		""
	}
	if #self.enemies == 1 and player:getPhase() == sgs.Player_Start and self:getKingdomCount() == 2 and player:getPlayerNumWithSameKingdom("AI") >= 3
		and self.enemies[1]:getPlayerNumWithSameKingdom("AI") == 1 and os.time() % 10 < 4 then
		local index = 1 + (os.time() % #chat)
		player:speak(chat[index])
	end
end

sgs.ai_chat_func[sgs.CardUsed].qinshouzhang = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local use = data:toCardUse()
	if use.card:isKindOf("Blade") and use.from and use.from:objectName() == player:objectName() then
		if player:screenName() == "" then
			player:speak("")
		else
			for _, p in ipairs(sgs.robot) do
				if p:screenName() == "SB-禽受装逼佬张" then
					p:speak("")
				end
			end
		end
	end
end

sgs.ai_chat_func[sgs.CardFinished].yaoseng = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local use = data:toCardUse()
	if use.card:isKindOf("OffensiveHorse") and use.from:objectName() == player:objectName() then
		for _, p in sgs.qlist(self.room:getOtherPlayers(player)) do
			if self:isEnemy(player, p) and player:distanceTo(p) == 1 and player:distanceTo(p, 1) == 2 and math.random() < 0.2 then
				player:speak(" " .. p:screenName() .. " ")
				return
			end
		end
	end
end

sgs.ai_chat_func[sgs.TargetConfirmed].gounannv = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local use = data:toCardUse()
	if use.card:isKindOf("Peach") and not use.to:isEmpty() then
		local to = use.to:first()
		if to:objectName() ~= use.from:objectName() and use.from:isFemale() and to:isMale() and math.random() < 0.1
			and to:getState() == "robot" and use.from:getState() == "robot" then
			use.from:speak("")
			to:speak("")
		end
	end
end

sgs.ai_chat_func[sgs.CardFinished].analeptic = function(self, player, data)
	local use = data:toCardUse()
	if use.card and use.card:isKindOf("Analeptic") and use.card:getSkillName() ~= "zhendu" and not use.to:isEmpty() then
		local to = use.to:first()
		if to:getMark("drank") == 0 then return end
		local suit = { "spade", "heart", "club", "diamond" }
		suit = suit[math.random(1, #suit)]
		local chat = {
			"",
			"",
			"",
			"" .. "<b><font color = 'yellow'>" .. sgs.Sanguosha:translate("jink")
				.. string.format("[<img src='image/system/log/%s.png' height = 12/>", suit) .. math.random(1, 10) .. "] </font></b>",
			""
		}
		for _, p in ipairs(sgs.robot) do
			if p:objectName() ~= to:objectName() and not p:isFriendWith(to) and math.random() < 0.2 then
				if not p:isWounded() then
					table.insert(chat, "")
				end
				p:speak(chat[math.random(1, #chat)])
				return
			end
		end
	end
end


sgs.ai_chat_func[sgs.EventPhaseStart]["ai_chat_scenario"] = function(self, player, data)
	if player:getPhase() ~= sgs.Player_Start then end
	if sgs.ai_chat_scenario then return end
	sgs.ai_chat_scenario = true
	for _, p in ipairs(sgs.robot) do
		if math.random() < 0.05 then
			if p:hasSkill("luanji") then sgs.ai_yuanshao_ArcheryAttack = {} end
		end
	end
	for _, p in ipairs(sgs.robot) do
		if player:objectName() ~= self.room:getCurrent():objectName() and math.random() < 0.1 then
			local chat = {
				"",
			}
			player:speak(chat[math.random(1, #chat)])
			return
		end
	end
end

sgs.ai_chat_func[sgs.TargetConfirmed].UnlimitedBladeWorks = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local use = data:toCardUse()
	if use.card:isKindOf("ArcheryAttack") and player:hasSkill("luanji") and use.from and use.from:objectName() == player:objectName() and sgs.ai_yuanshao_ArcheryAttack then
		if #sgs.ai_yuanshao_ArcheryAttack == 0 then
			sgs.ai_yuanshao_ArcheryAttack = {
				""
			}
		end
		player:speak(sgs.ai_yuanshao_ArcheryAttack[1])
		table.remove(sgs.ai_yuanshao_ArcheryAttack, 1)
	end
end

sgs.ai_chat_func[sgs.TargetConfirmed].imperial_order = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local use = data:toCardUse()
	if use.card:isKindOf("ImperialOrder") and use.from and use.from:objectName() == player:objectName() then
			local chat = {
				"",
			}
			if player:hasSkills("xiongyi|luanwu") then
				table.insert(chat, "")
			end
			if player:getKingdom() == "wei" then
				table.insert(chat, "")
			end
			player:speak(chat[math.random(1, #chat)])
	end
end

function SmartAI:speak(cardtype, isFemale)
	if not sgs.GetConfig("AIChat", false) then return end
	if self.player:getState() ~= "robot" then return end
	if sgs.GetConfig("OriginAIDelay", 0) == 0 then return end

	if sgs.ai_chat[cardtype] then
		if type(sgs.ai_chat[cardtype]) == "function" then
			sgs.ai_chat[cardtype](self)
		elseif type(sgs.ai_chat[cardtype]) == "table" then
			if isFemale and sgs.ai_chat[cardtype .. "_female"] then cardtype = cardtype .. "_female" end
			local i = math.random(1, #sgs.ai_chat[cardtype])
			self.player:speak(sgs.ai_chat[cardtype][i])
		end
	end
end

sgs.ai_chat_func[sgs.CardFinished].duoshi = function(self, player, data)
	local use = data:toCardUse()
	if use.card and use.card:isKindOf("AwaitExhausted") and use.card:getSkillName() == "duoshi" and use.from:usedTimes("ViewAsSkill_duoshiCard") >= 2 then
		local chat = {
			""
		}
		for _, p in ipairs(sgs.robot) do
			if p:objectName() ~= use.from:objectName() and math.random() < 0.8 then
				if p:hasSkill("xiaoji") then
					p:speak("")
				end
				p:speak(chat[math.random(1, #chat)])
				return
			end
		end
	end
end

sgs.ai_chat_func[sgs.GeneralShown].show = function(self, player, data)
	if sgs.isRoleExpose() then return end
	local name1 =  sgs.Sanguosha:translate(self.player:getGeneralName())
	local name2 =  sgs.Sanguosha:translate(self.player:getGeneral2Name())
	local kingdom = sgs.Sanguosha:translate(self.player:getKingdom())
	local chat = {
		""
	}
	local chat1 = {
		""
		}
	local notshown, shown= 0, 0
	for _,p in sgs.qlist(self.room:getAlivePlayers()) do
		if  not p:hasShownOneGeneral() then
			notshown = notshown + 1
		end
		if p:hasShownOneGeneral() then
			shown = shown + 1
		end
	end
	if shown == 1 then
		table.insert(chat,"")
		if sgs.GetConfig("RewardTheFirstShowingPlayer", true) then
			table.insert(chat1,"")
		end
		if not self.player:hasShownSkill("luanji") then
			table.insert(chat1,"")
		else table.insert(chat,"")
		end
	end
	if shown < 3 then
		table.insert(chat,"")
		table.insert(chat,"")
	end
	if notshown < 3 then
		table.insert(chat,"")
		table.insert(chat,"")
	end
	if self.player:getRole() == "careerist" then
		table.insert(chat,"")
		table.insert(chat,"")
		table.insert(chat1,"")
	end
	if not self.player:hasShownAllGenerals() then
		table.insert(chat,self.player:screenName() ..""..kingdom)
		table.insert(chat,""..kingdom.."")
	elseif self.player:hasShownAllGenerals() then
		table.insert(chat, "".. self.player:screenName() ..""..name1..name2.."")
		table.insert(chat,","..name1..name2.."")
	end
	for _, p in ipairs(sgs.robot) do
		if p:objectName() ~= self.player:objectName() and (math.random() < 0.06 or (self.player:getRole() == "careerist" and math.random() < 0.5)) then
			p:speak(chat[math.random(1, #chat)])
		elseif p:objectName() == self.player:objectName() and (math.random() < 0.1 or shown == 1)then
			p:speak(chat1[math.random(1, #chat1)])
		end
	end
end

sgs.ai_chat_func[sgs.DamageCaused].attackAnjiang = function(self, player, data)
	if sgs.isRoleExpose() then return end
	local damage = data:toDamage()
	local chat = {
			""
			}
	local chat1= {
			""
			}
	local chat2= {
			""
			}
	if damage and not damage.to:hasShownOneGeneral() then
		if damage.to:getMaxHp() == 3 then
			table.insert(chat, "")
		end
		for _, p in ipairs(sgs.robot) do
			if not p:hasShownOneGeneral() then
				table.insert(chat, "")
				table.insert(chat, "")
			end
			if p:objectName() ~= damage.to:objectName() and math.random() < 0.05 then
				p:speak(chat[math.random(1, #chat)])
			elseif p:objectName() == damage.from:objectName() and math.random() < 0.05 then
				p:speak(chat1[math.random(1, #chat1)])
			elseif p:objectName() == damage.to:objectName() and math.random() < 0.1 then
				p:speak(chat2[math.random(1, #chat2)])
			end
		end
	end
end

sgs.ai_chat_func[sgs.EventPhaseStart].luanwu = function(self, player, data)
	if player:getPhase() == sgs.Player_Play then
		local chat = {
			""
		}
		local chat1 = {
			""
		}
		if self.player:hasShownSkill("luanwu") and self.player:getMark("@chaos") > 0 then
			for _, p in ipairs(sgs.robot) do
				if p:objectName() ~= player:objectName() and math.random() < 0.2 then
					p:speak(chat[math.random(1, #chat)])
				elseif p:objectName() == player:objectName() and math.random() < 0.1 then
					p:speak(chat1[math.random(1, #chat1)])
				end
			end
		end
	end
end

sgs.ai_chat_func[sgs.GeneralShown].show_jiange = function(self, player, data)
	if self.room:getMode() ~= "jiange_defense" then return end
	local kingdom = self.player:getKingdom()
	local chat1 = {
		""
		}
	local chat2 = {
		""
		}
	if kingdom == "shu" then
		table.insert(chat1, "")
		table.insert(chat1, "")
		table.insert(chat2, "")
	elseif kingdom == "wei" then
		table.insert(chat1, "")
		table.insert(chat1, "")
		table.insert(chat2, "")
	end
	if string.find(self.player:getGeneral():objectName(), "baihu") then
		table.insert(chat2, "")
	end
	if string.find(self.player:getGeneral():objectName(), "jiangwei") then
		table.insert(chat1, "")
		table.insert(chat1, "")
	elseif string.find(self.player:getGeneral():objectName(), "dengai") then
		table.insert(chat1, "")
		table.insert(chat1, "")
	end
	for _, p in ipairs(sgs.robot) do
		if p:objectName() == self.player:objectName() and (string.find(self.player:getGeneral():objectName(), "jg_") or math.random() < 0.1) then
			if string.find(self.player:getGeneral():objectName(), "machine") then
			p:speak(chat2[math.random(1, #chat2)])
			else
			p:speak(chat1[math.random(1, #chat1)])
			end
		end
	end
end

sgs.ai_chat.yiji = {
""
}

sgs.ai_chat.Snatch_female = {
""
}

sgs.ai_chat.Snatch = {
""
}

sgs.ai_chat.Dismantlement_female = sgs.ai_chat.Snatch_female

sgs.ai_chat.Dismantlement = sgs.ai_chat.Snatch

sgs.ai_chat.respond_hostile = {
""
}

sgs.ai_chat.friendly = {
"..."
}

sgs.ai_chat.respond_friendly = {
 "..."
 }

sgs.ai_chat.Duel_female = {
""
}

sgs.ai_chat.Duel = {
""
}

sgs.ai_chat.ExNihilo = {
""
}

sgs.ai_chat.Collateral_female = {
""
}

sgs.ai_chat.Collateral = {
""
}

sgs.ai_chat.jijiang_female = {
""
}

sgs.ai_chat.jijiang = {
""
}

--huanggai
sgs.ai_chat.KurouCard = {
"",
"",
"",
""
}

--indulgence
sgs.ai_chat.indulgence = {
"",
"",
""
}

--leiji
sgs.ai_chat.leiji_jink = {
"",
"",
""
}

--quhu
sgs.ai_chat.quhu = {
"",
"",
""
}

--salvageassault
sgs.ai_chat.daxiang = {
"",
"",
""
}

--xiahoudun
sgs.ai_chat.ganglie_death = {
""
}

sgs.ai_chat.guojia_weak = {
"",
""
}

sgs.ai_chat.yuanshao_fire = {
"",
"",
""
}

--xuchu
sgs.ai_chat.luoyi = {
""
}

sgs.ai_chat.usepeach = {
""
}

sgs.ai_chat.LureTiger = function(self)
	if math.random() < 0.05 then
		local chat = {
			"",
		}
		self.player:speak(chat[math.random(1, #chat)])
	end
end

sgs.ai_chat.BurningCamps = function(self)
	local x = math.random()
	if x < 0.033 then
		self.player:speak("")
	elseif x < 0.067 then
		local t = sgs.GetConfig("OriginAIDelay", 0)
		self.player:speak("")
		self.room:getThread():delay(t)
		self.player:speak("")
		self.room:getThread():delay(t)
		self.player:speak("！")
		self.room:getThread():delay(t)
		self.player:speak("~")
	elseif x < 0.1 then
		local t = sgs.GetConfig("OriginAIDelay", 0)
		self.player:speak("")
		self.room:getThread():delay(t)
		self.player:speak("")
		self.room:getThread():delay(t)
		self.player:speak("")
		self.room:getThread():delay(t)
		self.player:speak("")
	end
end
