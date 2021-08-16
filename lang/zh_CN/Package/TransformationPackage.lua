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

-- translation for Standard General Package

return {
	["transformation"] = "Biến",
	["transformation_equip"] = "Biến",

	--魏
	["#xunyou"] = "Tào Ngụy Văn Mưu Chủ",
	["xunyou"] = "Tuân Du",
	["designer:xunyou"] = "淬毒",
	["illustrator:xunyou"] = "心中一凛",
	["qice"] = "Kỳ sách",
	[":qice"] = "Một lần trong giai đoạn hành động, có thể sử dụng tất cả bài trên tay như 1 lá công cụ phi thời gian (Số mục tiêu không vượt quá số lá bài trên tay), sau đó bạn có thể đổi Phó tướng",
	["zhiyu"] = "Trí Ngu",
	[":zhiyu"] = "Sau khi nhận sát thương, có thể rút 1 lá bài và mở ra tất cả bài trên tay, nếu tất cà đều cùng màu, nguồn sát thương bỏ đi 1 lá trên tay.",

	["bianhuanghou"] = "Biện Phu Nhân",
	["#bianhuanghou"] = "Đính Thế Chi Ung Dung",
	["illustrator:bianhuanghou"] = "雪君S",
	["wanwei"] = "Văn Ngụy",
	[":wanwei"] = "Khi bài của bạn bị người khác chỉ định do bị lấy hoặc bỏ đi, có thể đổi thành bạn tự chọn 1 lá của bạn.",
	["@wanwei"] = "Văn Ngụy: Hãy chọn %arg lá bài để mất",
	["yuejian"] = "Ước Kiệm",
	[":yuejian"] = "Đầu giai đoạn bỏ bài của người cùng phe, nếu lượt này họ không sử dụng bài chọn người khác phe làm mục tiêu, giới hạn trữ bài của họ trở thành giới hạn máu",

	-- 群
	["lijueguosi"] = "Lý Giác & Quách Tỵ",
	["#lijueguosi"] = "Phạm Tộ Khuynh Họa",
	["&lijueguosi"] = "Lý Giác Quách Tỵ",
	["illustrator:lijueguosi"] = "旭",
	["xiongsuan"] = "Hung Toán",
	[":xiongsuan"] = "Hạn Định Kỹ: Giai đoạn hành động, có thể bỏ 1 lá bài trên tay và chọn 1 người chơi cùng phe. Gây cho họ 1 sát thương, sau đó bạn rút 3 lá bài và chọn 1 Hạn Định Kỹ đã phát động của họ. Cuối lượt này, xem như Hạn định kỹ đã chọn chưa sử dụng.",
	["@xiongsuan-reset"] = "Hung Toán: Đặt lại 1 Hạn Định Kỹ của %dest",
	["#XiongsuanReset"] = "%from đặt lại Kỹ năng \"%arg\"",
	

	["huashencard"] = "Hồn",
	["#new_zuoci"] = "Quỷ Ảnh Thần Đạo",
	["new_zuoci"] = "Tả Từ",
	["illustrator:new_zuoci"] = "Lu Yang",
	["yigui"] = "Dịch Quỷ",
	[":yigui"] = "1. Sau khi bạn mở tướng này lần đầu tiên, bạn nhận 2 lá tướng thừa ngẫu nhiên đặt lên tướng này, gọi là [Hồn].\n"..
	"2. Khi bạn cần sử dụng bài cơ bản hoặc công cụ phổ thông, nếu bạn chưa sử dụng lá đó theo phương pháp này, bạn có thể bỏ 1 [Hồn], xem như sử dụng lá đó. Không thể chọn mục tiêu là người không cùng thế lực với [Hồn].\n"..
	"3. Bạn có thể sử dụng [Thiểm]/[Vô Giả Khả Kích] theo cách này.",

	["jihun"] = "Cấp Hồn",
	[":jihun"] = "Sau khi nhận sát thương hoặc sau khi 1 người cùng thế lực với bạn thoát khỏi trạng thái hấp hối và còn sống, bạn có thể nhận 1 lá tướng thừa ngẫu nhiên đặt lên tướng này.",
	
	["#dropHuashenDetail"] = "%from đã bỏ [Hồn] %arg",
	["#GetHuashenDetail"] = "%from đã nhận [Hồn] %arg",
	["#VeiwHuashenDetail"] = "%from đang xem %arg từ chồng tướng",
	["#dropHuashen"] = "%from đã bỏ [Hồn] %arg",
	["#GetHuashen"] = "%from đã nhận [Hồn] %arg ",
	["#VeiwHuashen"] = "%from đang xem %arg từ chồng tướng",



	-- 蜀
	["shamoke"] = "Sa Ma Kha",
	["#shamoke"] = "Ngũ Kê Man Vương",
	["illustrator:shamoke"] = "LiuHeng",
	["jili"] = "Tật Lê",
	[":jili"] = "Khi sử dụng hoặc đánh ra bài, nếu tổng số bài bạn đã sử dụng hoặc đánh ra trong lượt này là X, có thể rút X lá (X là tầm đánh của bạn).",

	["masu"] = "Mã Tắc",
	["#masu"] = "Duy Ác Kình Mưu",
	["illustrator:masu"] = "蚂蚁君",
	["sanyao"] = "Tán Dao",
	[":sanyao"] = "Một lần trong giai đoạn hành động, có thể bỏ đi 1 lá và chọn người nhiều máu nhất, gây 1 sát thương cho họ.",
	["zhiman"] = "Chế Man",
	[":zhiman"] = "Khi bạn gây sát thương cho người khác, có thể chặn sát thương này lại, nếu làm vậy, thu lấy 1 lá trong vùng trang bị hoặc phán xét của họ; nếu họ cùng thế lực với bạn, có thể lệnh họ đổi Phó tướng.",
	["#Zhiman"] = "%from đã chặn sát thương tới %to",
	["@zhiman-ask"] = "Có lệnh mục tiêu đổi Phó tướng?",
	["zhiman-second"] = "Chế Man",

	-- 吴
	["#lingtong"] = "Hào Tình Liệt Đảm",
	["lingtong"] = "Lăng Thống",
	["illustrator:lingtong"] = "F.源",
	["xuanlue"] = "Toàn Lược",
	[":xuanlue"] = "Sau khi bạn mất bài ở vùng trang bị, có thể bỏ 1 lá của người khác.",
	["xuanlue-invoke"] = "Có thể kích hoạt \"Toàn Lược\" để bỏ 1 lá của người khác.",
	["yongjin"] = "Dũng Tiến",
	[":yongjin"] = "Hạn định kỹ, giai đoạn hành động, có thể di chuyển tối đa 3 trang bị trên bàn chơi.",
	["@brave"] = "Dũng Tiến",
	["@yongjin-next"] = "Dũng Tiến: Di chuyển 1 trang bị trên bàn.",
	["~yongjin_next"] = "Chọn 1 người chơi có trang bị, sau đó chọn 1 người chơi để nhận trang bị rồi bấm \"Xác định\"",

	["lvfan"] = "Lữ Phạm",
	["#lvfan"] = "Trung Đốc Lượng Trực",
	["illustrator:lvfan"] = "铭zmy",
	["diaodu"] = "Điều Độ",
	["#diaodu-draw"] = "Điều Độ",
	[":diaodu"] = "Khi 1 người cùng thế lực sử dụng trang bị, họ có thể rút 1 lá. Đầu giai đoạn hành động, có thể thu lấy 1 lá trong vùng trang bị của 1 người cùng thế lực, sau đó có thể giao cho 1 người khác ngoài họ.",
	["@diaodu"] = "Có thể kích hoạt \"Điều Độ\" để thu lấy 1 trang bị của người cùng thế lực.",
	["@diaodu-give"] = "Điều Độ: có thể giao [%arg] cho 1 người khác.",
	["@diaodu-draw"] = "Có thể kích hoạt \"Điều Độ\" của %src, rút 1 lá.",
	["diancai"] = "Điển Tài",
	[":diancai"] = "Kết thúc giai đoạn hành động của người khác, nếu bạn đã mất ít nhất X lá (X là số máu của bạn và tối thiểu 1), bạn có thể bổ sung bài trên tay tới giới hạn máu; Nếu làm vậy, bạn có thể đổi Phó tướng.",

	["#lord_sunquan"] = "虎踞江东",
	["lord_sunquan"] = "孙权-君",
	["&lord_sunquan"] = "孙权",
	["illustrator:lord_sunquan"] = "瞌瞌一休",
	["jiahe"] = "嘉禾",
	[":jiahe"] = "君主技，锁定技，你拥有\"缘江烽火图\"。\n\n#\"缘江烽火图\"\n" ..
					"①一名吴势力角色的出牌阶段限一次，其可以将一张装备牌置于“缘江烽火图”上，称为“烽火”。\n" ..
					"②一名吴势力角色的准备阶段开始时，其角色可根据“烽火”的数量选择并获得一项技能直到回合结束:一张或以上，英姿；两张或以上，好施；三张或以上，涉猎；四张或以上，度势；五张或以上，可以额外选择一项。\n" ..
					"③当你受到渠道为【杀】或锦囊牌的伤害后，你将一张“烽火”置入弃牌堆。",	
					
	["lianzi"] = "敛资",
	[":lianzi"] = "出牌阶段限一次，你可弃置一张手牌▶你亮出牌堆顶的X张牌（X为所有吴势力角色的装备区里的牌数与“烽火”数之和），获得你以此法亮出的这些牌中的所有你以此法弃置的牌类别相同的牌。若你以此法得到的牌数大于3，你失去〖敛资〗，获得〖制衡〗。",
	["jubao"] = "聚宝",
	[":jubao"] = "锁定技，①其他角色不能获得你的装备区里的宝物牌。②结束阶段开始时，若有装备区里有【定澜夜明珠】的角色或弃牌堆里有【定澜夜明珠】，你摸一张牌，然后获得其一张牌。",
	["@lianzi"] = "选择并获得与你弃置的牌相同类别的牌",
	["lianzi#up"] = "牌堆",
	["lianzi#down"] = "获得",
	["flamemap"] = "缘江烽火图",
	["flame_map"] = "烽火",
	[":flamemap"] = "①一名吴势力角色的出牌阶段限一次，其可以将一张装备牌置于“缘江烽火图”上，称为“烽火”。\n" ..
					"②一名吴势力角色的准备阶段开始时，其角色可根据“烽火”的数量选择并获得一项技能直到回合结束:一张或以上，英姿；两张或以上，好施；三张或以上，涉猎；四张或以上，度势；五张或以上，可以额外选择一项。\n" ..
					"③当你受到渠道为【杀】或锦囊牌的伤害后，你将一张“烽火”置入弃牌堆。\n" ,
	["&flamemap"] = "出牌阶段限一次，你可以将一张装备牌置于“缘江烽火图”上，称为“烽火”。",
	["@flamemap"] = "缘江烽火图：请选择要弃置的“烽火”",
	["@flamemap-choose"] = "缘江烽火图：请选择要获得的技能",
	["yingzi_flamemap"] = "英姿",
	["haoshi_flamemap"] = "好施",
	["duoshi_flamemap"] = "度势",
	
	["#haoshi_flamemap-give"] = "好施[给牌]",
	
	["shelie"] = "涉猎",
	[":shelie"] = "摸牌阶段开始时，你可令额定摸牌数改为0▶你亮出牌堆顶的五张牌，获得其中每种花色的牌各一张。",
	["@shelie"] = "请选择每种花色的牌各一张，其余的弃置",
	["shelie#up"] = "置入弃牌堆",
	["shelie#down"] = "获得的牌",

	["LuminousPearl"] = "Định Lan Dạ Minh Châu",
	[":LuminousPearl"] = "Bài Trang bị - Bảo vật\n\nKỹ năng\n" ..
	                     "Tỏa định kỹ, nếu bạn không có \"Chế Hành\", xem như bạn có \"Chế Hành\"; nếu bạn đã có \"Chế Hành\", không giới hạn số lá bỏ đi trong 1 lần kích hoạt \"Chế Hành\"",
	["zhihenglp"] = "Chế Hành",

	["transform"] = "Đổi Phó tướng",
	["@transform-ask"] = "%arg: Có thể đổi Phó tướng",
	["GameRule:ShowGeneral"] = "Chọn 1 tướng để thay đổi.",
}