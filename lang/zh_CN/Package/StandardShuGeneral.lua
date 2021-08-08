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
	-- 蜀势力
	["illustrator:liubei"] = "木美人",
	["#liubei"] = "Loạn Thế Đích Kiêu Hùng",
	["liubei"] = "Lưu Bị",
	["rende"] = "Nhân Đức",
	[":rende"] = "Giai đoạn hành động，bạn có thể đem tùy ý lượng bài trên tay giao cho 1 người khác chưa nhận bài từ kỹ năng này trong giai đoạn này. Nếu vậy, khi tổng số lá bài bạn giao trong giai đoạn này bằng 2 hoặc nhiều hơn, có thể xem như sử dụng 1 lá cơ bản.",
	["@rende-choose"] = "Nhân Đức: Hãy chọn lá cơ bản để sử dụng",
	["@rende-slash"] = "Nhân Đức: Hãy chọn mục tiêu cho lá [%arg]",
	
	["#guanyu"] = "Mỹ Nhiệm Công",
	["guanyu"] = "Quan Vũ",
	["wusheng"] = "Võ Thánh",
	[":wusheng"] = "Có thể sử dụng hoặc đánh ra 1 lá Đỏ như [Sát].",

	["illustrator:zhangfei"] = "宋其金",
	["#zhangfei"] = "Vạn Phu Bất Đương",
	["zhangfei"] = "Trương Phi",
	["paoxiao"] = "Bào Hao",
	[":paoxiao"] = "Tỏa định kỹ, Có thể sử dụng lá [Sát] không giới hạn số lượng. Khi bạn sử dụng lá [Sát] thứ 2 trong 1 lượt, rút 1 lá.",

	["#zhugeliang"] = "Trì Mộ Đích Thừa Tướng",
	["zhugeliang"] = "Gia Cát Lượng",
	["illustrator:zhugeliang"] = "Mộc Mỹ Nhân",
	["guanxing"] = "Quan Tinh",
	[":guanxing"] = "Giai đoạn chuẩn bị, bạn có thể xem X lá bài trên đầu chồng bài (X là số người chơi trên bàn, tối đa 5), sau đó sắp xếp tùy ý những lá này lên đầu hoặc đáy chồng bài",
	["kongcheng"] = "Không Thành",
	[":kongcheng"] = "Tỏa định kỹ, Nếu bạn không có bài trên tay\n1. Khi bạn là mục tiêu của lá [Sát] hoặc [Quyết Đấu], hủy bỏ mục tiêu đối với bạn.\n2. Ngoài lượt của bạn, khi bạn nhận được bài do người chơi khác giao cho, đặt những lá bài này lên trên Tướng này, gọi là [Cầm]. Đầu giai đoạn rút bài, bạn nhận lấy tất cả lá [Cầm]",
	["#GuanxingResult"] = "%from đã kích hoạt \"<font color=\"yellow\"><b>Quan Tinh</b></font>\": %arg lên trên, %arg2 xuống dưới",
	["$GuanxingTop"] = "Đặt lên đầu chồng bài: %card",
	["$GuanxingBottom"] = "Đặt dưới đáy chồng bài: %card",
	["zither"] = "Cầm",

	["illustrator:zhaoyun"] = "DH",
	["#zhaoyun"] = "Hổ Uy Tướng Quân",
	["zhaoyun"] = "Triệu Vân",
	["longdan"] = "Long Đảm",
	[":longdan"] = "1. Có thể sử dụng hoặc đánh ra [Thiểm] như [Sát], nếu như [Sát] này bị triệt tiêu bởi [Thiểm] của mục tiêu, có thể gây 1 sát thương cho 1 người chơi trừ mục tiêu。\n2. Có thể sử dụng hoặc đánh ra [Sát] như [Thiểm], nếu như [Thiểm] này triệt tiêu [Sát] của 1 người chơi, có thể hồi 1 máu cho 1 người chơi khác ngoại trừ người sử dụng [Sát].",

	["#longdan-draw"] = "Long đảm [Rút bài]",
	["#LongdanDraw"] = "%from đã kích hoạt \"%arg<font color=\"yellow\"><b>(Ngũ Hổ Tướng Đại Kỳ)</b></font>\", rút 1 lá.",
	["longdan-damage"] = "Kích hoạt \"Long Đảm\", gây 1 sát thương cho người chơi khác?",
	["longdan-recover"] = "Kích hoạt \"Long Đảm\", hồi 1 máu cho người chơi khác?",
	["#longdan-slash"] = "Long Đảm [Sát]",
	["#longdan-jink"] = "Long Đảm [Tránh]",
	["#LongdanDamage"] = "%from đã kích hoạt \"%arg\"，gây 1 sát thương cho %to",
	["#LongdanRecover"] = "%from đã kích hoạt \"%arg\"，hồi 1 máu cho %to",
	
	["#machao"] = "Nhất Kỵ Đươmg Thiên",
	["machao"] = "Mã Siêu",
	["illustrator:machao"] = "KayaK&木美人&张帅",
	["mashu_machao"] = "Mã Thuật",
	[":mashu"] = "Tỏa định kỹ, Khoảng cách từ bạn đến người chơi khác -1.",
	["tieqi"] = "Thiết Kỵ",
	[":tieqi"] = "Sau khi sử dụng [Sát] chỉ định mục tiêu, có thể tiến hành phán xét, sau đó vô hiệu hóa kỹ năng không phải Tỏa định kỹ của 1 tướng đã mở của mục tiêu trong lượt này; sau đó nếu mục tiêu không bỏ 1 lá cùng chất với phán xét, mục tiêu không thể sử dụng [Thiểm].",
	
	["@tieji-discard"] = "Thiết Kỵ: Bỏ 1 lá bài có chất %arg, nếu không bạn không thể sử dụng [Thiểm]",
	["#TieqiHeadSkills"] = "%from đã kích hoạt \"%arg\", khóa kỹ năng không phải tỏa định kỹ của chủ tướng của %to",
	["#TieqiDeputySkills"] = "%from đã kích hoạt \"%arg\", khóa kỹ năng không phải tỏa định kỹ của phó tướng của %to",
	["#TieqiAllSkills"] = "%from đã kích hoạt \"arg\", khóa kỹ năng không phải tỏa định kỹ của %to ",
	
	
	["#huangyueying"] = "Quy Ẩn Kiệt Nữ",
	["huangyueying"] = "Hoàng Nguyệt Anh",
	["illustrator:huangyueying"] = "Mộc Mỹ Nhân",
	["jizhi"] = "Tập Trí",
	[":jizhi"] = "Khi sử dụng công cụ phổ thông không chuyển hóa, có thể rút 1 lá bài.",
	["qicai"] = "Kỳ Tài",
	[":qicai"] = "Tỏa định kỹ, có thể sử dụng công cụ không hạn chế khoảng cách.",

	["illustrator:huangzhong"] = "玖等仁品",
	["#huangzhong"] = "Lão Đương Ích Tráng",
	["huangzhong"] = "Hoàng Trung",
	["liegong"] = "Liệt Cung",
	[":liegong"] = "Giai đoạn hành động của bạn, sau khi sử dụng [Sát] chỉ định mục tiêu, có thể lệnh mục tiêu chỉ có thể sử dụng [Thiểm] nếu số bài trên tay của họ ít hơn số máu của bạn và nhiều hơn tầm đánh của bạn.",

	["#weiyan"] = "Thị Huyết Độc Lang",
	["weiyan"] = "Ngụy Diên",
	["illustrator:weiyan"] = "SoniaTang",
	["kuanggu"] = "Cuồng Cốt",
	[":kuanggu"] = "Sau khi gây 1 sát thương cho 1 mục tiêu trong tầm 1, hồi 1 máu hoặc rút 1 lá.",
	["kuanggu:draw"] = "Rút 1 lá",
	["kuanggu:recover"] = "Hồi 1 máu",
	
	["#pangtong"] = "Phượng Sồ",
	["pangtong"] = "Bàng Thống",
	["lianhuan"] = "Liên Hoàn",
	[":lianhuan"] = "Giai đoạn hành động, có thể sử dụng lá Tép trên tay như [Thiết Tác Liên Hoàn] hoặc đổi lấy 1 lá bài mới.",
	["niepan"] = "Niết Bàn",
	[":niepan"] = "Hạn định kỹ: Khi trong trạng thái hấp hối, có thể bỏ toàn bộ bài trong vùng chơi, loại bỏ các trạng thái, sau đó rút 3 lá và hồi máu đến 3",
	["@nirvana"] = "Niết Bàn",

	["#wolong"] = "Ngoạ Long",
	["wolong"] = "Khổng Minh",
	["&wolong"] = "Gia Cát Lượng",
	["illustrator:wolong"] = "Bắc",
	["bazhen"] = "Bát Trận",
	[":bazhen"] = "Tỏa định kỹ, nếu vùng trang bị của bạn không có phòng cụ, xem như có [Bát Quái Trận].",
	["huoji"] = "Hoả Kế",
	[":huoji"] = "Có thể dùng lá Đỏ trên tay như [Hoả Công].",
	["kanpo"] = "Khán Phá",
	[":kanpo"] = "Có thể dùng lá Đen trên tay như [Vô Giải Khả Kích].",

	["#liushan"] = "Vô Vi Chân Mệnh Chủ",
	["liushan"] = "Lưu Thiện",
	["illustrator:liushan"] = "LiuHeng",
	["xiangle"] = "Hưởng Lạc",
	[":xiangle"] = "Tỏa định kỹ, sau khi trở thành mục tiêu của [Sát], người sử dụng phải bỏ thêm 1 lá cơ bản nếu không [Sát] đó bị vô hiệu với bạn.",
	["@xiangle-discard"] = "%src đã kích hoạt [Hưởng Lạc], hãy bỏ thêm 1 lá cơ bản nếu không lá [Sát] sẽ vô hiệu.",
	["fangquan"] = "Uỷ Quyền",
	[":fangquan"] = "Có thể bỏ qua giai đoạn hành động và bỏ 1 lá bài trên tay trước khi kết thúc lượt để lệnh một người chơi có 1 lượt chơi.",
	["@fangquan-discard"] = "Bạn có thể bỏ ra 1 lá bài và chọn 1 người chơi để họ có lượt sau bạn.",
	["~fangquan"] = "Chọn 1 lá bài, chọn 1 người chơi và kích \"Xác định\"",
	["#Fangquan"] = "%to đã nhận lượt thay thế",

	["#menghuo"] = "Nam Man Vương",
	["menghuo"] = "Mạnh Hoạch",
	["illustrator:menghuo"] = "Phế Sài Nam",
	["huoshou"] = "Chủ Mưu",
	[":huoshou"] = "Tỏa định kỹ, [Nam Man Nhập Xâm] không có hiệu quả với bạn, Sau khi 1 người chơi sử dụng [Nam Man Nhập Xâm] chỉ định mục tiêu, bạn trở thành nguồn sát thương của [Nam Man Nhập Xâm] này.",
	["#sa_avoid_huoshou"] = "Chủ Mưu (vô hiệu Nam Man Nhập Xâm)" ,
	["zaiqi"] = "Tái Khởi",
	[":zaiqi"] = "Có thể bỏ qua giai đoạn rút bài và lật ra số lá bằng số máu đã mất và hồi lượng máu bằng số lá Cơ đã lật và thu lấy những lá còn lại.",
	["#HuoshouTransfer"] = "%from đã kích hoạt \"%arg2\", [<font color=\"yellow\"><b>Nam Man Nhập Xâm</b></font>] chuyển nguồn sát thương thành %from",

	["#zhurong"] = "Dã Tính Nữ Vương",
	["zhurong"] = "Chúc Dung",
	["illustrator:zhurong"] = "Phế Sài Nam",
	["juxiang"] = "Cự Tượng",
	[":juxiang"] = "Tỏa định kỹ, vô hiệu hoá [Nam Man Nhập Xâm] lên bản thân; có thể thu lấy [Nam Man Xâm Lược] sau khi lá này chuyển vào chồng bài bỏ.",
	["#sa_avoid_juxiang"] = "Cự Tượng vô hiệu hoá [Nam Man Nhập Xâm]" ,
	["lieren"] = "Liệt Nhận",
	[":lieren"] = "Sau khi gây sát thương cho mục tiêu của [Sát], có thể tiến hành đấu điểm. Nếu thắng, có thể thu lấy 1 lá bài của mục tiêu.",

	["#ganfuren"] = "Chiêu Liệt Hoàng Hậu",
	["ganfuren"] = "Cam Phu Nhân",
	["illustrator:ganfuren"] = "Sâm - Mỹ Đệ Kỳ",
	["shushen"] = "Thục Thận",
	[":shushen"] = "Sau khi hồi 1 máu, có thể chọn một người chơi khác, người đó rút 1 lá.",
	["shushen-invoke"] = "Kích hoạt \"Thục Thận\". <br/>Chọn một người chơi rồi bấm \"Xác định\"<br/>",
	["shenzhi"] = "Thần Trí",
	[":shenzhi"] = "Giai đoạn chuẩn bị, có thể bỏ tất cả bài trên tay, nếu số lá bỏ đi lớn hơn hoặc bằng số máu hiện tại, bạn hồi 1 máu.",
}