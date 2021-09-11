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

	local chat = {"Ê, đừng đánh người mình thế chứ :(",
				"Sao lại đánh ta?",
				"Đừng đánh nữa, tôi sắp tuyệt vọng rồi đấy.",
				"Không giết ta nhanh, đến lượt ta sẽ không tha cho ngươi."
				}
	if player:screenName() == "Tài Tống" then
		table.insert(chat, "Mày có bị điên không?")
		table.insert(chat, "Biết chơi sát không?")
		table.insert(chat, "Mới tập chơi hả?")
		table.insert(chat, "Mày có bị điên không?")
		table.insert(chat, "Biết chơi sát không?")
		table.insert(chat, "Mới tập chơi hả?")
		table.insert(chat, "Mày có bị điên không?")
		table.insert(chat, "Biết chơi sát không?")
		table.insert(chat, "Mới tập chơi hả?")
		table.insert(chat, "Mày có bị điên không?")
		table.insert(chat, "Biết chơi sát không?")
		table.insert(chat, "Mới tập chơi hả?")
	end
	if self:hasCrossbowEffect(effect.from) then
		table.insert(chat, "Chào anh em, tôi chuẩn bị chết đây.")
		table.insert(chat, "Người sắp lủng 1 đống lỗ rồi.")
		table.insert(chat, "Giết tôi không có lợi gì đâu.")
	end

	if effect.from:getMark("drank") > 0 then
		table.insert(chat, "Cái tên uống rượu làm càn này.")
	end

	if sgs.isAnjiang(effect.to) then
		table.insert(chat, "Đánh úp mặt thế, tôi cùng phe mà.")
		table.insert(chat, "Đừng đánh nữa, lát tôi lên tướng cho xem.")
		table.insert(chat, "Thích mất hết bài không?")
		table.insert(chat, "Cười ỉa =))")
		table.insert(chat, "Nhìn tướng người ta đã rồi hẵng đánh.")
		if not sgs.isAnjiang(effect.from) and effect.from:getRole() ~= "careerist" then
			table.insert(chat, "Tôi " .. sgs.Sanguosha:translate(effect.from:getKingdom()) .. " đây")
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
	local chat = {"Tại sao ta lại phải cùng phe với ngươi nhỉ.",
				"Ông diễn hơi sâu rồi đấy.",
				"Tôi đi ăn đây.",
				"Phe ta diệt vong rồi.",
				"Không còn gì để nói",
				}
	if player:screenName() == "Tài Tống" then
		table.insert(chat, "Mày có bị điên không?")
		table.insert(chat, "Biết chơi sát không?")
		table.insert(chat, "Mới tập chơi hả?")
	end
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
				"Quân " .. kingdom .. " đang mạnh, chúng ta liên minh đi.",
				"Anh em cùng nhau diệt " .. kingdom .. " nào."
			}
			if os.time() % 10 < 1 then
				player:speak(chat[math.random(1, #chat)])
			end
		end
	end
end

sgs.ai_chat_func[sgs.EventPhaseStart].comeon = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local chat = {"Bài đẹp phết",
				"Nhìn ta múa đây này",
				"Không nổi lá nào ra hồn.",
				"Bài chán quá đi.",
				"Để tìm thêm bài.",
				}
	if player:getPhase() == sgs.Player_Finish and not player:isKongcheng() and player:hasShownSkill("leiji") and os.time() % 10 < 4 then
		local index = 1 + (os.time() % #chat)
		player:speak(chat[index])
	end
end

sgs.ai_chat_func[sgs.EventPhaseStart].beset = function(self, player, data)
	if player:getState() ~= "robot" then return end
	local chat = {
		"Xem nào :))",
		"Cứ để đó, chúng ta dần dần tra tấn.",
		"Giết nó nhanh thôi.",
		"Người anh em ngồi giữa đầu hàng đi, khỏi phải chịu cảm giác đau khổ.",
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
		if player:screenName() == "Quan Vũ" then
			player:speak("Đây vốn là vũ khí của ta mà.")
		else
			for _, p in ipairs(sgs.robot) do
				if p:screenName() == "Quan Vũ" then
					p:speak("Dám lấy vũ khí của ta, ngươi sẽ phải chết.")
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
				player:speak("Này " .. p:screenName() .. ", ngươi định chạy đâu!")
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
			use.from:speak("Hồi sinh nào, tướng quân của ta.")
			to:speak("Nữ hoàng của ta, ta nguyện chiến đấu vì nàng!")
		end
	end
end

sgs.ai_chat_func[sgs.CardFinished].analeptic = function(self, player, data)
	local use = data:toCardUse()
	if use.card and use.card:isKindOf("Analeptic") and use.card:getSkillName() ~= "zhendu" and not use.to:isEmpty() then
		local to = use.to:first()
		if to:getMark("drank") == 0 then return end
		local suit = { "heart", "diamond" }
		suit = suit[math.random(1, #suit)]
		local chat = {
			"=)))",
			"Cười ỉa =))",
			"Sẵn bỏng nước đây rồi, ta ngồi hóng.",
			"Đừng đánh tôi, tôi có " .. "<b><font color = 'yellow'>" .. sgs.Sanguosha:translate("jink")
				.. string.format("[<img src='image/system/log/%s.png' height = 12/>", suit) .. math.random(1, 10) .. "] </font></b>",
			"Nhìn bạn ngầu quá."
		}
		for _, p in ipairs(sgs.robot) do
			if p:objectName() ~= to:objectName() and not p:isFriendWith(to) and math.random() < 0.2 then
				if not p:isWounded() then
					table.insert(chat, "Đầy máu mà, sợ gì :))")
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
				"Ai đánh ta, ta đánh kẻ đó.",
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
				"Tất cả chết hết đi",
				"Dọn bàn thôi",
				"Vô số chiến trường đã trải qua,ta chưa một lần thất bại",
				"Cung tiễn thủ, chuẩn bị phóng tiễn",
				"Đã đến lúc thống nhất thiên hạ",
				"Truyện kể năm đó Viên Bản Sơ ta dọn bàn",
				"Đời ta không sợ ai cả",
				"Cuộc sống của các ngươi đã không còn ý nghĩa",
				"Hít dần mùi đất cho quen đi",
				"Ta thấy ta xứng đáng bị ban"
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
				"Còn không mau lên tướng.",
			}
			if player:hasSkills("xiongyi|luanwu") then
				table.insert(chat, "Ơ kìa, ghê đấy")
			end
			if player:getKingdom() == "wei" then
				table.insert(chat, "Chà chà, lại con hàng Ngụy")
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
			"Lại đổi bài nữa",
			"Chắc tôi đi ngủ đây.",
			"Lục Tốn, nhanh lên, tốn thời gian quá."
		}
		for _, p in ipairs(sgs.robot) do
			if p:objectName() ~= use.from:objectName() and math.random() < 0.8 then
				if p:hasSkill("xiaoji") then
					p:speak("Tiếp tục nào.")
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
		"Chà, tướng khỏe đây",
		"Thế thôi à?"
	}
	local chat1 = {
		"Hừm",
		"Tướng không có gì đặc biệt đâu :))",
		"Lên tướng cho mọi người vui",
		}
	if self.player:screenName() == "Ong Thành Đạt" then
		table.insert(chat1, "Để em, để em")
		table.insert(chat1, "Để em, để em")
		table.insert(chat1, "Để em, để em")
		table.insert(chat1, "Để em, để em")
	end
	if self.player:screenName() == "#S" then
		table.insert(chat1, "Tôi đã lừa bạn bao giờ chưa!")
		table.insert(chat1, "Tôi đã lừa bạn bao giờ chưa!")
		table.insert(chat1, "Tôi đã lừa bạn bao giờ chưa!")
		table.insert(chat1, "Tôi đã lừa bạn bao giờ chưa!")
		table.insert(chat1, "Trên đời có 2 nguồn thông tin đáng tin cậy, 1 là VTV, và 2 là tôi.")
		table.insert(chat1, "Trên đời có 2 nguồn thông tin đáng tin cậy, 1 là VTV, và 2 là tôi.")
		table.insert(chat1, "Trên đời có 2 nguồn thông tin đáng tin cậy, 1 là VTV, và 2 là tôi.")
		table.insert(chat1, "Trên đời có 2 nguồn thông tin đáng tin cậy, 1 là VTV, và 2 là tôi.")
	end
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
		table.insert(chat,"Lên đầu cho mọi người dễ đánh à :v")
		if sgs.GetConfig("RewardTheFirstShowingPlayer", true) then
			table.insert(chat1,"Tiên Phong là của ta")
		end
		if not self.player:hasShownSkill("luanji") then
			table.insert(chat1,"Ta chỉ sợ mỗi Viên Thiệu lên đầu.")
		else table.insert(chat,"Thôi xong")
		end
	end
	if shown < 3 then
		table.insert(chat,"Lên sớm cẩn thận bị giết đó.")
		table.insert(chat,"Lên sớm làm gì :))")
	end
	if notshown < 3 then
		table.insert(chat,"Mãi cũng chịu lên")
		table.insert(chat,"Úp hơi lâu rồi đấy.")
	end
	if self.player:getRole() == "careerist" then
		table.insert(chat,"Dã tâm kìa")
		table.insert(chat,"Chơi một mình đi :))")
		table.insert(chat1,"Làm dã tâm khổ vãi")
	end
	if not self.player:hasShownAllGenerals() then
		table.insert(chat,self.player:screenName() .." hóa ra là "..kingdom)
		table.insert(chat,""..kingdom.." có vẻ đông đây.")
	elseif self.player:hasShownAllGenerals() then
		table.insert(chat, "Thì ra ".. self.player:screenName() .." chơi "..name1..", "..name2..".")
		table.insert(chat,"Cặp "..name1..", "..name2.." ngon đấy!")
	end
	for _, p in ipairs(sgs.robot) do
		if p:objectName() ~= self.player:objectName() and (math.random() < 0.06 or (self.player:getRole() == "careerist" and math.random() < 0.5)) then
			p:speak(chat[math.random(1, #chat)])
		elseif p:objectName() == self.player:objectName() and (math.random() < 0.6 or shown == 1)then
			p:speak(chat1[math.random(1, #chat1)])
		end
	end
end

sgs.ai_chat_func[sgs.DamageCaused].attackAnjiang = function(self, player, data)
	if sgs.isRoleExpose() then return end
	local damage = data:toDamage()
	local chat = {
			"Đánh úp mặt cẩn thận đó.",
			"Mãi chưa chịu lên tướng.",
			}
	local chat1= {
			"Lên tướng đi nào.",
			"Nào tên Ngụy này, còn không mau lên tướng."
			}
	local chat2= {
			"Có phải Ngụy đâu mà lên tướng.",
			"Đừng đánh tôi",
			"Ơ kìa",
			}
	if damage and not damage.to:hasShownOneGeneral() then
		if damage.to:getMaxHp() == 3 then
			table.insert(chat, "3 máu này dễ Ngụy lắm.")
		end
		for _, p in ipairs(sgs.robot) do
			if not p:hasShownOneGeneral() then
				table.insert(chat, "Chúng ta cùng không lên tướng.")
				table.insert(chat, "Dễ cùng phe đấy chứ :))")
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
			"Đại loạn rồi",
			"Chém ai bây giờ",
			"Ta không có sát"
		}
		local chat1 = {
			"Đừng lo lắng",
			"Ngươi sẵn sàng chưa",
			"Sao ta phải nghe ngươi"
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
		"Tên đần độn, tạm tha cho ngươi không giết",
		"Chiến trường hiểm ác, các tướng hành quân cẩn trọng."
		}
	local chat2 = {
		"Chà chà!",
		"Wow!",
		"Sẵn sàng đi."
		}
	if kingdom == "shu" then
		table.insert(chat1, "Thục Hán sẽ thống nhất thiên hạ.")
		table.insert(chat1, "Sự sống của Thục Hán nằm ở trận này.")
		table.insert(chat2, "Lại Thục!")
	elseif kingdom == "wei" then
		table.insert(chat1, "Ngụy quốc mãi trường tồn.")
		table.insert(chat1, "Thắng trận này, ắt làm nên đại nghiệp.")
		table.insert(chat2, "Lại Ngụy")
	end
	if string.find(self.player:getGeneral():objectName(), "baihu") then
		table.insert(chat2, "Meo meo :3")
	end
	if string.find(self.player:getGeneral():objectName(), "jiangwei") then
		table.insert(chat1, "Chúng ra hãy lui về Kiếm Các phòng thủ. Nếu thua sẽ mất hết.")
		table.insert(chat1, "Kẻ thù ở khắp mọi nơi, tốt hơn ta nên rút lui về Kiếm Các, chờ cơ hội.")
	elseif string.find(self.player:getGeneral():objectName(), "dengai") then
		table.insert(chat1, "Ta hãy đi tắt theo đường núi Âm Bình, vượt qua Cảnh Cốc")
		table.insert(chat1, "Sau khi Hán Trung bị công hạ, Khương Duy nhất định sẽ rút về Kiếm Các.")
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
"Đánh nữa đi",
"Ta sắp chết rồi."
}

sgs.ai_chat.Snatch_female = {
"Chậc chậc.",
"Cướp của người ta :((" ,
"Cái tay khó chịu thật."
}

sgs.ai_chat.Snatch = {
"Yo!",
"Nào nào cái tay",
"Bỏ tay ra bạn ơi."
}

sgs.ai_chat.Dismantlement_female = sgs.ai_chat.Snatch_female

sgs.ai_chat.Dismantlement = sgs.ai_chat.Snatch

sgs.ai_chat.respond_hostile = {
"擦，小心菊花不保",
"内牛满面了", "Thôi đi đây"
}

sgs.ai_chat.friendly = {
":\">"
}

sgs.ai_chat.respond_friendly = {
 "Cảm ơn..."
 }

sgs.ai_chat.Duel_female = {
"Hừm, sợ hãi ư?"
}

sgs.ai_chat.Duel = {
"Nào, hãy chiến đầu như 1 người đàn ông!",
"1 lá bài cũng đủ để giết người"
}

sgs.ai_chat.ExNihilo = {
"Chúc may mắn",
"=)))))"
}

sgs.ai_chat.Collateral_female = {
"Ngươi không thể thằng bằng cách này được đâu."
}

sgs.ai_chat.Collateral = {
"Vũ khí của ta!"
}

sgs.ai_chat.jijiang_female = {
"Đừng hy vọng sau này ta sẽ giúp ngươi"
}

sgs.ai_chat.jijiang = {
"Ta tới đây!"
}

--huanggai
sgs.ai_chat.KurouCard = {
"Có ai có đào không!",
"Người anh em, cho tôi xin 1 đào.",
"Cứu cứu cứu, tôi sắp chết rồi.",
"Tôi quỳ xuống van lạy, hãy cho tôi 1 quả đào."
}

--indulgence
sgs.ai_chat.indulgence = {
"Lạc cái gì mà lạc",
"Thôi lại ngồi chơi",
"Ế!"
}

--leiji
sgs.ai_chat.leiji_jink = {
"Game này là Tam quốc Thiểm nhé",
"Ngươi nghĩ ta không có thiểm sao",
"Ha, ta có thiểm"
}

--quhu
sgs.ai_chat.quhu = {
"Vờn hổ!",
"Vờn hổ!",
"Vờn hổ!"
}

--salvageassault
sgs.ai_chat.daxiang = {
"Lại con voi nữa.",
"Mạnh Hoạch đâu, về dạy lại phu nhân đi kìa.",
"Thân ta voi dày ngựa xéo."
}

--xiahoudun
sgs.ai_chat.ganglie_death = {
"Đáng đời nhà ngươi."
}

sgs.ai_chat.guojia_weak = {
"Bán hết cả máu rồi.",
"Không dám bán máu nữa."
}

sgs.ai_chat.yuanshao_fire = {
"Ai đó gọi 115 giúp tôi.",
"Đừng bắn nữa, chết người đấy.",
"Viên Minh chủ tha mạng cho tiểu nhân.",
"Cơ thể này sắp mang ngàn lỗ thủng."
}

--xuchu
sgs.ai_chat.luoyi = {
"Nóng quá, các ngươi chuẩn bị chết đi"
}

sgs.ai_chat.usepeach = {
"Quả đào chết tiệt."
}

sgs.ai_chat.LureTiger = function(self)
	if math.random() < 0.05 then
		local chat = {
			"Chuẩn bị thiêu đốt nào.",
		}
		self.player:speak(chat[math.random(1, #chat)])
	end
end

sgs.ai_chat.BurningCamps = function(self)
	local x = math.random()
	if x < 0.033 then
		self.player:speak("Ngọn lựa hãy thanh tẩy mọi thử!")
	elseif x < 0.067 then
		local t = sgs.GetConfig("OriginAIDelay", 0)
		self.player:speak("Hỡi hỏa thần")
		self.room:getThread():delay(t)
		self.player:speak("Với tất cả khả năng của người")
		self.room:getThread():delay(t)
		self.player:speak("Hãy ban cho ta sức mạnh.")
		self.room:getThread():delay(t)
		self.player:speak("Hỏa Thiêu Liên Doanh!")
	elseif x < 0.1 then
		local t = sgs.GetConfig("OriginAIDelay", 0)
		self.player:speak("Hỡi Hỏa linh ngự trị nơi đây")
		self.room:getThread():delay(t)
		self.player:speak("Hãy ban cho ta sức mạnh")
		self.room:getThread():delay(t)
		self.player:speak("Ta đang kêu gọi người đến đây")
		self.room:getThread():delay(t)
		self.player:speak("Hãy thiêu rụi tất cả mọi thứ.")
	end
end
