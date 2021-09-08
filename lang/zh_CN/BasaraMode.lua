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

-- translations for Basara mode

return
{
	["Basara"] = "Tướng ẩn",
	["#BasaraReveal"] = "%from đã lật tướng, Chủ tướng là %arg, Phó tướng là %arg2",
	["#BasaraConceal"] = "%from đã ẩn tướng, Chủ tướng là %arg, Phó tướng là %arg2",
	["#BasaraRemove"] = "%from ngoài ra bỏ %arg %arg2",
	["@showingreward-choose"] = "Lực chọn hiệu ứng để nhận",
	["showingreward:recover"] = "Hồi phục sinh lực",
	["showingreward:draw"] = "Rút 2 thẻ bài",
	["GameRule_AskForGeneralShow"] = "Lật mở tướng lên",
	["GameRule:TurnStart"] = "Chọn mở tướng yêu cầu",
	["@generalshow-choose"] = "Chọn tướng để lật",
	["@generalshow-choose-lord"] = "Chọn tướng để lật và trở thành quân chủ",
	["show_head_general"] = "Lật mở Chủ tướng",
	["show_deputy_general"] = "Lật mở Phó tướng",
	["show_both_generals"] = "Lật mở 2 tướng",
	["Companions"] = "Hợp kỹ",
	["hidden_general"] = "Tướng ẩn",
	["head_general"] = "Chủ tướng",
	["deputy_general"] = "Phó tướng",
	["CompanionEffect"] = "Châu Liên Hợp Bích",
	["@companion-choose"] = "Phát động hợp kỹ, chọn kỹ năng phát động",
	["#HalfMaxHpLeft"] = "%from có 2 tướng lẻ máu, có thể rút 1 lá bài",
	["GameRule_AskForArraySummon"] = "Phát động trận pháp",
	["#SummonType"] = "Phát động trận pháp bày bố %arg",
	["summon_type_siege"] = "Bao vây",
	["summon_type_formation"] = "Đội hình",
	["#SummonResult"] = "%from đã chọn %arg",
	["summon_success"] = "Hưởng ứng",
	["summon_failed"] = "Không hưởng ứng",
	["SiegeSummon"] = "Hưởng ứng bao vây",
	["SiegeSummon!"] = "Hưởng ứng bao vây!",
	["FormationSummon"] = "Hưởng ứng đội hình",
	["FormationSummon!"] = "Hưởng ứng đội hình!",
	["GameRule:TriggerOrder"] = "Hãy chọn kỹ năng phát động",
	["trigger_none"] = "Không phát động",
	["anjiang"] = "Tướng úp",
	["anjiang_head"] = "Tướng úp (Chủ)" ,
	["anjiang_deputy"] = "Tướng úp (Phó)" ,
	["#BasaraGeneralChosen"] = "Tướng bạn đã chọn là %arg",
	["#BasaraGeneralChosenDual"] = "Tướng bạn đã chọn là %arg và %arg2",
	["Hegemony"] = "Quốc Chiến",
	["Roles"] = "Thân phận",
	["~anjiang"] = "Mạng ta tiêu rồi...",

	["@define:changetolord"] = "Đổi thành Quân Chủ?" ,
	["#FirstShowReward"] = "%from 全场第一个亮将，选择摸两张牌或回复1点体力",
	["#ShowingRewardOfCareerist"] = "%from 亮将成为野心家，选择摸两张牌或回复1点体力",
	["#ShowingRewardOfKingdom"] = "%from 是 %arg势力 第一个亮将的角色，摸一张牌",
	["@changetolord"] = "Bạn có muốn chuyển hóa tướng thành quân chủ?",
	["changetolord:yes"] = "Có",
	["changetolord:no"] = "Không",

	["GameRule_AskForGeneralShowHead"] = "Lật chủ tướng" ,
	["GameRule_AskForGeneralShowDeputy"] = "Lật phó tướng" ,
	["armorskill"] = "Chọn kỹ năng để phát động",
	
	["$enterBattleRoyalMode"] = "游戏进入 <font color=\"red\"><b>鏖战模式</b></font>，所有的【<font color=\"yellow\"><b>桃</b></font>】"..
		"只能当普【<font color=\"yellow\"><b>杀</b></font>】或【<font color=\"yellow\"><b>闪</b></font>】使用或打出，不能用于回复体力",

	["$enterBattleRoyalMode"] = "Trò chơi bước vào <font color=\"red\"><b>Chế độ Huyết Chiến</b></font>，tất cả[<font color=\"yellow\"><b>Đào</b></font>]"..
		"chỉ có thể sử dụng hoặc đánh ra như [<font color=\"yellow\"><b>Sát</b></font>] hoặc [<font color=\"yellow\"><b>Thiểm</b></font>].",

	["aozhan"] = "Huyết Chiến",
	[":aozhan"] = "①Bạn không thể sử dụng [Đào] chuyển hóa。②Bạn chỉ có thể sử dụng hoặc đánh ra [Đào] như [Sát] hoặc [Tránh]。",


	["companion"] = "Châu Liên Hợp Bích",
	[":companion"] = "Hạn định kỹ, trong giai đoạn hành động, rút 2 lá. Có thể sử dụng lá này như [Đào].",
	["companion:peach"] = "Sử dụng như [Đào]",
	["companion:draw"] = "Bốc 2 lá",

	["halfmaxhp"] = "Khuyết Ngọc",
	[":halfmaxhp"] = "Hạn định kỹ, giai đoạn hành động，bốc 1 lá。②Giai đoạn bỏ bài, tăng giới hạn trữ bài thêm 2。",
	["@halfmaxhp-use"] = "Bỏ [Khuyết Ngọc] để tăng giới hạn trữ bài thêm 2?",

	["firstshow"] = "Tiên Phong",
	[":firstshow"] = "Hạn định kỹ, giai đoạn hành động, bạn có thể bổ sung bài đến khi có 4 lá trên tay, sau đó xem 1 tướng ẩn của 1 người chơi。",
	["@firstshow-see"] = "Tiên Phong： Hãy chọn 1 người chơi và xem 1 tướng ẩn",
	["firstshow_see"] = "Tiên Phong",
	["@firstshow-choose"] = "Tiên Phong： Hãy xem 1 tướng của %dest",
	
	["CompanionCard"] = "Châu Liên Hợp Bích",
	[":CompanionCard"] = "Tiêu Ký\n\nCách dùng 1：\nGiai đoạn hành động, có thể loại bỏ Tiêu ký này, rút 2 lá。\n\nCách dùng 2\nKhi cần sử dụng [Đào], có thể loại bỏ Tiêu ký này, xem như đã sử dụng [Đào].",
	
	["HalfMaxHpCard"] = "Âm Dương Ngư",
	[":HalfMaxHpCard"] = "Tiêu Ký\n\nCách dùng 1：\nGiai đoạn hành động, có thể loại bỏ Tiêu ký này, rút 1 lá。\n\nCách dùng：\nGiai đoạn bỏ bài, nếu bài trên tay lớn hơn giới hạn trữ bài, có thể loại bỏ Tiêu ký này，tăng giới hạn trữ bài thêm 2.",
	
	["FirstShowCard"] = "Tiên Khu",
	[":FirstShowCard"] = "Tiêu Ký\n\nGiai đoạn hành động, có thể loại bỏ Tiêu ký này, chọn 1 người chơi có tướng chưa mở, bạn rút bài đến khi tay có 4 lá, sau đó xem 1 tướng ẩn của người đã chọn.",
	
	["careerman"] = "Dã Tâm Gia",
    ["CareermanCard"] = "Dã Tâm Gia",
    [":CareermanCard"] = "Tiêu Ký\n\nCách dùng 1：\nGiai đoạn hành động, có thể loại bỏ Tiêu ký này và chọn: 1. Rút 2 lá; 2. Rút 1 lá; 3. Rút bài đến khi tay có 4 lá và xem 1 tướng ẩn của người khác.\n\nCách dùng 2: Khi cần sử dụng [Đào]， có thể loại bỏ Tiêu ký này, xem như đã sử dụng [Đào]\n\nCách dùng 3: Đầu giai đoạn bỏ bài, có thể loại bỏ Tiêu ký này, giới hạn trữ bài lượt này +2.",
    ["careerman:draw1card"] = "Rút 1 lá",
    ["careerman:draw2cards"] = "Rút 2 lá",
    ["careerman:peach"] = "Xem như sử dụng [Đào]",
    ["careerman:firstshow"] = "Rút đến khi 4 lá trên tay và xem 1 tướng ẩn",
    ["@careerman-target"] = "Dã Tâm Gia: Chọn 1 người chơi để xem 1 tướng ẩn",
    ["@careerman-use"] = "Có thể loại bỏ tiêu ký \"Dã Tâm Gia\" để giới hạn trữ bài +2.",
    ["@careerman-choose"] = "Chọn 1 hiệu ứng để phát động",
	
	["canshowinplay"] = "Có thể lật tướng",
	
	["showhead"] = "Lật tướng",
	[":showhead"] = "Lật Chủ tướng",
	
	["showdeputy"] = "Lật tướng",
	[":showdeputy"] = "Lật Phó tướng",
	
	["@careerist-show"] = "Bộc lộ dã tâm: Có thể lật Chủ tướng để tiếp tục trò chơi hoặc đầu hàng.",
    ["GameRule:CareeristShow:yes"] = "Lật tướng Dã Tâm",
    ["GameRule:CareeristShow:no"] = "Chấp nhận đầu hàng để sống",
    
    ["#GameRule_CareeristShow"] = "%from đã thể hiện Dã Tâm và lật chủ tướng.",
    
    ["@careerist-summon"] = "Có thể lật tướng Dã tâm.",
    ["GameRule:CareeristSummon:yes"] = "Lật tướng Dã Tâm",
    ["GameRule:CareeristSummon:no"] = "Hủy bỏ",

    ["#GameRule_CareeristSummon"] = "%from đã mở tướng Dã tâm",

    ["@careerist-add"] = "Có thể gia nhập dã tâm của %src",

    ["#GameRule_CareeristAdd"] = "%from đã đồng ý gia nhập dã tâm của %to",
}
