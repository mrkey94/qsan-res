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
	["manoeuvre"] = "Tung Hoành Bãi Hạp",
	
	["#huaxin"] = "Uyên Thanh Ngọc Khiết",
	["huaxin"] = "Hoa Hâm",
	["wanggui"] = "Vong Quy",
	[":wanggui"] = "Một lần trong lượt của mỗi người, sau khi bạn gây hoặc nhận sát thương, nếu bạn:\nChỉ mở tướng này, có thể gây 1 sát thương cho người không cùng thế lực.\nMở tất cả tướng, có thể lệnh những người cùng thế lực rút 1 lá.",
	["wanggui:prompt"] = "Có thể kích \"Vong Quy\", người cùng thế lực rút 1 lá.",
	["wanggui-invoke"] = "Có thể kích \"Vong Quy\", gây 1 sát thương cho người không cùng thế lực.",
	["xibing"] = "Tức Binh",
	[":xibing"] = "Sau khi 1 người khác lần đầu trong giai đoạn hành động của họ sử dụng [Sát] đen hoặc công cụ phổ thông đen và chỉ định 1 mục tiêu duy nhất:\n1. Nếu bài trên tay họ nhỏ hơn số máu, bạn có thể lệnh họ bổ sung bài trên tay đến số máu và không thể tiếp tục sử dụng bài trên tay trong lượt này\n2. Nếu bạn và họ đã mở tất cả tướng, bạn có thể úp 1 tướng của bạn và họ, trong lượt này không thể mở lại tướng đó.",
	["@xibing-hide"] = "Tức Binh: Chọn tướng của %dest để úp.",
	["xibing:head"] = "Chủ tướng",
	["xibing:deputy"] = "Phó tướng",
	
	
	["#luyusheng"] = "Nghĩa Cô",
	["luyusheng"] = "Lục Úc Sinh",
	["zhente"] = "Trinh Đặc",
	[":zhente"] = "Một lần trong lượt của mỗi người, sau khi trở thành mục tiêu của lá cơ bản Đen hoặc công cụ phổ thông Đen từ người khác, có thể lệnh cho họ chọn 1 mục:\n1. Lượt này họ không thể sử dụng bài Đen.\n2. Lá này không có hiệu quả với bạn.",

	["zhente-ask"] = "Kích hoạt Trinh Đặc, chọn 1: khiến [%arg] vô hiệu với %src; Không thể sử dụng bài đen trong lượt này.",
	["zhente:nullified"] = "Vô hiệu cho mục tiêu",
	["zhente:cardlimited"] = "Lượt này không sử dụng bài đen",
	
	["#ZhiweiChoice1"] = "%from đã chọn: [%arg] vô hiệu với %to",
	["#ZhiweiChoice2"] = "%from đã chọn: Lượt này không sử dụng bài đen",
	
	["zhiwei"] = "Chi Vi",
	["#zhiwei-effect"] = "Chi Vi",
	[":zhiwei"] = "Khi bạn mở tướng này, có thể chọn 1 người khác. Đến khi tướng này bị úp hoặc loại bỏ; Sau khi họ gây sát thương, bạn rút 1 lá; Sau khi họ nhận sát thương, bạn bỏ 1 lá ngẫu nhiên trên tay; Giai đoạn bỏ bài, bạn có thể lệnh cho họ thu lấy tất cả bài bỏ của bạn. Khi họ trận vong, nếu bạn đã mở tất cả tướng, bạn úp tướng này.",
	
	["zhiwei-invoke"] = "Có thể kích hoạn \"Chi Vi\", chọn 1 người khác.",
	
	["#ZhiweiEffect1"] = "%to đã gây sát thương, %from đã kích \"%arg\" và rút 1 lá",
	["#ZhiweiEffect2"] = "%to đã nhận sát thương, %from đã kích \"%arg\" và bỏ 1 lá",
	["#ZhiweiEffect3"] = "%to đã thu lấy bài bỏ của %from bởi \"%arg\"",
	["#ZhiweiEffect4"] = "%to đã trận vong, %from đã úp tướng bởi \"%arg\"",
	
	["#ZhiweiFinsh"] = "%from đã kết thúc kỹ năng \"%arg\" với %to",
	
	["#zongyux"] = "Cửu Uẩn Hồng Lư",
    ["zongyux"] = "Tông Dự",
    ["qiao"] = "Khí Ngạo",
    [":qiao"] = "Hai lần trong giai đoạn hành động của mỗi người, sau khi bạn trở thành mục tiêu của bài do người khác thế lực sử dụng, có thể bỏ 1 lá của họ, sau đó bạn bỏ 1 lá.",
    ["chengshang"] = "Thừa Thưởng",
    [":chengshang"] = "Một lần trong giai đoạn hành động, sau khi bài bạn sử dụng chỉ định người khác thế lực làm mục tiêu kết toán xong, nếu lá này không gây sát thương, có thể thu lấy những lá có cùng chất và điểm với lá đó trong chồng bài rút.",

    ["@qiao-discard"] = "Khí Ngạo: Bỏ 1 lá.",
    
    ["#miheng"] = "Chí Ngạc Trác Cô Phượng",
    ["miheng"] = "Nễ Hành",
    ["kuangcai"] = "Cuồng Tài",
    [":kuangcai"] = "Tỏa định kỹ, bài bạn sử dụng trong lượt không bị giới hạn khoảng cách và số lần sử dụng; đầu giai đoạn bỏ bài, nếu người chơi trong lượt này có sử dụng bài và không gây sát thương, giới hạn trữ bài trong lượt này -1.",
    ["shejian"] = "Thiệt Kiếm",
    [":shejian"] = "Sau khi trở thành mục tiêu của bài, nếu số mục tiêu là 1, có thể bỏ tất cả bài trên tay và gây 1 sát thương cho người sử dụng bài.",
    
    ["MOL"] = "Mobile",
    
    
    ["#duyu"] = "Văn Thành Võ Đức",
    ["duyu"] = "Đỗ Dự",
    ["wuku"] = "Vũ Khố",
    [":wuku"] = "Tỏa định kỹ, khi 1 người không cùng thế lực sử dụng 1 trang bị, bạn thu lấy 1 tiêu kỹ [Võ Khố] (Tối đa 2).",
    ["miewu"] = "Diệt Ngô",
    [":miewu"] = "Một lần trong lượt của mỗi người, có thể bỏ 1 [Võ Khố], sau đó sử dụng/đánh ra 1 lá bài như 1 lá cơ bản hoặc công cụ tùy ý; sau đó, rút lá.",
    ["#armory"] = "Vũ Khố",
	
	["#fengxi"] = "Đông Ngô Tô Võ",
    ["fengxi"] = "Phùng Hy",
    ["yusui"] = "Ngọc Toái",
    [":yusui"] = "Sau khi bạn trở thành mục tiêu của bài đen do người không cùng thế lực sử dụng, bạn có thể mất 1 máu rồi chọn:\n1. Lệnh họ bỏ X lá trên tay (X là giới hạn máu của họ); 2, Lệnh họ mất Y máu (Y là số máu của họ trừ đi số máu của bạn, tối thiểu 0)",
    ["boyan"] = "Bác Ngôn",
    [":boyan"] = "Một lần trong giai đoạn hành động, bạn có thể chọn 1 ngươi khác, họ bổ sung bài trên tay đến giới hạn máu của họ, trong lượt này họ không thể sử dụng hoặc đánh ra bài trên tay của họ.",
    ["@yusui-choice"] = "Ngọc Toái: lựa chọn hành động cho %dest chấp hành",
    ["yusui:losehp"] = "Mất máu đến khi số máu bằng bạn.",
    ["yusui:discard"] = "Bỏ số bài trên tay bằng giới hạn máu.",
	
	["lord_ex"] = "Bất Thần",
	["lord_ex_card"] = "Bất Thần",
	
	
	["#mengda"] = "Đãi Quân Phản Phúc",
	["mengda"] = "Mạnh Đạt",
	["qiuan"] = "Cầu An",
	[":qiuan"] = "Khi bạn nhận sát thương, nếu bạn không có [Hàm], có thể đem lá gây sát thương cho bạn đặt lên tướng này, gọi là [Hàm], sau đó chặn sát thương này.",
	["liangfan"] = "Lượng Phản",
	[":liangfan"] = "Tỏa định kỹ, Giai đoạn chuẩn bị, nếu bạn có [Hàm], bạn mất 1 máu, sau đó thu lấy [Hàm], lượt này sau khi gây sát thương cho 1 người bỏi sử dụng [Hàm], bạn có thể thu lấy 1 lá của họ.",
	["letter"] = "Hàm",
	["#liangfan-effect"] = "Lượng Phản",
	["#LiangfanEffect"] = "%from đã sử dụng [%arg] để gây sát thương và thu lấy 1 lá của %to",
	
	["@liangfan"] = "Lượng Phản: Lấy 1 lá của %dest",
	
	
	["#tangzi"] = "Đắc Thì Thức Phong",
	["tangzi"] = "Đường Tư",
	["xingzhao"] = "Hưng Thạo",
	[":xingzhao"] = "Tỏa định kỹ, dựa theo số thế lực trên bàn chơi có người bị thương: \n1 trở lên: Bạn nhận \"Tuân Tuân\".\n2 trở lên: Sau khi nhận sát thương, nếu nguồn gây sát thương có bài trên tay nhiêu hơn bạn, bạn rút 1 lá.\n3 trở lên: Đầu giai đoạn bỏ bài, giới hạn trữ bài của bạn +4.\n4 trở lên: Khi bạn mất bài trong vùng trang bị, rút 1 lá.",
	["xunxun_tangzi"] = "Tuân Tuân",
	
	["#zhanglu"] = "Chính Khoan Giáo Huệ",
	["zhanglu"] = "Trương Lỗ",
	["bushi"] = "Bố Thí",
	[":bushi"] = "Tỏa định kỹ, Sau khi nhận 1 sát thương, lệnh 1 người cùng thế lực với bạn rút 1 lá; Sau khi gây sát thương cho người khác, lệnh 1 người cùng thế lực với họ rút 1 lá.",
	["midao"] = "Mễ Đạo",
	[":midao"] = "Một lần trong giai đoạn hành động của người cùng thế lực, khi họ sử dụng lá cơ bản hoặc công cụ phổ thông có thể gây sát thương, họ có thể giao cho bạn 1 lá trên tay, sau đó bạn tùy ý thay đổi chất và thuộc tính sát thương của lá bài được sử dụng.",
	["bushi-invoke"] = "Bố Thí: Lệnh 1 người rút 1 lá.",
	["@midao"] = "Có thể kích hoạt \"Mễ Đạo\" của %src",
	["@midao-nature"] = "Mễ Đạo: Lựa chọn thuộc tính sát thương cho lá [%arg] của %dest.",
	["midao:normal"] = "Thường",
	["midao:fire"] = "Hỏa",
	["midao:thunder"] = "Lôi",
	["#MidaoSuit"] = " Đã đổi chất của [%arg] do %from sử dụng thành %arg2",
	["#MidaoNature"] = "Đã chuyển thuộc tính sát thương của [%arg] do %from sử dụng thành Sát thương %arg2",
	
	["#mifangfushiren"] = "Trục Giá Nghênh Trần",
	["mifangfushiren"] = "Mi Phương & Phó Sĩ Nhân",
	["&mifangfushiren"] = "Mi Phương Phó Sĩ Nhân",
	["fengshix"] = "Phong Thế",
	[":fengshix"] = "Sau khi bạn sử dụng bài chỉ định 1 mục tiêu duy nhất, nếu số bài trên tay họ nhỏ hơn bạn, bạn có thể bỏ 1 lá của bạn và họ, sau đó sát thương này +1. Sau khi bạn trở thành mục tiêu duy nhất của bài từ người khác, nếu số lá trên tay bạn nhỏ hơn họ, họ có thể bỏ 1 lá của bạn và họ, sau đó sát thương này +1.",
	
	["@fengshix"] = "Có thể kích hoặc \"Phong Thế\" của %src",
	
	
	["#liuqi"] = "Cư Ngoại Nhi An",
	["liuqi"] = "Lưu Kỳ",
	["wenji"] = "Vấn Kế",
	[":wenji"] = "Đầu giai đoạn hành động, bạn có thể lệnh 1 người khác giao cho bạn 1 lá ngửa mặt. Nếu họ cùng thế lực hoặc vô thế lực, lượt này bạn sử dụng lá này không hạn chế khoảng cách cùng số lần và không thể hưởng ứng; Nếu họ không cùng thế lực, bạn giao cho họ 1 lá bài khác.",
	
	["tunjiang"] = "Truân Giang",
	[":tunjiang"] = "Giai đoạn kết thúc, nếu bạn trong giai đoạn hành động sử dụng ít nhất 1 lá và không chỉ định người khác làm mục tiêu, bạn có thể rút X lá (X là số thế lực trên bàn chơi).",
	["@wenji"] = "Có thể kích \"Vấn Kế\", chọn 1 người khác",
	["@wenji-give"] = "Vấn Kế, chọn 1 lá và giao cho %src",
	["#WenjiEffect"] = "%from đã kích hoạt %arg, [%arg2] không thể bị phản ứng.",
	["#wenji-effect"] = "Vấn Kế",
	
	["#shixie"] = "Bách Việt Linh Y",
	["shixie"] = "Sĩ Nhiếp",
	["biluan"] = "Tị Loạn",
	[":biluan"] = "Tỏa định kỹ, khoảng cách từ người khác tới bạn +X (X là số lá trong vùng trang bị của bạn, tối thiểu 1)",
	["lixia"] = "Lễ Hạ",
	[":lixia"] = "Đầu giai đoạn chuẩn bị của người chơi không cùng thế lực, họ có thể bỏ 1 lá trong khu trang bị của bạn, sau đó họ chọn 1 mục:\nHọ bỏ 2 lá\nHọ mất 1 máu\nHọ lệnh bạn rút 2 lá.",

	["@lixia"] = "Có thể kích hoạt \"Lễ Hạ\" của %src",
	["@lixia-choose"] = "Lễ Hạ: Chọn 1 mục",
	["lixia:discard"] = "Bỏ 2 lá",
	["lixia:losehp"] = "Mất 1 máu",
	["lixia:draw"] = "Cho %from rút 2 lá",

    ["#zhonghui"] = "Kiệt Ngạo Đích Dã Tâm Gia",
    ["zhonghui"] = "Chung Hội",
    ["quanji"] = "Quyền Kế",
    [":quanji"] = "Sau khi nhận sát thương hoặc sau khi bạn gây sát thương cho 1 người do hiệu quả của 1 lá đơn mục tiêu, có thể rút 1 lá, sau đó đặt ngửa 1 lá lên tướng, gọi là [Quyền]. Giới hạn trữ bài của bạn +X (X là số [Quyền]).",
    ["paiyi"] = "Bài Dị",
    [":paiyi"] = "Một lần trong giai đoạn hành động, có thể đưa 1 [Quyền] vào chồng bài bỏ và chọn 1 người, họ rút X lá (X là số [Quyền], tối đa 7); sau đó nếu số bài trên tay họ lớn hơn bạn, bạn gây 1 sát thương cho họ.",

    ["@quanji-push"] = "Quyền Kế: Đặt 1 lá lên tướng làm [Quyền]",
    ["power_pile"] = "Quyền",


    ["#dongzhao"] = "Di Tôn Dị Đỉnh",
    ["dongzhao"] = "Đổng Chiêu",
    ["quanjin"] = "Khuyến Tiến",
    [":quanjin"] = "Một lần trong giai đoạn hành động, bạn có thể giao 1 lá trên tay cho người từng nhận sát thương trong giai đoạn này và lệnh họ chấp hành 1 [Quân Lệnh]. Nếu họ chấp hành, bạn rút 1 lá; nếu không chấp hành và bạn không phải người có nhiều bài trên tay nhất, bạn rút X lá (X là số bài trên tay của người nhiều bài trên tay nhất - số bài trên tay bạn, tối đa 5).",
    ["zaoyun"] = "Tạc Vận",
    [":zaoyun"] = "Một lần trong giai đoạn hành động, có thể chọn 1 người không cùng thế lực với bạn và khoảng cách từ bạn đến họ lớn hơn 1 và bỏ X lá bài trên tay (X là khoảng cách từ bạn đến họ -1), khoảng cách từ bạn đến họ là 1 cho đến hết lượt, bạn gây 1 sát thương cho họ.",

    ["#xushu"] = "Hoa Kiếm Vi Lê",
    ["xushu"] = "Từ Thứ",
    ["zhuhai"] = "Tru Hại",
    [":zhuhai"] = "Giai đoạn kết thúc của người khác, nếu họ trong giai đoạn này từng gây sát thương, bạn có thể sử dụng [Sát] không giới hạn tầm với họ.",
    ["pozhen"] = "Phá Trận",
    [":pozhen"] = "Hạn định kỹ, giai đoạn chuẩn bị của người khác, bạn có thể lệnh họ trong lượt chơi này không thể sử dụng hoặc đánh ra bài vật trên tay và không thể \"Trọng Chú\" bài trên tay; bạn có thể bỏ 1 lá của những người có chung đội hình với họ hoặc người vây công trong quan hệ vây công với họ.",
    ["jiancai"] = "Tiến Tài",
    [":jiancai"] = "Phó tướng kỹ, giảm 0.5 máu gốc, khi 1 người cùng thế lực với bạn nhận sát thương, nếu số sát thương không nhỏ hơn số máu của họ, bạn có thể chặn sát thương này sau đó bạn đổi phó tướng; khi một người cùng thế lực với bạn đổi phó tướng, có thể lệnh số tướng được xem +2.",
    
    ["@zhuhai"] = "Có thể kích hoạt \"Tru Hại\", sử dụng [Sát] với %src",
    ["@pozhen-discard"] = "Phá Trận: Có thể bỏ 1 lá của người chung quan hệ đội hình hoặc vây công với %dest",
    ["jiancai:damage"] = "Có thể kích hoạt \"Tiến Tài\", chặn sát thương lên %src",
    ["jiancai:transform"] = "Có thể kích hoạt \"Tiến Tài\", số tướng được xem +2",
    
    ["#wujing"] = "Hàn Mã Lưu Kim",
    ["wujing"] = "Ngô Cảnh",
    ["diaogui"] = "Điều Quy",
    [":diaogui"] = "Một lần trong giai đoạn hành động, có thể sử dụng 1 lá trang bị như [Điệu Hổ Ly Sơn], nếu bằng cách này khiến cho bạn trong quan hệ đội hình, bạn rút X lá (X là số người cùng quan hệ đội hình với bạn).",
    ["fengyang"] = "Phong Dương",
    [":fengyang"] = "Trận pháp kỹ, người không cùng thế lực với bạn không thể thu lấy hoặc bỏ trang bị của người cùng đội hình với bạn.",

    ["#yanbaihu"] = "Sài Nha Lạc Giản",
    ["yanbaihu"] = "Nghiêm Bạch Hổ",
    ["zhidao"] = "Trĩ Đạo",
    [":zhidao"] = "Tỏa định kỹ, đầu giai đoạn hành động, bạn chọn 1 người khác; trong lượt này, khoảng cách từ bạn đến họ là 1, bạn không thể chọn người ngoài bạn và họ làm mục tiêu của bài; sau khi bạn gây sát thương cho họ lần đầu tiên trong lượt này, bạn thu lấy 1 lá trong vùng chơi của họ.",
    ["jilix"] = "Ký Li",
    [":jilix"] = "Phó tướng kỹ, Tỏa định kỹ, máu gốc giảm 0.5, khi bạn trở thành mục tiêu của lá cơ bản Đỏ hoặc công cụ phổ thông Đỏ, nếu số mục tiêu của lá này là 1, lá này có hiệu lực 2 lần; khi bạn nhận sát thương lần thứ 2 trong cùng 1 giai đoạn, bạn chặn sát thương và loại bỏ tướng này.",
    
    ["#zhidao-damage"] = "Trĩ Đạo",
    ["@zhidao-target"] = "Trĩ Đạo: Chọn 1 người khác",
    ["#ZhidaoEffect"] = "%from đã kích hoạt \"%arg\", nhận 1 lá trong vùng chơi của %to",
    
    ["jilix:target"] = "Có thể kích hoạt \"Ký Li\", lệnh %src 1 lần nữa xem như sử dụng [%arg] với bạn.",
    ["jilix:damage"] = "Có thể kích hoạt \"Ký Li\", chặn sát thương và loại bỏ tướng này.",

    ["ImperialEdict"] = "Chiếu Thư",
    [":ImperialEdict"] = "Bài Ký hiệu\n\nSử dụng:\n" ..
                    "1. Một lần trong giai đoạn hành động của người có cùng thế lực với bạn, nếu họ thuộc tiểu thế lực, có thể đặt tối đa 2 lá trên tay lên tướng của bạn; nếu không thuộc tiểu thế lực, họ có thể đặt 1 lá trên tay lên tướng của bạn, gọi là [Chiếu].\n" ..
                    "2. Một lần trong giai đoạn hành động, nếu có 4 lá [Chiếu] không cùng chất, bạn có thể đưa tất cả [Chiếu] vào chồng bài bỏ, rút ngẫu nhiêu 1 lá công cụ thế lực.\n" ,

    ["imperialedictattach"] = "Đặt bài trên tay",
    [":imperialedictattach"] = "Một lần trong giai đoạn hành động của người có cùng thế lực với bạn, nếu họ thuộc tiểu thế lực, có thể đặt tối đa 2 lá trên tay lên tướng của bạn; nếu không thuộc tiểu thế lực, họ có thể đặt 1 lá trên tay lên tướng của bạn, gọi là [Chiếu].",
    ["imperialedicttrick"] = "Nhận bài công cụ",
    [":imperialedicttrick"] = "Một lần trong giai đoạn hành động, nếu có 4 lá [Chiếu] không cùng chất, bạn có thể đưa tất cả [Chiếu] vào chồng bài bỏ, rút ngẫu nhiêu 1 lá công cụ thế lực.",

    ["rule_the_world"] = "Hiệu Lệnh Thiên Hạ",
    [":rule_the_world"] = "Bài công cụ - Ngụy\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người không phải ít máu nhất.\nHiệu quả: Ngoại trừ mục tiêu, mỗi người lựa chọn:\n1. Bỏ 1 lá trên tay xem như sử dụng [Sát] không giới hạn tầm với mục tiêu; người thế lực Ngụy không cần bỏ bài.\n2. Bỏ 1 lá của mục tiêu, người thế lực Ngụy thu lấy lá đó.\n3. Nhận Tiêu ký [Lệnh].",
    ["rule_the_world:slash"] = "%log xem như sử dụng [Sát] với %to",
    ["rule_the_world:discard"] = "Một lá bài của %to bị %log",
    ["rule_the_world_slash"] = "Bỏ 1 lá bài và",
    ["rule_the_world_discard"] = "bỏ đi",
    ["rule_the_world_getcard"] = "thu lấy",
    ["@rule_the_world-slash"] = "Hiệu Lệnh Thiên Hạ: Bỏ 1 lá trên tay, xem như sử dụng [Sát] với %dest.",

    ["conquering"] = "Khắc Phục Trung Nguyên",
    [":conquering"] = "Bài công cụ - Thục\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tùy ý người chơi.\nHiệu quả: Họ lựa chọn 1 mục:\n1. Xem như sử dụng [Sát], khi người thế lực Thục gây sát thương do sử dụng [Sát] này, sát thương +1.\nRút 1 lá, người thế lực Thục đổi thành rút 2 lá.",
    ["@conquering-slash"] = "Khắc Phục Trung Nguyên: Chọn mục tiêu, xem như sử dụng [Sát], hoặc bấm \"Hủy bỏ\" để rút bài. ",

    ["consolidate_country"] = "Cố Quốc An Bang",
    [":consolidate_country"] = "Bài công cụ - Ngô\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Bản thân.\nHiệu quả: Bạn rút 8 lá sau đó bỏ ít nhất 6 lá trên tay, nếu bạn thuộc thế lực Ngô, có thể giao tùy ý tối đa 6 lá cho người khác thuộc thế lực Ngô.",

    ["@consolidate_country-discard"] = "Cố Quốc An Bang: Chọn 6 lá trên tay để bỏ",
    ["@consolidate_country-give"] = "Cố Quốc An Bang: Có thể giao những lá này cho người thế lực Ngô.",

    ["chaos"] = "Văn Hòa Loạn Võ",
    [":chaos"] = "Bài công cụ - Quần\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tất cả người chơi.\nHiệu quả: Mục tiêu mở bài trên tay, sau đó bạn chọn 1 mục:\n1. Lệnh họ bỏ 2 lá khác loại trên tay.\n2. Bỏ 1 lá trên tay họ, người thế lực Quần sau đó nếu không có bài trên tay, bổ sung bài trên tay tới máu hiện tại.",
    
    ["chaos:letdiscard"] = "Lệnh %to bỏ 2 lá không cùng loại trên tay",
    ["chaos:discard"] = "Bỏ 1 lá trên tay %to",

    ["@chaos-select"] = "Văn Hòa Loạn Võ: Chọn 2 lá không cùng loại trên tay để bỏ.",

    ["@trick-show"] = "Có thể mở 1 tướng để [%arg] có thêm hiệu ứng.",
    ["trick_show:show_head"] = "Mở chủ tướng",
    ["trick_show:show_deputy"] = "Mở phó tướng",

    ["#simazhao"] = "Tứ Hải Uy Phục",
    ["simazhao"] = "Tư Mã Chiêu",
    ["suzhi"] = "Túc Trí",
    [":suzhi"] = "Tỏa định kỹ:\nGiới hạn ba lần trong lượt của bạn đối với các mục sau:\n1. Khi bạn gây sát thương do sử dụng [Sát] hoặc [Quyết Đấu], lệnh số sát thương +1.\n 2. Khi bạn sử dụng công cụ, rút 1 lá.\n 3. Sau khi người khác đưa bài vào chồng bài bỏ, thu lấy lá đó.\nNếu chưa kích hoạt \"Túc Trí\" 3 lần trong lượt:\n1. Bạn có thể sử dụng công cụ không hạn chế khoảng cách.\n2. Khi kết thúc lượt chơi, bạn nhận kỹ năng \"Phản Quỹ\" đến trước khi bắt đầu lượt tiếp theo của bạn.",
    ["zhaoxin"] = "Chiêu Tâm",
    [":zhaoxin"] = "Sau khi nhận sát thương, có thể mở tất cả bài trên tay, sau đó hoán đổi bài trên tay với 1 người khác khác không nhiều bài hơn bạn.",
    ["@zhaoxin-exchange"] = "Chiêu Tâm: Chọn 1 người có bài trên tay không nhiều hơn bạn để đổi bài.",
    ["fankui_simazhao"] = "Phản Quỹ",
    
    ["#xuyou"] = "Triều Tần Mộ Sở",
    ["xuyou"] = "Hứa Du",

    ["chenglve"] = "Thành Lược",
    [":chenglve"] = "Khi người cùng thế lực với bạn sử dụng bài, nếu số mục tiêu lớn hơn 1, có thể lệnh họ rút 1 lá, sau khi lá này kết toán xong, nếu bạn nhận sát thương từ lá bài này, có thể lệnh 1 người cùng thế lực với bạn và không có [Âm Dương Ngư] nhận được 1 [Âm Dương Ngư].",
    ["shicai"] = "Thị Tài",
    [":shicai"] = "Tỏa định kỹ, sau khi nhận sát thương, nếu sát thương này nhỏ hơn 2, bạn rút 2 lá; lớn hơn 1, bạn bỏ toàn bộ bài trên tay.",

    ["@chenglve-mark"] = "Thành Lược: Chọn 1 người nhận tiêu ký [Âm Dương Ngư].",

    ["#xiahouba"] = "Cức Đồ Tráng Chí",
    ["xiahouba"] = "Hạ Hầu Bá",
    ["baolie"] = "Báo Liệt",
    [":baolie"] = "Tỏa định kỹ, Đầu giai đoạn hành động, lệnh những người không cùng thế lực có tầm đánh đến bạn sử dụng [Sát] với bạn, nếu không bạn bỏ 1 lá của họ; Bạn sử dụng [Sát] với người có máu không ít hơn bạn không giới hạn tầm đánh và số lần.",
    ["@baolie-slash"] = "Báo Liệt: Sử dụng [Sát] với %src, hoăc họ bỏ 1 lá của bạn.",

    ["#zhugeke"] = "Hưng Gia Xích Tộc",
    ["zhugeke"] = "Gia Cát Khác",
    ["aocai"] = "Ngạo Tài",
    [":aocai"] = "Ngoài lượt của bạn, khi bạn cần sử dụng hoặc đánh ra bài cơ bản, bạn có thể xem hai lá trên đầu chồng bài, có thể sử dụng hoặc đánh ra lá cơ bản tương ứng trong đó.",
    ["duwu"] = "Độc Võ",
    [":duwu"] = "Hạn định kỹ, giai đoạn hành động, bạn có thể chọn tất cả người khác thế lực trong tầm đánh và lựa chọn Quân Lệnh, họ lần lượt chọn có chấp hành Quân Lệnh hay không, nếu không chấp hành, bạn gây 1 sát thương cho họ và rút một lá; sau khi 1 người thoát khỏi trạng thái hấp hối do nhận sát thương từ kỹ năng này, bạn mất 1 máu.",
    
    ["#aocai"] = "Ngạo Tài",
    ["@aocai-view"] = "Ngạo Tài: Chọn 1 lá phù hợp để sử dụng/đánh ra",

    ["#sunchen"] = "Hung Thụ Doanh Dật",
    ["sunchen"] = "Tôn Lâm",
    ["shilu"] = "Thị Lực",
    [":shilu"] = "Khi có người trận vong, có thể đặt tất cả tướng của họ lên tướng này, gọi là [Lục], nếu họ bị bạn giết,bạn nhận 2 lá tướng thừa ngẫu nhiên đặt lên tướng này, gọi là [Lục]. Giai đoạn chuẩn bị, nếu bạn có [Lục], có thể bỏ tối đa X lá (X là số [Lục]) rồi rút số lá tương ứng.",
    ["xiongnve"] = "Hung Ngược",
    [":xiongnve"] = "Đầu giai đoạn hành động, có thể bỏ 1 [Lục], chọn 1 mục có hiệu quả trong lượt này:\n1. Khi bạn gây sát thương cho người cùng thế lực với [Lục] đã bỏ, sát thương này +1.\n2. Sau khi bạn gây sát thương cho người cùng thế lực với [Lục] đã bỏ, thu lấy 1 lá của họ.\n3. Bạn sử dụng bài với mục tiêu cùng thế lực với [Lục] đã bỏ không giới hạn số lần.\nKết thúc giai đoạn hành động, có thể bỏ 2 [Lục], trước khi lượt chơi tiếp theo của bạn bắt đầu, khi bạn nhận sát thương từ người khác, sát thương này -1. ",

    ["#xiongnve-effect"] = "Hung Ngược",

    ["massacre"] = "Lục",
    ["@shilu"] = "Thị Lục: có thể bỏ tối đa%arg lá rồi rút số lá tương ứng.",
    ["@xiongnve-continue"] = "Hung Ngược: Có thể tiếp tục bỏ [Lục]",
    
    ["#GetMassacreDetail"] = "%from đã nhận [Lục] %arg",
    ["#dropMassacreDetail"] = "%from đã bỏ [Lục] %arg",
    ["#GetMassacre"] = "%from đã nhận %arg [Lục]",
    
    ["@xiongnve-choice"] = "Hung Ngược: Lựa chọn 1 tác dụng.",
    ["xiongnve:adddamage"] = "+1 sát thương",
    ["xiongnve:extraction"] = "Lấy bài sau khi gây sát thương",
    ["xiongnve:nolimit"] = "Sử dụng bài không giới hạn số lần",
    
    ["#xiongnveAdddamage"] = "Lượt này, sát thương %from gây cho người thế lực %arg +1",
    ["#xiongnveExtraction"] = "Lượt này, %from lấy 1 lá của người thế lực %arg sau khi gây sát thương cho họ",
    ["#xiongnveNolimit"] = "Lượt này, %from sử dụng bài lên người thế lực %arg không giới hạn số lần.",
    ["xiongnve_avoid"] = "Hung Ngược: Giảm sát thương.",


    ["#panjun"] = "Quan Nhân Vu Vy",
    ["panjun"] = "Phan Tuấn",
    ["congcha"] = "Quan Vy",
    [":congcha"] = "Giai đoạn chuẩn bị, bạn có thể chọn 1 người không có thế lực; Trước khi bắt đầu lượt tiếp theo của bạn, khi họ mở tướng và trở thành có thế lực, nếu họ cùng thế lực với bạn, bạn và họ lá; nếu không cùng thế lực, họ mất 1 máu. Giai đoạn rút bài, nếu không có người không có thế lực, bạn có thể lệnh số lá rút +2.",
    ["gongqing"] = "Công Thanh",
    [":gongqing"] = "Tỏa định kỹ, khi bạn nhận sát thương, nếu tầm đánh của nguồn sát thương lớn hơn 3, sát thương này +1; nếu tầm đánh của nguồn sát thương nhỏ hơn 3 và sát thương lớn hơn 1, sát thương này trở thành 1.",
    ["@congcha-target"] = "Có thể kích hoạt \"Quan Vy\", chọn 1 người không có thế lực.",
    
    ["#congcha-effect"] = "Quan Vy",

    
    ["#wenqin"] = "Dương Châu Thích Sử",
    ["wenqin"] = "Văn Khâm",
    ["jinfa"] = "Căng Phạt",
    [":jinfa"] = "Một lần trong giai đoạn hành động, có thể bỏ 1 lá và chọn 1 người khác có bài, họ chọn:\n1. Lệnh bạn lấy 1 lá của họ.\n2. Đưa 1 trang bị cho bạn, nếu bạn nhận được lá ♠ và lá đó còn trên tay bạn, xem như họ sử dụng 1 [Sát] với bạn.",
    ["@jinfa-give"] = "Căng Phạt: Chọn 1 trang bị giao cho %src hoặc bấm hủy và lệnh %src lấy 1 lá của bạn.",


    ["#huangzu"] = "Giang Hạ Phúc Tâm",
    ["huangzu"] = "Hoàng Tổ",
    ["xishe"] = "Vãn Cung",
    [":xishe"] = "Giai đoạn chuẩn bị của người khác, bạn có thể bỏ 1 lá trong vùng trang bị và xem như sử dụng 1 [Sát] với họ không giới hạn khoảng cách, nếu số máu của họ nhỏ hơn của bạn, tất cả người chơi không thể hưởng ứng [Sát] này; bạn có thể lặp lại quá trình này. Khi lượt chơi kết thúc, nếu trong lượt họ trận vong và nguồn là [Sát] của bạn, bạn có thể đổi tướng này, tướng sau khi được đổi sẽ úp xuống.",
    ["@xishe-slash"] = "Có thể kích hoạt \"Văn Cung\", bỏ 1 lá trong vùng trang bị, xem như sử dụng [Sát] với %src",
    
    ["#xishe-transform"] = "Vãn Cung",
    
    
    
    ["#gongsunyuan"] = "Giáo Đồ Huyền Hải",
    ["gongsunyuan"] = "Công Tôn Uyên",
    ["huaiyi"] = "Hoài Dị",
    [":huaiyi"] = "Một lần trong giai đoạn hành động, bạn có thể mở toàn bộ bài trên tay ra, nếu bài nhiều hơn 1 màu, bạn chọn 1 màu và bỏ những lá trên tay có màu này, chọn tối đa X người có bài, thu lấy 1 lá của từng người (X là số lá bạn vừa bỏ), đặt tất cả  trang bị bạn vừa thu lấy lên tướng này, gọi là [Dị].",
    ["zisui"] = "Tứ Tuy",
    [":zisui"] = "Tỏa định kỹ, Giai đoạn rút bài, nếu có [Dị], rút thêm X lá (X là số [Dị]). Giai đoạn kết thúc, nếu số [Dị] lớn hơn giới hạn máu của bạn, bạn lập tức tử vong.",
    
    ["@huaiyi-choose"] = "Hoài Dị: Chọn 1 màu để bỏ bài",
    ["@huaiyi-snatch"] = "Hoài Dị: Chọn tối đa %arg người, lần lượt thu lấy 1 lá của họ.",
    ["huaiyi:red"] = "Đỏ",
    ["huaiyi:black"] = "Đen",
    
    ["disloyalty"] = "Dị",

	["#test"] = "%arg",
	
	["#pengyang"] = "Giang Dương Thái Thủ",
	["pengyang"] = "Bành Dạng",
	["daming"] = "Gián Nghịch",
	[":daming"] = "Đầu giai đoạn hành động của người cùng thế lực, bạn có thể bỏ 1 công cụ, bạn đưa 1 người đang không trong trạng thái liên hoàn vào trạng thái liên hoàn, bạn rút X lá ( X là số thế lực có người trong trạng thái liên hoàn), chọn:\n1. Sử dụng [Đào] với người đang có lượt; 2. Người đang có lượt sử dụng [Sát Lôi] với người do bạn chọn.",
	["xiaoni"] = "Hiêu Bạt",
	[":xiaoni"] = "Tỏa định kỹ, khi bạn sử dụng hoặc trở thành mục tiêu của lá cơ bản hoặc công cụ phổ thông, nếu có người khác cùng thế lực với bạn và số bài trên tay họ không nhiều hơn bạn, bạn lệnh tất cả mục tiêu không thể hưởng ứng với lá này.",
	
	["@daming"] = "Có thể kích hoạt \"Gián Nghịch\" với %dest, bỏ 1 công cụ.",
	["@daming-chain"] = "Gián Nghịch: Chọn người để đưa vào trạng thái liên hoàn.",
	["@daming-choice"] = "Gián Nghịch: Chọn hiệu quả muốn %dest chấp hành",
	["daming:peach"] = "Sử dụng [Đào]",
	["daming:slash"] = "Sử dụng [Sát Lôi]",
	["@daming-slash"] = "Gián Nghịch: Chọn mục tiêu để %dest sử dụng [Sát Lôi]",
	
	["#sufei"] = "Hùng Mãnh Dật Tài",
	["sufei"] = "Tô Phi",
	["lianpian"] = "Liên Phiên",
	[":lianpian"] = "Giai đoạn kết thúc của 1 người, nếu trong lượt này tổng số bài họ đã bỏ của tất cả người chơi lớn hơn số máu của họ, nếu là lượt của bạn, bạn có thể lệnh 1 người cùng thế lực bổ sung bài trên tay đến giới hạn máu của họ; nếu là lượt của người khác, họ chọn bỏ 1 lá của bạn hoặc lệnh bạn hồi 1 máu.",
	
	["@lianpian-target"] = "Có thể kích hoạt \"Liên Phiên\", chọn 1 người bổ sung bài trên tay đến giới hạn máu?",
	["@lianpian"] = "Có thể kích hoạt \"Liên Phiên\" của %src",
	["#lianpian-other"] = "Liên Phiên",
	["lianpian:discard"] = "Bỏ 1 lá của họ.",
	["lianpian:recover"] = "Lệnh họ hồi 1 máu.",
	
	["#liuba"] = "Sắc Hành Chỉnh Thân",
	["liuba"] = "Lưu Ba",
	["tongdu"] = "Trù Độ",
	[":tongdu"] = "Giai đoạn kết thúc của người cùng thế lực, họ có thể rút X lá (X là số bài họ đã bỏ trong giai đoạn bỏ bài của lượt này, tối đa 3",
	["qingyin"] = "Quy Ẩn",
	[":qingyin"] = "Hạn định kỹ, giai đoạn hành động, bạn chọn tất cả người cùng thế lực (Áp dụng sau khi bạn đã lật tướng); họ lần lượt hồi X máu (X là giới hạn máu trừ đi số máu của họ); sai đó bạn loại bỏ tướng này.",
	["@tongdu"] = "Có thể kích hoạt \"Trù Độ\" của %src",
	["#tongdu-other"] = "Trù Độ",
	
	["#zhuling"] = "Kiên Thành Túc Tướng",
	["zhuling"] = "Văn Sính",
	["juejue"] = "Trấn Vệ",
	[":juejue"] = "Đầu giai đoạn bỏ bài, bạn có thể mất 1 máu, khi giai đoạn này kết thúc, nếu trong giai đoạn này bạn có bỏ bài, bạn lệnh người khác chọn:\n1. Đưa X lá vào chồng bài bỏ (X là số lá bạn đã bỏ trong giai đoạn này);\n2. Nhận 1 sát thương từ bạn. Khi bạn giết người cùng thế lực với bạn, bỏ qua chấp hành thưởng phạt.",
	["fangyuan"] = "Ngư Lân",
	[":fangyuan"] = "Trận pháp kỹ,\n1. Giới hạn trữ bài +1 nếu bạn là người vây công trong quan hệ vây công.\n2. Giới hạn trữ bài -1 nếu bạn là người bị vây công trong quan hệ vây công.\n3. Giai đoạn kết thúc, bạn sử dụng [Sát] lên 1 người vây công trong quan hệ vây công có bạn là người bị vây công.",
	["@fangyuan-slash"] = "Ngư Lân: chọn 1 người đang vây công bạn, xem như sử dụng [Sát] với họ",
	
	["@juejue-discard"] = "Trấn Vệ: Bỏ %arg lá trên tay, hoặc %src gây 1 sát thương với bạn.",
	
	["#fangyuan-maxcards"] = "Ngư Lân",
    

	["illustrator:huaxin"] = "Thu Bảo Bảo",
	["illustrator:luyusheng"] = "君桓文化",
	["illustrator:zongyux"] = "铁杵",
	["illustrator:miheng"] = "佚名",
	["illustrator:duyu"] = "鬼画符",
	["illustrator:fengxi"] = "佚名",
	["illustrator:mengda"] = "张帅",
	["illustrator:tangzi"] = "凝聚永恒",
	["illustrator:zhanglu"] = "PanPo",
	["illustrator:mifangfushiren"] = "Mộc Mĩ Nhân",
	["illustrator:liuqi"] = "绘聚艺堂",
	["illustrator:shixie"] = "PanPo",
	["illustrator:zhonghui"] = "PanPo",
	["illustrator:dongzhao"] = "小牛",
	["illustrator:xushu"] = "YanBai",
	["illustrator:wujing"] = "小牛",
	["illustrator:yanbaihu"] = "YanBai",
	["illustrator:simazhao"] = "凝聚永恒",
	["illustrator:xuyou"] = "兴游",
	["illustrator:xiahouba"] = "熊猫探员",
	["illustrator:zhugeke"] = "LiuHeng",
	["illustrator:sunchen"] = "佚名",
	["illustrator:panjun"] = "Thu Bảo Bảo",
	["illustrator:wenqin"] = "Mộc Mĩ Nhân",
	["illustrator:huangzu"] = "佚名",
	["illustrator:gongsunyuan"] = "biou09",
	["illustrator:pengyang"] = "山顶洞人",
	["illustrator:sufei"] = "兴游",
	["illustrator:liuba"] = "三国志",
	["illustrator:zhuling"] = "Mộc Mĩ Nhân",

	["designer:huaxin"] = "HanXu",
	["designer:luyusheng"] = "HanXu",
	["designer:zongyux"] = "HanXu",
	["designer:miheng"] = "HanXu",
	["designer:duyu"] = "cl",
	["designer:fengxi"] = "HanXu",
	["designer:mengda"] = "HanXu",
	["designer:tangzi"] = "荼蘼(HanXu)",
	["designer:zhanglu"] = "HanXu",
	["designer:mifangfushiren"] = "Loun老萌",
	["designer:liuqi"] = "荼蘼(HanXu)",
	["designer:shixie"] = "HanXu",
	["designer:zhonghui"] = "HanXu",
	["designer:dongzhao"] = "Tiêu Dao Ngư Thúc",
	["designer:xushu"] = "梦魇狂朝",
	["designer:wujing"] = "Tiêu Dao Ngư Thúc",
	["designer:yanbaihu"] = "Tiêu Dao Ngư Thúc",
	["designer:simazhao"] = "HanXu",
	["designer:xuyou"] = "Tổ thiết kế Thái Dương Thần",
	["designer:xiahouba"] = "Tổ thiết kế Thái Dương Thần",
	["designer:zhugeke"] = "Tổ thiết kế Thái Dương Thần",
	["designer:sunchen"] = "Tổ thiết kế Thái Dương Thần",
	["designer:panjun"] = "Tổ thiết kế Thái Dương Thần",
	["designer:wenqin"] = "Tổ thiết kế Thái Dương Thần",
	["designer:huangzu"] = "Tổ thiết kế Thái Dương Thần",
	["designer:gongsunyuan"] = "Tổ thiết kế Thái Dương Thần",
	["designer:pengyang"] = "Tổ thiết kế Thái Dương Thần",
	["designer:sufei"] = "Tổ thiết kế Thái Dương Thần",
	["designer:liuba"] = "Tổ thiết kế Thái Dương Thần",
	["designer:zhuling"] = "Tổ thiết kế Thái Dương Thần",


}
