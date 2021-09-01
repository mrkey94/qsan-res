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
	["manoeuvre"] = "EX",
	
	["#huaxin"] = "Uyên Thanh Ngọc Khiết",
	["huaxin"] = "Hoa Hâm",
	["illustrator:huaxin"] = "秋呆呆",
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
	["illustrator:luyusheng"] = "君桓文化",
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
	
	["#ZhiweiFinsh"] = "%from đã kết thúc kỹ năng \"%arg\" lên %to",
	
	["#zongyux"] = "Cửu Uẩn Hồng Lư",
    ["zongyux"] = "Tông Dự",
    ["illustrator:zongyux"] = "铁杵",
    ["qiao"] = "Khí Ngạo",
    [":qiao"] = "Hai lần trong giai đoạn hành động của mỗi người, sau khi bạn trở thành mục tiêu của bài do người khác thế lực sử dụng, có thể bỏ 1 lá của họ, sau đó bạn bỏ 1 lá.",
    ["chengshang"] = "Thừa Thưởng",
    [":chengshang"] = "Một lần trong giai đoạn hành động, sau khi bài bạn sử dụng chỉ định người khác thế lực làm mục tiêu kết toán xong, nếu lá này không gây sát thương, có thể rút 1 lá.",

    ["@qiao-discard"] = "Khí Ngạo: Bỏ 1 lá.",
    
    
    
    ["MOL"] = "Mobile",
    
    
    ["#duyu"] = "Văn Thành Võ Đức",
    ["duyu"] = "Đỗ Dự",
    ["illustrator:duyu"] = "石蝉",
    ["wuku"] = "Vũ Khố",
    [":wuku"] = "Tỏa định kỹ, khi 1 người không cùng thế lực sử dụng 1 trang bị, bạn thu lấy 1 tiêu kỹ [Võ Khố] (Tối đa 2).",
    ["miewu"] = "Diệt Ngô",
    [":miewu"] = "Một lần trong lượt của mỗi người, có thể bỏ 1 [Võ Khố], sau đó sử dụng/đánh ra 1 lá bài như 1 lá cơ bản hoặc công cụ tùy ý; sau đó, rút lá.",
    ["#armory"] = "Vũ Khố",
	
	["lord_ex"] = "Song Quốc -·EX",
	
	
	["#mengda"] = "Đãi Quân Phản Phúc",
	["mengda"] = "Mạnh Đạt",
	["illustrator:mengda"] = "张帅",
	["qiuan"] = "Cầu An",
	[":qiuan"] = "Khi bạn nhận sát thương, nếu bạn không có [Hàm], có thể đem lá gây sát thương cho bạn đặt lên tướng này, gọi là [Hàm], sau đó chặn sát thương này.",
	["liangfan"] = "Lượng Phản",
	[":liangfan"] = "Tỏa định kỹ, Giai đoạn chuẩn bị, nếu bạn có [Hàm], bạn mất 1 máu, sau đó thu lấy [Hàm], lượt này sau khi gây sát thương cho 1 người bỏi sử dụng [Hàm], bạn có thể thu lấy 1 lá của họ.",
	["letter"] = "Hàm",
	["#liangfan-effect"] = "Lượng Phản",
	["#LiangfanEffect"] = "%from đã sử dụng [%arg] để gây sát thương và thu lấy 1 lá của %to",
	
	["@liangfan"] = "Lượng Phản: Lấy 1 lá của %dest",
	
	
	["#tangzi"] = "Công Học Chi Kỳ Tài",
	["tangzi"] = "Đường Tư",
	["illustrator:tangzi"] = "佚名",
	["xingzhao"] = "Hưng Thạo",
	[":xingzhao"] = "Tỏa định kỹ, dựa theo số thế lực trên bàn chơi có người bị thương: \n1 trở lên: Bạn nhận \"Tuân Tuân\" (Lý Điển)\n2 trở lên: Khi bạn sử dụng trang bị, bạn rút 1 lá.\n3 trở lên: Bạn bỏ qua giai đoạn bỏ bài\n4 trở lên: Khi bạn mất bài trong vùng trang bị, rút 1 lá.",
	["xunxun_tangzi"] = "Tuân Tuân",
	
	["#zhanglu"] = "Chính Khoan Giáo Huệ",
	["zhanglu"] = "Trương Lỗ",
	["illustrator:zhanglu"] = "佚名",
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
	["illustrator:mifangfushiren"] = "木美人",
	["fengshix"] = "Phong Thế",
	[":fengshix"] = "Sau khi bạn sử dụng bài chỉ định 1 mục tiêu duy nhất, nếu số bài trên tay họ nhỏ hơn bạn, bạn có thể bỏ 1 lá của bạn và họ, sau đó sát thương này +1. Sau khi bạn trở thành mục tiêu duy nhất của bài từ người khác, nếu số lá trên tay bạn nhỏ hơn họ, họ có thể bỏ 1 lá của bạn và họ, sau đó sát thương này +1.",
	
	["@fengshix"] = "Có thể kích hoặc \"Phong Thế\" của %src",
	
	
	["#liuqi"] = "Cư Ngoại Nhi An",
	["liuqi"] = "Lưu Kỳ",
	["illustrator:liuqi"] = "佚名",
	["wenji"] = "Vấn Kế",
	[":wenji"] = "Đầu giai đoạn hành động, bạn có thể lệnh 1 người khác giao cho bạn 1 lá ngửa mặt. Nếu họ cùng thế lực hoặc vô thế lực, lượt này bạn sử dụng lá này không hạn chế khoảng cách cùng số lần và không thể hưởng ứng' Nếu họ không cùng thế lực, bạn giao cho họ 1 lá bài khác.",
	
	["tunjiang"] = "Truân Giang",
	[":tunjiang"] = "Giai đoạn kết thúc, nếu bạn trong giai đoạn hành động sử dụng ít nhất 1 lá và không chỉ định người khác làm mục tiêu, bạn có thể rút X lá (X là số thế lực trên bàn chơi).",
	["@wenji"] = "Có thể kích \"Vấn Kế\", chọn 1 người khác",
	["@wenji-give"] = "Vấn Kế, chọn 1 lá và giao cho %src",
	["#WenjiEffect"] = "%from đã kích hoạt %arg, [%arg2] không thể bị phản ứng.",
	["#wenji-effect"] = "Vấn Kế",
	
	["#shixie"] = "Hùng Trường Bách Việt",
	["shixie"] = "Sĩ Nhiếp",
	["illustrator:shixie"] = "佚名",
	["biluan"] = "Tị Loạn",
	[":biluan"] = "Tỏa định kỹ, khoảng cách từ người khác tới bạn +X (X là số lá trong vùng trang bị của bạn)",
	["lixia"] = "Lễ Hạ",
	[":lixia"] = "Đầu giai đoạn chuẩn bị của người chơi khác thế lực, họ có thể bỏ 1 lá trong khu trang bị của bạn, sau đó họ chọn 1 mục:\nHọ bỏ 2 lá\nHọ mất 1 máu\nHọ lệnh bạn rút 2 lá.",

	["@lixia"] = "Có thể kích hoạt \"Lễ Hạ\" của %src",
	["@lixia-choose"] = "Lễ Hạ: Chọn 1 mục",
	["lixia:discard"] = "Bỏ 2 lá",
	["lixia:losehp"] = "Mất 1 máu",
	["lixia:draw"] = "Cho %from rút 2 lá",

    ["#zhonghui"] = "Kiệt Ngạo Đích Dã Tâm Gia",
    ["zhonghui"] = "Chung Hội",
    ["illustrator:zhonghui"] = "磐蒲",
    ["quanji"] = "Quyền Kế",
    [":quanji"] = "Sau khi nhận sát thương hoặc sau khi bạn gây sát thương cho 1 người do hiệu quả của 1 lá đơn mục tiêu, có thể rút 1 lá, sau đó đặt ngửa 1 lá lên tướng, gọi là [Quyền]. Giới hạn trữ bài của bạn +X (X là số [Quyền]).",
    ["paiyi"] = "Bài Dị",
    [":paiyi"] = "Giai đoạn hành động, có thể bỏ 1 [Quyền] và chọn 1 người, họ rút X lá (X là số [Quyền]; sau đó nếu số bài trên tay họ không nhỏ hơn bạn, bạn gây 1 sát thương cho họ và vô hiệu kỹ năng này trong lượt này.",

    ["@quanji-push"] = "Quyền Kế: Đặt 1 lá lên tướng làm [Quyền]",
    ["power_pile"] = "Quyền",

}