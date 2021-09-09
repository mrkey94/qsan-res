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

CommonTranslationTable = {
	["lord"] = "Chủ công",
	["loyalist"] = "Trung thần",
	["rebel"] = "Phản tặc",
	["renegade"] = "Nội gián",
	["leader"] = "Chủ soái",
	["guard"] = "Tiền phong",
	["vanguard"] = "Tiên phong",
	["mainstay"] = "Trung kiên",
	["general"] = "Đại tướng",
	["offensive"] = "Tiên thủ",
	["defensive"] = "Hậu thủ",

	["Generals"] = "Võ tướng" ,
	["Pairs"] = "Tổ hợp",
	["XMode"] = "Huyết chiến đến cùng",
	["cancel"] = "Huỷ bỏ",
	["GeneralA"] = "Chủ tướng",
	["GeneralB"] = "Phó tướng",
	["surrender:yes"] = "Có thể lập tức đầu hàng nhận thua",
	["@dummy-slash"] = "Hãy dùng [Sát] lên nhân vật mục tiêu",
	["@dummy-slash2"] = "Chọn %src hãy dùng [Sát] lên nhân vật mục tiêu",

	["spade"] = "Bích",
	["club"] = "Chuồn",
	["heart"] = "Cơ",
	["diamond"] = "Rô",
	["no_suit"] = "Không màu",
	["no_suit_black"] = "Đen",
	["no_suit_red"] = "Đỏ",
	["basic"] = "cơ bản",
	["trick"] = "công cụ",
	["equip"] = "trang bị",
	["BasicCard"] = " cơ bản",
	["TrickCard"] = "công cụ",
	["EquipCard"] = "trang bị",
	["ndtrick"] = "công cụ phổ thông",
	["nothing"] = "Không phát động",
	["handcards"] = "trên tay",

	["compulsory"] = "Tỏa định kỹ",
	["once_per_turn"] = "Một lần trong giai đoạn hành động",
	["limited"] = "Hạn định kỹ",
	["head"] = "Chủ tướng kỹ",
	["deputy"] = "Phó tướng kỹ",
	["array"] = "Trận pháp kỹ",
	["lord"] = "Quân chủ kỹ",

	["spade_char"] = "♠",
	["club_char"] = "♣",
	["heart_char"] = "♥",
	["diamond_char"] = "♦",
	["no_suit_char"] = "vô sắc",
	["no_suit_black_char"] = "Đen",
	["no_suit_red_char"] = "Đỏ",
	["start"] = "Bắt đầu",
	["judge"] = "Phán xét",
	["retrial"] = "Đổi Phán xét",
	["judgedone"] = "Kết quả Phán xét",
	["put"] = "Xếp lên",
	["throw"] = " bỏ ra",
	["enter"] = " bỏ vào",
	["backinto"] = " đưa vào tập thẻ bài bỏ",
	["draw"] = " rút bài",
	["play"] = " hành động",
	["discard"] = " bỏ bài",
	["finish"] = " kết thúc",
	["use"] = " sử dụng",
	["response"] = " phản xuất",
	["dismantled"] = "bị bỏ",
	["recast"] = " trọng chú",
	["pindian"] = " đấu điểm",
	["change equip"] = " đổi trang bị",
	["turnover"] = " lật mở thẻ bài trên đầu tập thẻ",
	["preview"] = " xem trước thẻ đầu trên tập bài",
	["show"] = " mở ra",
	["online"] = "Online",
	["offline"] = "Offline",
	["robot"] = "Máy tính",
	["trust"] = "Tin tưởng",
	["yes"] = "Có",
	["no"] = "Không",
	["male"] = "Nam",
	["female"] = "Nữ",
	["discardPile"] = "Chồng bài bỏ",
	["drawPileTop"] = "Đầu chồng thẻ",
	["drawPileBottom"] = "Đáy chồng bài",

	["yourself"] = "bản thân",

	["attack_card"] = "Lá tấn công",
	["defense_card"] = "Lá phòng ngự",
	["recover_card"] = "Lá khôi phục",
	["global_effect"] = "Hiệu quả toàn cục",
	["aoe"] = "AOE",
	["single_target_trick"] = "Thẻ công cụ đơn mục tiêu",
	["multiple_target_trick"] = "Thẻ công cụ nhiều mục tiêu",
	["delayed_trick"] = "Thẻ công cụ duy trì",
	["buff_card"] = "Phụ trợ sát thương",
	["damage_spread"] = "Mở rộng sát thương",
	["weapon"] = "Vũ khí",
	["armor"] = "Phòng cụ",
	["defensive_horse"] = "Chiến mã +1 ",
	["offensive_horse"] = "Chiến mã -1 ",
	["treasure"] = "Bảo vật",

	["luck_card"] = "Lá may mắn",

	["wei"] = "Nguỵ",
	["shu"] = "Thục",
	["wu"] = "Ngô",
	["qun"] = "Quần hùng",
	["careerist"] = "Dã tâm",
	["god"] = "Thần",
	["default"] = "Mặc định",

	["#Murder"] = "%to[%arg] trận vong, sát thương do %from gây ra",
	["#Suicide"] = "%to[%arg] tự sát",
	["#InvokeSkill"] = "%from phát động [%arg]",
	["#InvokeOthersSkill"] = "%from đã phát động [%arg] với %to",
	["#ChoosePlayerWithSkill"] = "%from đã phát động [%arg], mục tiêu là %to",
	["#TriggerSkill"] = "%from kích phát [%arg]",
	["#Pindian"] = "%from phát động đấu điểm với %to ",
	["#PindianSuccess"] = "%from đấu điểm thắng %to !",
	["#PindianFailure"] = "%from đấu điểm thua %to",
	["#Damage"] = "%from gây %arg sát thương [%arg2] cho %to",
	["#DamageNoSource"] = "%to nhận %arg sát thương [%arg2]",
	["#Recover"] = "%from khôi phục %arg HP",
	["#AskForPeaches"] = "%from hướng %to xin giúp [Đào], hết thảy cần %arg thẻ [<font color=\"yellow\"><b>Đào</b></font>]",
	["#ChooseKingdom"] = "%from đã chọn thế lực %arg",
	["#NullificationDetails"] = "Phát động [<font color=\"yellow\"><b>Vô Giải Khả Kích</b></font>] là %from với %to chặn tác dụng [%arg]",
	["#HegNullificationDetails"] = "Phát động [<font color=\"yellow\"><b>Vô Giải Khả Kích - Quốc</b></font>] là %from với %to chặn tác dụng [%arg]",
	["#HegNullificationEffect"] = "Đã phát động [<font color=\"yellow\"><b>Vô Giải Khả Kích - Quốc</b></font>] là %from với %to chặn tác dụng [%arg]",
	["#HegNullificationSelection"] = "%from phát động [<font color=\"yellow\"><b>Vô Giải Khả Kích - Quốc</b></font>] chặn %arg" ,
	["hegnul_single"] = "Hiệu quả với một người chơi" ,
	["hegnul_all"] = "hiệu quả với tất cả người chơi cùng phe" ,
	["#SkillAvoid"] = "Nhận hiệu quả [%arg], %from không thể thành mục tiêu của [%arg2]",
	["#CardNullified"] = "[%arg] đối với %from vô hiệu",
	["#Transfigure"] = "%from chuyển thành %arg",
	["#TransfigureDual"] = "%arg của %from chuyển thành %arg2",
	["#AcquireSkill"] = "%from nhận được kỹ năng [%arg]",
	["#LoseSkill"] = "%from mất đi kỹ năng [%arg]",
	["$InitialJudge"] = "%from nhận thẻ phán xét là %card",
	["$ChangedJudge"] = "%from phát động [%arg] buộc thẻ phán xét của %to đổi thành %card",
	["$MoveCard"] = "%to nhận được %card từ %from",
	["$PasteCard"] = "%from dùng %card với %to",
	["$LightningMove"] = "%card được chuyển sang vùng phán xét của %to",
	["$TurnOver"] = "%from đã lật thẻ bài đầu tập là %card",
	["$DiscardCard"] = "%from đã bỏ đi %card",
	["$DiscardCardWithSkill"] = "%from bỏ đi %card phát động [%arg]",
	["$DiscardCardByOther"] = "%from đã loại bỏ %card của %to",
	["$EnterDiscardPile"] = "%card chuyển vào tập thẻ bỏ",
	["$MoveToDiscardPile"] = "%from chuyển %card vào tập thẻ bỏ",
	["$GotCardBack"] = "%from thu hồi %card",
	["$RecycleCard"] = "%from trong tập bài bỏ thu hồi %card",
	["$Dismantlement"] = "%card của %from bị loại bỏ",
	["$ShowCard"] = "%from đưa ra %card",
	["$ShowAllCards"] = "%from đưa ra %card trên tay",
	["$ViewAllCards"] = "%from tra xem %card của %to",
	["$ViewDrawPile"] = "%from tra xem %card đầu tập thẻ",
	["$JileiShowAllCards"] = "%from đưa ra những thẻ bài cầm tay không thể loại bỏ %card",
	["$PutCard"] = "%card của %from bị đưa lên đầu tập thẻ",
	["#PutCard"] = "$arg thẻ của %from bị đưa lên đầu tập thẻ",
	["$PutCardToDrawPileBottom"] = "%card của %from bị đưa vào đáy tập thẻ",
	["#PutCardToDrawPileBottom"] = "%arg thẻ của %from bị đưa vào đáy tập thẻ",
	["normal_nature"] = "phổ thông",
	["fire_nature"] = "Hoả hệ",
	["thunder_nature"] = "Lôi hệ",
	["#Contingency"] = "%to[%arg] trận vong, không có nguồn sát thương",
	["#DelayedTrick"] = "%from bắt đầu lật phán xét công cụ duy trì [%arg]",
	["#SkillNullify"] = "[%arg] của %from bị kích phát, [%arg2] vô hiệu",
	["#ArmorNullify"] = "Hiệu quả của phòng cụ [%arg] của %from bị kích phát, [%arg2] vô hiệu",
	["#DrawNCards"] = "%from đã rút %arg thẻ bài",
	["$DrawCards"] = "%from đã rút %arg thẻ %card",
	["#MoveNCards"] = "%to nhận được %arg thẻ bài từ %from",
	["$TakeAG"] = "%from đã nhận được %card",
	["$Install"] = "%from đã trang bị %card",
	["$Uninstall"] = "%from đã tháo %card",
	["$JudgeResult"] = "Kết quả phán xét của %from là %card",
	["#JudgeEffected"] = "\"%arg\" của %from có hiệu lực",
	["#JudgeFailure"] = "\"%arg\" của %from vô hiệu lực",
	["$PindianResult"] = "Đấu điểm của %from là %card",
	["#ChooseSuit"] = "%from chọn chất %arg",
	["#TurnOver"] = "%from võ tướng bị úp mặt, hiện tại là %arg",
	["face_up"] = "Trạng thái hiện mặt",
	["face_down"] = "Trạng thái úp mặt",
	["#SkipPhase"] = "%from bỏ qua giai đoạn %arg",
	["#SkipAllPhase"] = "%from bỏ qua lượt",
	["#IronChainDamage"] = "%from trong trạng thái liên xích, sẽ phát sinh sát thương truyền dẫn có thuộc tính",
	["#LoseHp"] = "%from bị mất %arg HP",
	["#LoseMaxHp"] = "%from bị mất %arg giới hạn HP",
	["#GainMaxHp"] = "%from nhận được %arg giới hạn HP",
	["#GetHp"] = "%from hiện tại có %arg HP, giới hạn HP là %arg2",
	["#ChangeKingdom"] = "%from buộc %to chuyển thế lực %arg sang %arg2",
	["#AnalepticBuff"] = "%from dùng [<font color=\"yellow\"><b>Tửu</b></font>], gây %arg sát thương lên %to tăng thành %arg2 điểm",
	["#GetMark"] = "%from nhận được %arg2 tấm %arg tiêu ký	",
	["#LoseMark"] = "%from bị mất %arg2 tấm %arg tiêu ký",
	["$AddToPile"] = "Thẻ %card được phát động thêm vào %arg",
	["#RemoveFromGame"] = "%arg2 thẻ bài bị tác động %arg ra khỏi trận đấu",
	["$GotCardFromPile"] = "%from nhận được %card từ %arg",
	["#GotNCardFromPile"] = "%from từ %arg nhận được %arg2 thẻ",
	["@askforslash"] = "Bạn có thể sử dụng [Sát] với 1 người khác trong tầm đánh",
	["@askforretrial"] = "Hãy dùng [%dest] để đổi phán xét %arg của %src",
	["$CheatCard"] = "%from gian lận, nhận được %card",
	["#FilterJudge"] = "Hiệu quả %arg của %from bị kích phát, thẻ phán xét bị thay đổi",
	["$CancelTarget"] = "%from dùng [%arg] khiến mục tiêu %to bị loại bỏ",
	["$CancelTargetNoUser"] = "[%arg] làm mục tiêu %to bị loại bỏ",
	["$ViewRole"] = "%from đã tra xét thân phận %arg của %to",
	["#UseLuckCard"] = "%from dùng <font color=\"yellow\"><b>Thẻ vận may</b></font>",

	["cw"] = "theo chiều kim đồng hồ",
	["ccw"] = "ngược chiều kim đồng hồ",
	["@3v3-action"] = "hãy chọn hành động người chơi",
	["warm"] = "tông màu ấm",
	["cool"] = "tông màu lạnh",
	["#VsTakeGeneral"] = "%arg đã chọn %arg2",
	["#TrickDirection"] = "%from đã chọn %arg thứ tự kết toán",
	["custom"] = "tự định nghĩa",
	["UnknowNick"] = "",
	["DefaultIllustrator"] = "KayaK",

	["@waked"] = "giác tỉnh",

	["CAPITAL(1)"] = "Một",
	["CAPITAL(2)"] = "Hai",
	["CAPITAL(3)"] = "Ba",
	["CAPITAL(4)"] = "Bốn",
	["CAPITAL(5)"] = "Năm",
	["CAPITAL(6)"] = "Sáu",
	["CAPITAL(7)"] = "Bảy",
	["CAPITAL(8)"] = "Tám",
	["CAPITAL(9)"] = "Chín",
	["CAPITAL(10)"] = "Mười",

	["SEAT(1)"] = "Số 1",
	["SEAT(2)"] = "Số 2",
	["SEAT(3)"] = "Số 3",
	["SEAT(4)"] = "Số 4",
	["SEAT(5)"] = "Số 5",
	["SEAT(6)"] = "Số 6",
	["SEAT(7)"] = "Số 7",
	["SEAT(8)"] = "Số 8",
	["SEAT(9)"] = "Số 9",
	["SEAT(10)"] = "Số 10",

	["HorseCorrect"] = "Chiến mã",

	["#DanlaoAvoid"] = "Hiệu quả [%arg2] bị kích phát, [%arg] đối với %from vô hiệu",

	["custom_scenario"] = "Bối cảnh tự chọn",

	["Player"] = "Người chơi",
	["AI"] = "Máy AI",

	--for GuhuoBox:
	["SingleTargetTrick"] = "Thẻ công cụ đơn thể",
	["MultiTarget"] = "Thẻ công cụ quần thể",
	["DelayedTrick"] = "Thẻ công cụ thời gian",

	["convert_general"] = "Hoán đổi tướng",
	
	["BattleRoyalMode"] = "Chế độ Huyết Chiến",
	["view_next_player_deputy_general"] = "Xem phó tướng của người kế tiếp",

	["$gamestart"] = "Trận chiến bắt đầu!",
	
    ["$AddCard"] = "[%card] đã thêm vào trò chơi",
    ["$RemoveCard"] = "[%card] đã loại bỏ khỏi trò chơi",
    
    
}

return CommonTranslationTable
