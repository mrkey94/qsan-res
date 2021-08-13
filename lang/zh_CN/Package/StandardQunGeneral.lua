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
	-- 群雄
	["#huatuo"] = "Thần Y",
	["huatuo"] = "Hoa Đà",
	["chuli"] = "Trừ Lệ",
	["illustrator:huatuo"] = "琛·美弟奇",
	
	[":chuli"] = "Một lần trong giai đoạn hành động, nếu bạn có bài, bạn có thể chọn tối đa 3 người khác thể lực với nhau và có bài, bạn bỏ đi 1 lá bài của bạn và họ. Sau khi kết toán, người mất đi bài chất Bích rút 1 lá.",
	["jijiu"] = "Cấp Cứu",
	[":jijiu"] = "Ngoài lượt của bạn, có thể sử dụng bài Đỏ như [Đào]",

	["#lvbu"] = "Vũ Đích Hóa Thân",
	["lvbu"] = "Lữ Bố",
	["illustrator:lvbu"] = "LiuHeng",
	["wushuang"] = "Vô Song",
	[":wushuang"] = "Tỏa định kỹ: Sau khi sử dụng [Sát] chỉ định mục tiêu, mục tiêu phải sử dụng 2 [Thiểm] để triệt tiêu thẻ [Sát]; Người chơi cùng bạn [Quyết Đấu] phải đánh ra 2 [Sát] mỗi lần.",
	["@wushuang-slash-1"] = "%src [Quyết Đấu] với bạn, bạn phải đánh ra 2 [Sát] liên tiếp.",
	["@wushuang-slash-2"] = "%src [Quyết Đấu] với bạn, bạn phải đánh ra thêm 1 [Sát] khác.",

	["#diaochan"] = "Tuyệt Thế Đích Vũ Cơ",
	["diaochan"] = "Điêu Thuyền",
	["illustrator:diaochan"] = "LiuHeng",
	["lijian"] = "Ly Gián",
	[":lijian"] = "Một lần trong giai đoạn hành động, bạn có thể bỏ 1 lá bài và lựa chọn 2 người nam khác, xem như người chọn sau sử dụng [Quyết Đấu] lên người chọn trước.",
	["biyue"] = "Bế Nguyệt",
	[":biyue"] = "Cuối lượt của bạn, có thể rút 1 lá bài",

	["#yuanshao"] = "Cao Quý Đính Danh Môn",
	["yuanshao"] = "Viên Thiệu",
	["illustrator:yuanshao"] = "北辰菌",
	["luanji"] = "Loạn Kích",
	[":luanji"] = "Giai đoạn hành động, bạn có thể sử dụng 2 lá bài trên tay như [Vạn Tiễn Tề Phát]. Bạn không thể sử dụng lá bài cùng chất với nhưng lá bạn đã sử dụng theo cách này trong lượt này; khi người cùng thế lực với bạn kết toán [Thiểm] để hưởng ứng, họ có thể rút 1 lá.",
	["#luanji-draw"] = "Loạn Kích (Rút bài)",
	["@luanji-draw"] = "Loạn Kích: Rút 1 lá?",
	["#LuanjiDraw"] = "%from hưởng ứng \"%arg\" và có thể rút 1 lá.",

	["#yanliangwenchou"] = "Hổ Lang Huynh Đệ",
	["yanliangwenchou"] = "Nhan Lương & Văn Xú",
	["&yanliangwenchou"] = "Nhan Lương Văn Xú",
	["shuangxiong"] = "Song Hùng",
	[":shuangxiong"] = "Giai đoạn rút bài, bạn có thể không rút bài, tiến hành phán xét, sau đó thu lấy lá phán xét. Trong lượt này, có thể sử dụng bài trên tay không cùng màu với lá phán xét như [Quyết Đấu].",
	["#shuangxiong"] = "Song Hùng (Thu lấy lá phán xét)",

	["#jiaxu"] = "Lãnh Khốc Đích Độc Sĩ",
	["illustrator:jiaxu"] = "绘聚艺堂",
	["jiaxu"] = "Giả Hủ",
	["wansha"] = "Hoàn Sát",
	[":wansha"] = "Tỏa định kỹ: Trong lượt của bạn, khi có người vào trạng thái hấp hối, bạn lệnh người khác không ở trạng thái hấp hối không được sử dụng [Đào]",
	["weimu"] = "Duy Mạc",
	[":weimu"] = "Tỏa định kỹ: Khi bạn trở thành mục tiêu của công cụ Đen, hủy bỏ mục tiêu đối với bạn.",
	["luanwu"] = "Loạn Vũ",
	[":luanwu"] = "Hạn định kỹ: Giai đoạn hành động, bạn có thể lệnh cho tất cả người khác sử dụng [Sát] lên người chơi có khoảng cách nhỏ nhất hoặc mất 1 máu.",
	["@chaos"] = "Loạn Vũ",
	["@luanwu-slash"] = "Hãy sử dụng [Sát] để hưởng ứng \"Loạn Vũ\"",
	["#WanshaOne"] = "%from đã kích hoạt \"%arg\", chỉ %from có thể cứu %from",
	["#WanshaTwo"] = "%from đã kích hoạt \"%arg\", chỉ %from và %to có thể cứu %from",

	["#pangde"] = "Nhân Mã Nhất Thể",
	["pangde"] = "Bàng Đức",
	["illustrator:pangde"] = "凝聚永恒",
	["mashu_pangde"] = "Mã Thuật",
	["jianchu"] = "Kiện Xuất",
	[":jianchu"] = "Sau khi sử dụng [Sát] chỉ định mục tiêu, bạn có thể bỏ 1 lá của họ; Nếu lá bỏ đi là trang bị. họ không thể sử dụng [Thiểm] để hưởng ứng; Nếu không phải trang bị, họ thu lấy [Sát] bạn sử dụng.",

	["#zhangjiao"] = "Thiên Công Tướng Quân",
	["zhangjiao"] = "Trương Giác",
	["illustrator:zhangjiao"] = "LiuHeng",
	["leiji"] = "Lôi Kích",
	[":leiji"] = "Khi sử dụng/đánh ra [Thiểm], bạn có thể lệnh 1 người chơi khác tiến hành phán xét, nếu kết quả là chất Bích, bạn gây 2 sát thương Lôi cho họ.",
	["leiji-invoke"] = "Bạn có thể kích \"Lôi Kích\" và chọn 1 người chơi khác",
	["guidao"] = "Quỷ Đạo",
	[":guidao"] = "Trước khi phán xét của 1 người chơi có hiệu lực, bạn có thể đánh ra 1 lá màu Đen để thay thế lá phán xét đó và thu lấy lá phán xét ban đầu.",
	["@guidao-card"] = CommonTranslationTable["@askforretrial"],
	["~guidao"] = "Chọn 1 lá màu đen và bấm Xác Định",

	["#caiwenji"] = "Dị Hương Đích Cô Nữ",
	["caiwenji"] = "Thái Văn Cơ",
	["illustrator:caiwenji"] = "SoniaTang",
	["beige"] = "Bi ca",
	[":beige"] = "Sau khi 1 người chơi nhận sát thương bởi lá [Sát], bạn có thể bỏ 1 lá, lệnh cho họ tiến hành phán xét. Nếu kết quả có chất: Cơ: họ hồi 1 máu; Rô: họ rút 2 lá; Chuồn: nguồn sát thương bỏ 2 lá; Bích: nguồn sát thương chồng tướng",
	["@beige"] = "Có thể bỏ 1 lá để kích \"Bi Ca\"",
	["duanchang"] = "Đoạn Trường",
	[":duanchang"] = "Tỏa định kỹ: Khi bạn trận vong, bạn chọn 1 tướng của người đã giết bạn, họ mất đi kỹ năng của tướng đó.",
	["@duanchang"] = "Đoạn Trường",
	["#DuanchangLoseHeadSkills"] = "%from đã kích hoạt \"%arg\"， %to đã mất kỹ năng của Chủ tướng",
	["#DuanchangLoseDeputySkills"] = "%from đã kích hoạt \"%arg\"， %to đã mất kỹ năng của Phó tướng",

	["#mateng"] = "Trì Sính Tây Thùy",
	["mateng"] = "Mã Đằng",
	["illustrator:mateng"] = "DH",
	["mashu_mateng"] = "Mã Thuật",
	["xiongyi"] = "Hùng Dị",
	[":xiongyi"] = "Hạn định kỹ: Giai đoạn hành động, bạn có thể lệnh cho tất cả người chơi cùng thế lực rút 3 lá; Sau đó, nếu thế lực của bạn là một trong những thế lực ít người nhất, bạn hồi 1 máu.",
	["@arise"] = "Hùng Dị",

	["#kongrong"] = "Lẫm Nhiên Trọng Nghĩa",
	["kongrong"] = "Khổng Dung",
	["illustrator:kongrong"] = "苍月白龙",
	["mingshi"] = "Danh Sĩ",
	[":mingshi"] = "Tỏa định kỹ, Khi bạn nhận sát thương, nếu nguồn sát thương có tướng chưa mở, sát thương -1.",
	["lirang"] = "Lễ Nhượng",
	[":lirang"] = "Sau khi bạn bỏ bài, bạn có thể giao tùy ý cho người khác.",
	["@lirang-distribute"] = "Lễ Nhượng: Bạn có thể giao bài bỏ cho người khác.",
	["#lirang"] = "Lễ nhượng",
	["#Mingshi"] = "%from đã kích hoạt \"<font color=\"yellow\"><b>Danh Sĩ</b></font>\", sát thương từ %arg đến %arg2 -1.",

	["#jiling"] = "Trọng Gia Đích Chủ Tướng",
	["jiling"] = "Kỷ Linh",
	["illustrator:jiling"] = "樱花闪乱",
	["shuangren"] = "Song Nhận",
	[":shuangren"] = "Đầu giai đoạn hành động, bạn có thể đấu điểm với 1 người. Nếu bạn thắng, xem như bạn sử dụng [Sát] lên 1 người chơi cùng thế lực với họ. Nếu không thắng, bạn kết thúc giai đoạn hành động.",
	["@shuangren"] = "Bạn có thể kích \"Song Nhận\"",

	["#tianfeng"] = "Hà Bắc Côi Kiệt",
	["tianfeng"] = "Điền Phong",
	["illustrator:tianfeng"] = "地狱许",
	["sijian"] = "Tử Gián",
	[":sijian"] = "Khi bạn mất đi lá cuối cùng trên tay, có thể bỏ 1 lá của người khác.",
	["sijian-invoke"] = "Bạn có thể kích \"Tử Gián\"<br/>Chọn 1 người khác có bài, bấm Xác Định.<br/>",
	["suishi"] = "Tùy Thế",
	[":suishi"] = "Tỏa định kỹ: Khi người khác  vào trạng thái hấp hồi, nếu nguồn sát thương cùng thế lực với bạn, bạn rút 1 lá. Khi người khác cùng thế lực trận vong, bạn mất 1 máu",

	["#panfeng"] = "Liên Quân Thượng Tướng",
	["panfeng"] = "Phạn Phụng",
	["illustrator:panfeng"] = "Yi章",
	["kuangfu"] = "Cuồng Phủ",
	[":kuangfu"] = "Sau khi bạn gây sát thương cho mục tiêu của [Sát], bạn có thể chọn 1 trang bị ở vùng trang bị của họ, bạn chọn di chuyển đến vùng trang bị của bạn hoặc bỏ lá đó.",
	["#kuangfu"] = "Cuồng Phủ %log",
	["kuangfu:throw"] = "Bỏ đi",
	["kuangfu:move"] = "Chuyển qua bạn",
	["kuangfu_equip"] = "Cuồng Phủ",
	["kuangfu_equip:0"] = "Vũ Khí",
	["kuangfu_equip:1"] = "Phòng Cụ",
	["kuangfu_equip:2"] = "Ngựa +1",
	["kuangfu_equip:3"] = "Ngựa -1",
	["kuangfu_equip:4"] = "Bảo Vật",

	["#zoushi"] = "Hoặc Tâm Chi Mị",
	["zoushi"] = "Trâu Thị",
	["illustrator:zoushi"] = "Tuu.",
	["huoshui"] = "Họa Thủy",
	[":huoshui"] = "Tỏa định kỹ: Trong lượt của bạn, người chơi khác không thể mở tướng",
	["qingcheng"] = "Khuynh Thành",
	[":qingcheng"] = "Giai đoạn hành động, bạn có thể bỏ 1 lá Đen và chọn 1 người khác đã mở tất cả tướng, úp 1 tướng của họ. Nếu lá bạn bỏ là trang bị, bạn có thể chọn 1 người khác và lặp lại quá trình.",
	["qingcheng-second"] = "Khuynh thành: Bạn có thể úp tướng của 1 người khác.",
	["#QingchengSecond"] = "%from đã kích hoạt \"%arg\" lên %to",
}

