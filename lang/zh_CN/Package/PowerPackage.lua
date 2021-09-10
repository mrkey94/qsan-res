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
	["power"] = "Quyền",
	["power_equip"] = "Quyền",

	["cuiyanmaojie"] = "Thôi Diễm & Mao Giới",
	["&cuiyanmaojie"] = "Thôi Diễm Mao Giới",
	["#cuiyanmaojie"] = "Nhật Xuất Nguyệt Thịnh",
	["zhengbi"] = "Chinh Tịch",
	[":zhengbi"] = "Đầu giai đoạn hành động, có thể chọn 1 trong 2:\n1. Chọn 1 người chơi khác không có thế lực, bạn sử dụng bài lên họ không giới hạn khoảng cách và số lần cho đến hết lượt này hoặc khi họ lật tướng.\n2. Chọn 1 người chơi khác phe, giao cho người đó 1 lá cơ bản, buộc người đó giao cho bạn 2 lá cơ bản hoặc 1 lá phi cơ bản",
	["@zhengbi"] = "Phát động \"Chinh Tịch\"",
	["@zhengbi-give"] = "Chinh Tịch: Hãy chọn 2 lá cơ bản hoặc 1 lá phi cơ bản để giao cho %src",
	["fengying"] = "Phụng Nghênh",
	[":fengying"] = "Hạn định kỹ: Có thể sử dụng tất cả bài trên tay như [Hiệp Thiên Tử Dĩ Lệnh Chư Hầu], sau khi những người chơi cùng thế lực với bổ sung bài trên tay đến khi bằng giới hạn máu",
	["#fengying-after"] = "Phụng Nghênh (Rút bài)",
	
	["yujin"] = "Vu Cấm",
	["#yujin"] = "Thảo Bạo Kiên Lũy",
	["jieyue"] = "Tiết Viện",
	[":jieyue"] = "Giai đoạn chuẩn bị, có thể giao cho 1 người chơi không phải thế lực Ngụy 1 lá bài trên tay, sau đó yêu cầu họ chấp hành 1 [Quân Lệnh]. Nếu họ chấp hành, bạn rút 1 lá; ngược lại, giai đoạn rút bài lượt này, bạn rút thêm 3 lá.",
	["@jieyue"] = "Phát động \"Tiết Việt\": Đưa 1 lá cho 1 người không phải Ngụy",

	["wangping"] = "Vương Bình",
	["#wangping"] = "Kiện Bế Kiếm Môn",
	["jianglve"] = "Tướng Lược",
	[":jianglve"] = "Hạn định kỹ: Giai đoạn hành động, bạn có thể chọn 1 [Quân Lệnh], sau đó lần lượt từng người chơi khác cùng thế lực có thể chấp hành [Quân Lệnh] này (Người chơi chưa lật tướng nếu cùng phe có thể lật hưởng ứng). Bạn và những người đã chấp hành [Quân Lệnh] tăng 1 giới hạn máu, hồi 1 máu, sau đó bạn rút X lá bài (X là số người đã hồi máu)",

	["fazheng"] = "Pháp Chính",
	["#fazheng"] = "Thục Hán Đích Phụ Dực",
	["enyuan"] = "Ân Oán",
	[":enyuan"] = "Tỏa định kỹ, Sau khi bạn trở thành mục tiêu của [Đào] do người chơi khác sử dụng, họ rút 1 lá. Sau khi bạn nhận sát thương, nguồn gây sát thương chọn giao 1 lá bài trên tay cho bạn hoặc mất 1 máu",
	["@enyuan-give"] = "Ân Oán: Chọn 1 lá trên tay và đưa cho %src hoặc bấm Hủy bỏ để mất 1 máu.",
	["xuanhuo"] = "Huyễn Hoặc",
	[":xuanhuo"] = "Một lần trong giai đoạn hành động của người chơi cùng thế lực, người đó có thể giao cho bạn 1 lá bà, sau đó họ có thể bỏ 1 lá và lựa chọn nhận 1 trong các kỹ năng sau mà chưa có trên bàn cho đến hết lượt hoặc tướng có kỹ năng tương ứng được mở: \"Võ Thánh\", \"Bào Hao\", \"Long Đảm\", \"Thiết Kỵ\", \"Liệt Cung\", \"Cuồng Cốt\".",
	["@xuanhuo-choose"] = "Huyễn Hoặc: Chọn 1 kỹ năng để sở hữu.",
	["@xuanhuo-discard"] = "Huyễn Hoặc: Chọn 1 lá bài để bỏ.",
	["xuanhuoattach"] = "Huyễn Hoặc",
	["&xuanhuoattach"] = "Bạn có thể giao cho Pháp Chính 1 lá bài trên tay, sau đó bỏ 1 lá và nhận 1 trong các kỹ năng sau mà bạn chưa có cho đến hết lượt: \"Võ Thánh\", \"Bào Hao\", \"Long Đảm\", \"Thiết Kỵ\", \"Liệt Cung\", \"Cuồng Cốt\".",

	["wusheng_xh"] = "Võ Thánh",
	["paoxiao_xh"] = "Bào Hao",
	["longdan_xh"] = "Long Đảm",
	["tieqi_xh"] = "Thiết Kỵ",
	["liegong_xh"] = "Liệt Cung",
	["kuanggu_xh"] = "Cuồng Cốt",

	["wuguotai"] = "Ngô Quốc Thái",
	["#wuguotai"] = "Vũ Liệt Hoàng Hậu",
	["ganlu"] = "Cam Lộ",
	[":ganlu"] = "Một lần trong giai đoạn hành động, có thể chọn 2 người chơi có số bài trong vùng trang bị không cùng bằng 0 và chênh lệch không lớn hơn số máu bạn đã mất, hoán đổi bài trong vùng trang bị của 2 người này.",
	["#GanluSwap"] = "%from và %to trao đổi bài trong vùng trang bị.",
	["buyi"] = "Bổ Ích",
	[":buyi"] = "Một lần trong lượt của mỗi người, sau khi người cùng thế lực thoát khỏi trạng thái hấp hối, có thể yêu cầu nguồn sát thương chấp hành 1 [Quân Lệnh]. Nếu họ không chấp hành, người vừa thoát khỏi trạng thái hấp hối hồi 1 máu.",

	["lukang"] = "Lục Kháng",
	["#lukang"] = "Cô Trú Phù Hạ",
	["keshou"] = "Khắc Thủ",
	[":keshou"] = "Khi nhận sát thương, có thể bỏ 2 lá bài trên tay có cùng màu để -1 sát thương; nếu không có người khác cùng thế lực, bạn có thể tiến hành phán xét, nếu kết quả là màu Đỏ, rút 1 lá.",
	["zhuwei"] = "Trác Vi",
	[":zhuwei"] = "Sau khi phán xét của bạn có hiệu lực, bạn có thể thu lấy lá đó, sau đó có thể lệnh cho người đang có lượt +1 giới hạn sử dụng [Sát] và giới hạn trữ bài +1.",
	["@keshou"] = "Có thể phát động \"Khắc Thủ\", chọn 2 lá cùng màu.",
	["keshou:judge"] = "Có thể phát động \"Khắc Thủ\", tiến hành phán xét.",
	["@zhuwei-choose"] = "Trác Vi: Có thể lệnh cho %src giới hạn sử dụng [Sát] và giới hạn trữ bài +1.",
	["#ZhuweiBuff"] = "%from đã lệnh %to giới hạn sử dụng [Sát] và giới hạn trữ bài +1.",

	["yuanshu"] = "Viên Thuật",
	["#yuanshu"] = "Trọng Gia Đế",
	["weidi"] = "Ngụy Đế",
	[":weidi"] = "Một lần trong giai đoạn hành động, có thể lựa chọn 1 người chơi đã nhận bài từ chồng bài trong lượt này, yêu cầu họ chấp hành 1 [Quân Lệnh]. Nếu họ không chấp hành, bạn lấy toàn bộ bài trên tay họ xong giao cho họ lượng bài tương đương.",
	["@weidi-return"] = "Ngụy Đê: Chọn %arg lá bài để giao cho %src",
	["yongsi"] = "Dong Tứ",
	[":yongsi"] = "Tỏa định kỹ, Nếu trên bàn chơi không có [Ngọc Tỷ], xem như bạn đang trang bị [Ngọc Tỷ]; Sau khi bạn trở thành mục tiêu của lá [Tri Bỉ Tri Kỷ], bạn mở ra tất cả bài trên tay.",

	["zhangxiu"] = "Trương Tú",
	["#zhangxiu"] = "Bắc Địa Thương Vương",
	["fudi"] = "Phụ Địch",
	[":fudi"] = "Sau khi nhận sát thương, có thể giao cho nguồn sát thương 1 lá bài trên tay, sau đó gây 1 sát thương cho 1 người cùng thế lực với nguồn sát thương mà có số máu nhiều nhất và không thấp hơn bạn.",
	["congjian"] = "Tòng Gián",
	[":congjian"] = "Tỏa định kỹ: Khi bạn gây sát thương ngoài lượt hoặc khi bạn nhận sát thương trong lượt, sát thương tăng thêm 1",
	["@fudi-give"] = "Phát động \"Phụ Địch\", đưa 1 lá cho nguồn sát thương (%src)",
	["@fudi-damage"] = "Phụ Địch: Chọn người chơi nhận sát thương.",

	["#lord_caocao"] = "Phụng Vũ Cửu Tiêu",
	["lord_caocao"] = "Tào Tháo - Quân",
	["&lord_caocao"] = "Tào Tháo" ,
	["jianan"] = "Kiến Anh",
	[":jianan"] = "Quân chủ kỹ, Tỏa định kỹ, Bạn có \"Ngũ Tử Lương Tướng Đạo\".",
	["elitegeneralflag"] = "Ngũ Tử Lương Tướng Đạo",
	[":elitegeneralflag"] = "Giai đoạn chuẩn bị của người thế lực Ngụy, họ có thể bỏ 1 lá và chọn 1 tướng chưa mở của họ (nếu họ đã mở 2 tướng thì chọn úp 1 tướng), sau đó họ lựa chọn 1 trong các kỹ năng sau mà chưa có trên bàn: \"Đột Kích\", \"Kiêu Quả\", \"Xảo Biến\", \"Tiết Việt\", \"Đoạn Lương\", Họ có kỹ năng đó và không thể mở tướng đã chọn đến đầu lượt sau của họ.",
	["@elitegeneralflag"] = "Có thể phát động \"Ngũ Tử Lương Tướng Đạo\", bỏ 1 lá.",
	["@jianan-hide"] = "Ngũ Tử Lương Tướng Đạo: Chọn 1 tướng để úp xuống.",
	["elitegeneralflag:head"] = "Chủ tướng",
	["elitegeneralflag:deputy"] = "Phó tướng",
	["@jianan-skill"] = "Ngũ Tử Lương Tướng Đạo: Chọn kỹ năng để nhận.",
	["huibian"] = "Huy Tiên",
	[":huibian"] = "Một lần trong giai đoạn hành động, bạn có thể chọn 1 người thế lực Ngụy và 1 người thế lực Ngụy khác đang bị thương, bạn gây 1 sát thương  cho người đầu tiên và họ rút 2 lá, sau đó người còn lại hồi 1 máu.",
	["zongyu"] = "Tổng Ngự",
	[":zongyu"] = "Khi [Lục Long Tham Giá] tiến vào vùng trang bị của người khác, nếu có Tọa kỵ trong vùng trang bị của bạn, bạn có thể hoán đổi tất cả Tọa kỹ trong vùng trang bị của bạn với [Lục Long Tham Giá]. Khi bạn sử dụng 1 Tọa kỵ, nếu trên bàn hoặc chồng bài bỏ có [Lục Long Tham Giá], bạn đem [Lục Long Tham Giá] đặt vào vùng trang bị của bạn.",
	["#ZongyuSwap"] = "%from và %to đã hoán đổi Tọa kỵ trong vùng trang bị.",

	["SixDragons"] = "Lục Long Tham Giá",
	[":SixDragons"] = "Bài Trang Bị - Chiến Mã\n\nKỹ năng:\n" ..
					"1. Tỏa định kỹ: Khoảng cách từ bạn đến người chơi khác -1.\n" ..
					"2. Tỏa định kỹ: Khoảng cách từ người chơi khác đến bạn +1.\n" ..
					"3. Tỏa định kỹ: Sau khi [Lục Long Tham Giá] tiến vào vùng trang bị, bỏ đi các Chiến mã khác. Chiến mã khác không thể tiến vào vùng trang bị.\n",
	["horse"] = "Chiến Mã",

	["tuxi_egf"] = "Đột Tập",
	["qiaobian_egf"] = "Xảo Biến",
	["xiaoguo_egf"] = "Kiêu Quả",
	["jieyue_egf"] = "Tiết Việt",
	["duanliang_egf"] = "Đoạn Lương",

	["command"] = "Quân lệnh",

	["@startcommand"] = "%arg: Hãy lựa chọn quân lệnh: <br>%arg2;<br>%arg3",
	["@startcommandto"] = "%arg: Lựa chọn quân lệnh cho %dest<br>%arg2;<br>%arg3",
	
	["command1"] = "Gây 1 sát thương cho 1 người do bạn chọn",
	["command2"] = "Rút 1 lá, giao cho bạn 2 lá",
	["command3"] = "Mất 1 máu",
	["command4"] = "Cấm dùng/đánh bài lượt này, khóa kỹ năng trừ Tỏa định kỹ",
	["command5"] = "Chồng tướng, cấm hồi máu lượt này",
	["command6"] = "Giữ 1 lá trên tay, 1 trang bị, bỏ chỗ còn lại",

	["#command1"] = "Gây 1 sát thương cho 1 người do bạn chọn",
	["#command2"] = "Rút 1 lá, giao cho bạn 2 lá",
	["#command3"] = "Mất 1 máu",
	["#command4"] = "Cấm dùng/đánh bài lượt này, khóa kỹ năng trừ Tỏa định kỹ",
	["#command5"] = "Chồng tướng, cấm hồi máu lượt này",
	["#command6"] = "Giữ 1 lá trên tay, 1 trang bị, bỏ chỗ còn lại",
	
	["#CommandChoice"] = "%from đã lựa chọn %arg",
	
	["#commandselect_yes"] = "Thực hiện Quân lệnh",
	["#commandselect_no"] = "Không thực hiện quân lệnh",
	
	["@command-damage"] = "Quân lệnh: Lựa chọn người chơi nhận sát thương",
	["@command-give"] = "Quân lệnh: Lựa chọn 2 lá và giao cho %src",
	["@command-select"] = "Quân lệnh: Lựa chọn 1 lá trên tay và 1 lá trong vùng trang bị để giữ lại.",
	
	["@docommand"] = "%arg: Lựa chọn chấp hành quân lệnh từ %src<br>%arg2",
	["@docommand1"] = "%arg: Lựa chọn chấp hành quân lệnh từ %src<br>Gây 1 sát thương cho %dest",
	["@docommand2"] = "%arg: Lựa chọn chấp hành quân lệnh từ %src<br>Rút 1 lá, sau đó giao cho %src 2 lá",
	["yes"] = "Có",
	["no"] = "Không",

	["illustrator:cuiyanmaojie"] = "兴游",
	["illustrator:yujin"] = "biou09",
	["illustrator:wangping"] = "zoo",
	["illustrator:fazheng"] = "Hắc Bạch Họa Phổ",
	["illustrator:wuguotai"] = "李秀森",
	["illustrator:lukang"] = "王立雄",
	["illustrator:yuanshu"] = "YanBai",
	["illustrator:zhangxiu"] = "Qingdao Panpu",
	["illustrator:lord_caocao"] = "波子",

	["designer:cuiyanmaojie"] = "Virgopaladin(HanXu)",
	["designer:yujin"] = "Virgopaladin(HanXu)",
	["designer:zhangxiu"] = "Thiên Huyễn",


}
