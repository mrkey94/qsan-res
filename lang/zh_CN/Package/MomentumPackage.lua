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

-- translation for Hegemony Momentum Package

return {
	["momentum"] = "Thế",
	["momentum_equip"] = "Thế",

	["#lidian"] = "Thâm Minh Đại Nghĩa",
	["lidian"] = "Lý Điển",
	["xunxun"] = "Tuân Tuân",
	[":xunxun"] = "Đầu giai đoạn rút bài, có thể xem trước 4 lá trên chồng bài, sau đó đặt 2 lá trong số đó lên đầu chồng bài, còn lại đặt xuống đáy chồng bài.",
	["@xunxun"] = "Đặt 2 lá lên đầu chồng bài, còn lại xếp vào đáy chồng bài.",
	["xunxun#up"] = "Đáy chồng bài",
	["xunxun#down"] = "Đầu chồng bài",
	["#XunxunResult"] = "Kết quả \"<font color=\"yellow\"><b>Tuân Tuân</b></font>\" của %from: <font color=\"yellow\"><b>2</b></font> trên <font color=\"yellow\"><b>2</b></font> dưới",
	["wangxi"] = "Vong Khích",
	[":wangxi"] = "Sau khi gây/nhận 1 sát thương cho/từ người chơi khác, bạn có thể cùng họ bốc 1 lá bài.",

	["#zangba"] = "Tiết Độ Thanh Từ",
	["zangba"] = "Tang Bá",
	["hengjiang"] = "Hoành Giang",
	[":hengjiang"] = "Sau khi nhận 1 sát thương, có thể làm người chơi đang trong này giảm 1 giới hạn trữ bài. Cuối lượt, nếu ở giai đoạn bỏ bài, họ không bỏ lá nào, bạn bốc 1 lá bài.",
	["@hengjiang"] = "Hoành Giang",
	["#HengjiangDraw"] = "%from không bỏ bài, %to phát động hiệu quả 【%arg】",
	["#hengjiang-draw"] = "Hoành Giang (Rút bài)",

	["#madai"] = "Lâm Nguy Thụ Mệnh",
	["madai"] = "Mã Đại",
	["mashu_madai"] = "Mã Thuật",
	["qianxi"] = "Tiềm Tập",
	[":qianxi"] = "Giai đoạn chuẩn bị, có thể rút 1 lá, sau đó bỏ 1 lá và chọn một người chơi trong tầm 1, họ không thể sử dụng hoặc đánh ra bài trên tay cùng màu với bài bạn đã bỏ đến hết lượt này.",
	["@qianxi-discard"] = "Tiềm tập: Chọn 1 lá để bỏ.",
	["@qianxi-choose"] = "Tiềm tập: Chọn người chơi không thể sử dụng hoặc đánh ra bài màu %arg trong lượt này.",
	["#Qianxi"] = "Phát động hiệu quả <font color=\"yellow\"><b>\"Tiềm Tập\"</b></font>, trong lượt %from không thể dùng hoặc xuất ra bài %arg",
	["@qianxi_red"] = "Tiềm Tập (Đỏ)",
	["@qianxi_black"] = "Tiềm Tập (Đen)",

	["#mifuren"] = "Loạn Thế Trầm Hương",
	["mifuren"] = "My Phu Nhân",
	["guixiu"] = "Khuê Tú",
	[":guixiu"] = "Sau khi mở tướng này, bạn có thế rút 2 lá bài. Sau khi tướng này bị loại bỏ, bạn có thể hồi 1 máu.",
	["guixiu:draw"] = "Phát động \"Khuê Tú\", bốc 2 lá bài.",
	["guixiu:recover"] = "Phát động \"Khuê Tú\", hồi 1 máu.",
	["cunsi"] = "Tồn Tự",
	[":cunsi"] = "Giai đoạn hành động, có thể loại bỏ tướng này. Sau đó, chọn 1 người chơi nhận kỹ năng \"Dũng Quyết\"; nếu người đó không phải bạn, họ rút 2 lá bài.",
	["yongjue"] = "Dũng Quyết",
	[":yongjue"] = "Nếu người cùng thế lực với bạn trong giai đoạn hành động sử dụng lá đầu tiên lá lá [Sát], sau khi lá [Sát] này kết toán xong, bạn có thể cho người đó thu lấy lá [Sát] này.",
	["@yongjue-choose"] = "\"Dũng Quyết\": Cho phép %src lấy lại lá [Sát]",
	
	["#sunce"] = "Giang Đông Đích Tiểu Bá Vương",
	["sunce"] = "Tôn Sách",
	["jiang"] = "Hùng Dũng",
	[":jiang"] = "Sau khi sử dụng hoặc trở thành mục tiêu của lá [Sát] Đỏ hoặc [Quyết đấu], có thể rút 1 lá bài.",
	["yingyang"] = "Ưng Dương",
	[":yingyang"] = "Sau khi lật lá đấu điểm của bạn, có thể +3 hoặc -3 số điểm của lá này. (Lớn nhất là K, nhỏ nhất là A)",
	["jia3"] = "+3",
	["jian3"] = "-3",
	["$Yingyang"] = "Số điểm của %from trở thành %arg",
	["hunshang"] = "Hồn Thương",
	[":hunshang"] = "Phó tướng kỹ - Giảm 0.5 máu: Giai đoạn chuẩn bị, nếu máu của bạn là 1, bạn có kỹ năng \"Anh Tư\" và \"Anh Hồn\" đến kết thúc lượt",
	["yingzi_sunce"] = "Anh Tư",
	["yinghun_sunce"] = "Anh Hồn",
	["#yinghun_sunce"] = "Phát động \"Anh Hồn\" lên %to",
	["yinghun_sunce:d1tx"] = "Rút 1 lá bài, sau đó bỏ %log lá bài.",
	["yinghun_sunce:dxt1"] = "Rút %log lá bài, sau đó bỏ 1 lá bài.",

	["#chenwudongxi"] = "Tráng Hoài Kích Liệt",
	["chenwudongxi"] = "Trấn Vũ & Đổng Tập",
	["&chenwudongxi"] = "Trấn Vũ Đổng Tập",
	["duanxie"] = "Đoạn Tiết",
	[":duanxie"] = "Một lần trong giai đoạn hành động, có thể đưa 1 người chơi không trong trạng thái xích vào trạng thái xích, sau đó đưa bản thân vào trạng thái xích.",
	["fenming"] = "Phấn Mệnh",
	[":fenming"] = "Giai đoạn kết thúc, nếu bạn trong trạng thái xích, có thể bỏ đi 1 lá bài của những người trong trạng thái xích.",
	["@fengming"] = "Bạn đang trong trạng thái xích, hãy bỏ 1 lá bài.",

	["#dongzhuo"] = "Ma Vương",
	["dongzhuo"] = "Đổng Trác",
	["hengzheng"] = "Hoàng Chinh",
	[":hengzheng"] = "Đầu giai đoạn rút bài, nếu máu của bạn là 1 hoặc không còn bài trên tay, bạn có thể không rút bài, thu lấy từ mỗi người chơi khác 1 lá bài trong vùng chơi.",
	["baoling"] = "Bạo Lăng",
	[":baoling"] = "Chủ tướng kỹ, Tỏa định kỹ: Kết thúc giai đoạn hành động, nếu đã mở chủ tướng và có phó tướng, loại bỏ phó tướng, sau đó tăng giới hạn máu thêm 3, hồi 3 máu, nhận kỹ năng \"Băng Hoại\"",
	["benghuai"] = "Băng Hoại",
	[":benghuai"] = "Tỏa định kỹ: Giai đoạn kết thúc, nếu bạn không phải là người có máu thấp nhất, bạn chọn giảm 1 máu hoặc 1 giới hạn máu.",
	["benghuai:hp"] = "Giảm 1 máu" ,
	["benghuai:maxhp"] = "Giảm 1 giới hạn máu" ,

	["#zhangren"] = "Tác Mệnh Thần Xạ",
	["zhangren"] = "Trương Nhiệm",
	["chuanxin"] = "Xuyên Tâm",
	[":chuanxin"] = "Giai đoạn hành động của bạn, khi gây sát thương cho mục tiêu không cùng thế lực của [Sát] hoặc [Quyết Đấu] (bạn có thể lật tướng để phát động kỹ năng này), nếu mục tiêu có Phó tướng, có thể chặn sát thương này, lệnh cho mục tiêu chọn 1:\n1. Họ bỏ toàn bộ bài trong vùng Trang Bị (ít nhất 1 lá) và mất 1 máu.\nHọ loại bỏ Phó tướng.",
	["@chuanxin-choose"] = "Xuyên Tâm: Lựa chọn bỏ trang bị và mất 1 máu hoặc loại phó tướng",
	["chuanxin:discard"] = "Bỏ trang bị và mất 1 máu",
	["chuanxin:remove"] = "Loại bỏ Phó tướng",
	["fengshi"] = "Phong Thỉ",
	[":fengshi"] = "Trận pháp kỹ: Trong trạng thái Vây Công, sau khi bạn hoặc người vây công sử dụng lá [Sát] xác định mục tiêu bị vây công, mục tiêu bỏ đi 1 lá trong vùng trang bị.",
	["@fengshi-discard"] = "%src đã phát động \"Phong Thỉ\", bỏ đi 1 lá trong vùng trang bị." ,
	["FengshiSummon"] = "Phong Thỉ",

	["#lord_zhangjiao"] = "Thời Đại Đích Tiên Khu",
	["lord_zhangjiao"] = "Trương Giác - Quân",
	["&lord_zhangjiao"] = "Trương Giác" ,
	["wuxin"] = "Ngộ Tâm",
	[":wuxin"] = "Đầu giai đoạn rút bài, có thể xem X lá đầu chồng bài rút và sắp xếp tùy ý những lá này lên đầu chồng bài rút (X là số người thế lực Quần).",
	["hongfa"] = "Hoằng Pháp",
	[":hongfa"] = "Quân chủ kỹ, Tỏa định kỹ, Bạn có \"Hoàng Cân Thiên Bình Phủ\".\n\n#\"Hoàng Cân Thiên Bình Phủ\"\n" ..
					"1. Giai đoạn chuẩn bị, nếu bạn không có [Thiên Binh], bạn lấy X lá đầu chồng bài rút đặt ngửa lên tướng này, gọi là [Thiên Binh] (X là số người thế lực Quần).\n" ..
					"2. Khi bạn tính số người trong thế lực Quần, +1 với mỗi [Thiên Binh].\n" ..
					"3. Khi bạn mất 1 máu, có thể đưa 1 [Thiên Binh] vào chồng bài bỏ, chặn việc mất máu.\n" ..  
					"4. Người thế lực Quần có thẻ sử dụng hoặc đánh ra [Thiên Binh] như [Sát].",
	["heavenly_army"] = "Thiên Binh",
	
	["huangjinsymbol"] = "Hoàng Cân",
	[":huangjinsymbol"] = "1. Giai đoạn chuẩn bị, nếu bạn không có [Thiên Binh], bạn lấy X lá đầu chồng bài rút đặt ngửa lên tướng này, gọi là [Thiên Binh] (X là số người thế lực Quần).\n" ..
					"2. Khi bạn tính số người trong thế lực Quần, +1 với mỗi [Thiên Binh].\n" ..
					"3. Khi bạn mất 1 máu, có thể đưa 1 [Thiên Binh] vào chồng bài bỏ, chặn việc mất máu.\n" ..  
					"4. Người thế lực Quần có thẻ sử dụng hoặc đánh ra [Thiên Binh] như [Sát].",
	
	["&huangjinsymbol"] = "Có thể sử dụng 1 [Thiên Binh] như [Sát]",
	["#HongfaTianbing"] = "%from đã phát động \"<font color=\"yellow\"><b>Hoàng Cân Thiên Bình Phủ</b></font>\", số người trong thế lực Quần là %arg.",
	["wendao"] = "Vấn Đạo",
	[":wendao"] = "Một lần trong giai đoạn hành động, bạn có thể bỏ 1 lá Đỏ ngoại trừ [Thái Bình Yêu Thuật] và thu lấy [Thái Bình Yêu Thuật] trong chồng bài bỏ hoặc trên bàn chơi.",
	["huangjinsymbol:prevent"] = "Có thể phát động \"Hoằng Pháp\", bỏ 1 [Thiên Binh] để chặn mất máu.",
	["@huangjinsymbol-discard"] = "Bỏ 1 [Thiên Binh]",
	["@hongfa-tianbing"] = "<font color='#ffcc33'><b>%src</b></font> Có thể phát động \"Hoằng Pháp\", số người trong thế lực Quần +X",
	["~hongfa2"] = "Lựa chọn X lá [Thiên Binh], nhấn \"Xác định\"",

	["PeaceSpell"] = "Thái Bình Yêu Thuật",
	[":PeaceSpell"] = "Bài trang bị - Phòng cụ\n\nKỹ năng:\n" ..
					"1. Tỏa định kỹ, khi bạn nhận sát thương có thuộc tính, chặn sát thương này.\n" ..
					"2. Tỏa định kỹ, giới hạn trữ bài của bạn +X (X là số người cùng thế lực với bạn).\n" ..
					"3. Tỏa định kỹ, khi bạn mất đi [Thái Bình Yêu Thuật] từ vùng trang bị, rút 2 lá, sau đó nếu máu của bạn lớn hơn 1, bạn mất 1 máu.\n" ,
	["#PeaceSpellNatureDamage"] = "[<font color=\"yellow\"><b>Thái Bình Yêu Thuật</b></font>] đã phát động, chặn sát thương từ %from gây cho %to %arg sát thương." ,
	["#PeaceSpellLost"] = "%from đã mất [<font color=\"yellow\"><b>Thái Bình Yêu Thuật</b></font>] khỏi vùng trang bị, đã mất 1 máu và rút 2 lá." ,

	["illustrator:lidian"] = "张帅",
	["illustrator:zangba"] = "HOOO",
	["illustrator:madai"] = "Thinking",
	["illustrator:mifuren"] = "Mộc Mĩ Nhân",
	["illustrator:sunce"] = "Mộc Mĩ Nhân",
	["illustrator:chenwudongxi"] = "地狱许",
	["illustrator:dongzhuo"] = "巴萨小马",
	["illustrator:zhangren"] = "DH",
	["illustrator:lord_zhangjiao"] = "青骑士",


	["designer:lidian"] = "KayaK",
	["designer:zangba"] = "Poisoning",
	["designer:madai"] = "Lăng Thiên Dực(HanXu)",
	["designer:mifuren"] = "Poisoning",
	["designer:sunce"] = "KayaK(HanXu)",
	["designer:chenwudongxi"] = "Poisoning",
	["designer:dongzhuo"] = "KayaK(HanXu)",
	["designer:zhangren"] = "Poisoning",
	["designer:lord_zhangjiao"] = "HanXu",


}
