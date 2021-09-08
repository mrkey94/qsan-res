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
	["qice"] = "Kỳ sách",
	[":qice"] = "Một lần trong giai đoạn hành động, có thể sử dụng tất cả bài trên tay như 1 lá công cụ phi thời gian (Số mục tiêu không vượt quá số lá bài trên tay), sau đó bạn có thể đổi Phó tướng",
	["zhiyu"] = "Trí Ngu",
	[":zhiyu"] = "Sau khi nhận sát thương, có thể rút 1 lá bài và mở ra tất cả bài trên tay, nếu tất cà đều cùng màu, nguồn sát thương bỏ đi 1 lá trên tay.",

	["bianhuanghou"] = "Biện Phu Nhân",
	["#bianhuanghou"] = "Đính Thế Chi Ung Dung",
	["wanwei"] = "Văn Ngụy",
	[":wanwei"] = "Khi bài của bạn bị người khác chỉ định do bị lấy hoặc bỏ đi, có thể đổi thành bạn tự chọn 1 lá của bạn.",
	["@wanwei"] = "Văn Ngụy: Hãy chọn %arg lá bài để mất",
	["yuejian"] = "Ước Kiệm",
	[":yuejian"] = "Đầu giai đoạn bỏ bài của người cùng phe, nếu lượt này họ không sử dụng bài chọn người khác phe làm mục tiêu, giới hạn trữ bài của họ trở thành giới hạn máu",

	-- 群
	["lijueguosi"] = "Lý Giác & Quách Tỵ",
	["#lijueguosi"] = "Phạm Tộ Khuynh Họa",
	["&lijueguosi"] = "Lý Giác Quách Tỵ",
	["xiongsuan"] = "Hung Toán",
	[":xiongsuan"] = "Hạn Định Kỹ: Giai đoạn hành động, có thể bỏ 1 lá bài trên tay và chọn 1 người chơi cùng phe. Gây cho họ 1 sát thương, sau đó bạn rút 3 lá bài và chọn 1 Hạn Định Kỹ đã phát động của họ. Cuối lượt này, xem như Hạn định kỹ đã chọn chưa sử dụng.",
	["@xiongsuan-reset"] = "Hung Toán: Đặt lại 1 Hạn Định Kỹ của %dest",
	["#XiongsuanReset"] = "%from đặt lại Kỹ năng \"%arg\"",
	

	["huashencard"] = "Hồn",
	["#new_zuoci"] = "Quỷ Ảnh Thần Đạo",
	["new_zuoci"] = "Tả Từ",
	["yigui"] = "Dịch Quỷ",
	[":yigui"] = "1. Sau khi bạn mở tướng này lần đầu tiên, bạn nhận 2 lá tướng thừa ngẫu nhiên đặt lên tướng này, gọi là [Hồn].\n"..
	"2. Khi bạn cần sử dụng bài cơ bản hoặc công cụ phổ thông ngoại trừ [Thiểm] và [Vô Giải Khả Kích], nếu bạn chưa sử dụng lá đó theo phương pháp này, bạn có thể bỏ 1 [Hồn], xem như sử dụng lá đó. Người không cùng thế lực với [Hồn] không thể trở thành mục tiêu.\n",

	["jihun"] = "Cấp Hồn",
	[":jihun"] = "Sau khi nhận sát thương hoặc sau khi 1 người không cùng thế lực với bạn thoát khỏi trạng thái hấp hối, bạn có thể nhận 1 lá tướng thừa ngẫu nhiên đặt lên tướng này, gọi là [Hồn].",
	
	["#dropHuashenDetail"] = "%from đã bỏ [Hồn] %arg",
	["#GetHuashenDetail"] = "%from đã nhận [Hồn] %arg",
	["#VeiwHuashenDetail"] = "%from đang xem %arg từ chồng tướng",
	["#dropHuashen"] = "%from đã bỏ [Hồn] %arg",
	["#GetHuashen"] = "%from đã nhận [Hồn] %arg ",
	["#VeiwHuashen"] = "%from đang xem %arg từ chồng tướng",



	-- 蜀
	["shamoke"] = "Sa Ma Kha",
	["#shamoke"] = "Ngũ Kê Man Vương",
	["jili"] = "Tật Lê",
	[":jili"] = "Khi sử dụng hoặc đánh ra bài, nếu tổng số bài bạn đã sử dụng hoặc đánh ra trong lượt này là X, có thể rút X lá (X là tầm đánh của bạn).",

	["masu"] = "Mã Tắc",
	["#masu"] = "Duy Ác Kình Mưu",
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
	["xuanlue"] = "Toàn Lược",
	[":xuanlue"] = "Sau khi bạn mất bài ở vùng trang bị, có thể bỏ 1 lá của người khác.",
	["xuanlue-invoke"] = "Có thể phát động \"Toàn Lược\" để bỏ 1 lá của người khác.",
	["yongjin"] = "Dũng Tiến",
	[":yongjin"] = "Hạn định kỹ, giai đoạn hành động, có thể di chuyển tối đa 3 trang bị trên bàn chơi.",
	["@brave"] = "Dũng Tiến",
	["@yongjin-next"] = "Dũng Tiến: Di chuyển 1 trang bị trên bàn.",
	["~yongjin_next"] = "Chọn 1 người chơi có trang bị, sau đó chọn 1 người chơi để nhận trang bị rồi bấm \"Xác định\"",

	["lvfan"] = "Lữ Phạm",
	["#lvfan"] = "Trung Đốc Lượng Trực",
	["diaodu"] = "Điều Độ",
	["#diaodu-draw"] = "Điều Độ",
	[":diaodu"] = "Khi 1 người cùng thế lực sử dụng trang bị, họ có thể rút 1 lá. Đầu giai đoạn hành động, có thể thu lấy 1 lá trong vùng trang bị của 1 người cùng thế lực, sau đó có thể giao cho 1 người khác ngoài họ.",
	["@diaodu"] = "Có thể phát động \"Điều Độ\" để thu lấy 1 trang bị của người cùng thế lực.",
	["@diaodu-give"] = "Điều Độ: có thể giao [%arg] cho 1 người khác.",
	["@diaodu-draw"] = "Có thể phát động \"Điều Độ\" của %src, rút 1 lá.",
	["diancai"] = "Điển Tài",
	[":diancai"] = "Kết thúc giai đoạn hành động của người khác, nếu bạn đã mất ít nhất X lá (X là số máu của bạn và tối thiểu 1), bạn có thể bổ sung bài trên tay tới giới hạn máu; Nếu làm vậy, bạn có thể đổi Phó tướng.",

	["#lord_sunquan"] = "Hổ Cư Giang Đông",
	["lord_sunquan"] = "Tôn Quyền - Quân",
	["&lord_sunquan"] = "Tôn Quyền",
	["jiahe"] = "Gia Hỏa",
	[":jiahe"] = "Quân chủ kỹ, Tỏa định kỹ, Bạn có \"Duyên Giang Phong Hỏa Đồ\".\n\n#\"Duyên Giang Phong Hỏa Đồ\"\n" ..
					"1. Một lần trong giai đoạn hành động của mỗi người thế lực Ngô, họ có thể đặt 1 trang bị lên \"Duyên Giang Phong Hỏa Đồ\", gọi là [Phong Hỏa].\n" ..
					"2. Đầu giai đoạn chuẩn bị của người thế lực Ngô, họ có thể nhận 1 kỹ năng tùy theo số [Phong Hỏa].\n" ..
					"  1 trở lên: \"Anh Tư\".\n" ..
					"  2 trở lên: \"Hảo Thi\".\n" ..
					"  3 trở lên: \"Thiệp Liệp\".\n" ..
					"  4 trở lên: \"Độ Thế\".\n" ..
					"Khi có 5 [Phong Hỏa] trở lên, nhận 2 kỹ năng thay vì 1.\n" ..
					"3. Tỏa định kỹ, sau khi bạn nhận sát thương bởi [Sát] hoặc công cụ, đưa 1 [Phong Hỏa] vào chồng bài bỏ.",	
					
	["lianzi"] = "Liễm Tư",
	[":lianzi"] = "Một lần trong giai đoạn hành động, có thể bỏ 1 lá trên tay, sau đó mở X là đầu chồng bài (X là số [Phong Hỏa] cộng với số lá trong vùng trang bị của những người thế lực Ngô), bạn thu lấy những lá cùng loại với lá bạn bỏ, đưa những lá còn lại vào chồng bài bỏ; Nếu trong 1 lần bạn thu lấy hơn 3 lá, bạn mất kỹ năng này và nhận \"Chế Hành\".",
	["jubao"] = "Tư Bảo",
	[":jubao"] = "Tỏa định kỹ, người khác không thể thu lấy bảo vật trong khu trang bị của bạn; Giai đoạn kết thúc, nếu trên bàn chơi hoặc chồng bài bỏ có [Định Lan Dạ Minh Châu], bạn rút 1 lá, sau đó thu lấy 1 lá của người đang trang bị [Định Lan Dạ Minh Châu].",
	["@lianzi"] = "Chọn và lấy những lá cùng loại với lá bạn bỏ",
	["lianzi#up"] = "Bài bỏ",
	["lianzi#down"] = "Thu lấy",
	["flamemap"] = "Phong Hỏa Đồ",
	["flame_map"] = "Phong Hỏa",
	[":flamemap"] = "1. Một lần trong giai đoạn hành động của mỗi người thế lực Ngô, họ có thể đặt 1 trang bị lên \"Duyên Giang Phong Hỏa Đồ\", gọi là [Phong Hỏa].\n" ..
					"2. Đầu giai đoạn chuẩn bị của người thế lực Ngô, họ có thể nhận 1 kỹ năng tùy theo số [Phong Hỏa].\n" ..
					"  1 trở lên: \"Anh Tư\".\n" ..
					"  2 trở lên: \"Hảo Thi\".\n" ..
					"  3 trở lên: \"Thiệp Liệp\".\n" ..
					"  4 trở lên: \"Độ Thế\".\n" ..
					"Khi có 5 [Phong Hỏa] trở lên, nhận 2 kỹ năng thay vì 1.\n" ..
					"3. Tỏa định kỹ, sau khi bạn nhận sát thương bởi [Sát] hoặc công cụ, đưa 1 [Phong Hỏa] vào chồng bài bỏ.",	
	
	["&flamemap"] = "Có thể đặt 1 trang bị lên \"Duyên Giang Phong Hỏa Đồ\", trở thành [Phong Hỏa]",
	["@flamemap"] = "Duyên Giang Phong Hỏa Đồ: Chọn [Phong Hỏa] để bỏ đi.",
	["@flamemap-choose"] = "Duyên Giang Phong Hỏa Đồ: Chọn kỹ năng muốn nhận.",
	["yingzi_flamemap"] = "Anh Tư",
	["haoshi_flamemap"] = "Hảo Thi",
	["duoshi_flamemap"] = "Độ Thế",
	
	["#haoshi_flamemap-give"] = "Hảo Thi: Giao bài",
	
	["shelie"] = "Thiệp Liệp",
	[":shelie"] = "Đầu giai đoạn rút bài, có thể không rút bài, đổi thành xem 5 lá đầu chồng bài rút, giữ lại trong đó mỗi chất 1 lá, bỏ đi những lá còn lại.",
	["@shelie"] = "Chọn mỗi chất 1 lá và bỏ những lá còn lại",
	["shelie#up"] = "Bỏ đi",
	["shelie#down"] = "Thu lấy",

	["LuminousPearl"] = "Định Lan Dạ Minh Châu",
	[":LuminousPearl"] = "Bài Trang bị - Bảo vật\n\nKỹ năng\n" ..
	                     "Tỏa định kỹ, nếu bạn không có \"Chế Hành\", xem như bạn có \"Chế Hành\"; nếu bạn đã có \"Chế Hành\", không giới hạn số lá bỏ đi trong 1 lần phát động \"Chế Hành\"",
	["zhihenglp"] = "Chế Hành",

	["transform"] = "Đổi Phó tướng",
	["@transform-ask"] = "%arg: Có thể đổi Phó tướng",
	["GameRule:ShowGeneral"] = "Chọn 1 tướng để thay đổi.",

	["illustrator:xunyou"] = "心中一凛",
	["illustrator:bianhuanghou"] = "雪君S",
	["illustrator:lijueguosi"] = "旭",
	["illustrator:new_zuoci"] = "吕阳",
	["illustrator:shamoke"] = "LiuHeng",
	["illustrator:masu"] = "蚂蚁君",
	["illustrator:lingtong"] = "F.源",
	["illustrator:lvfan"] = "铭zmy",
	["illustrator:lord_sunquan"] = "瞌瞌一休",


	["designer:xunyou"] = "Poisoning",
	["designer:lijueguosi"] = "Thiên Huyễn",
	["designer:new_zuoci"] = "Tiêu Dao Ngư Thúc",
	["designer:shamoke"] = "HanXu",
	["designer:masu"] = "点点",
	["designer:lingtong"] = "HanXu",
	["designer:lvfan"] = "HanXu",
	["designer:lord_sunquan"] = "HanXu",


}
