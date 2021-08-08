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
	-- 吴势力
	["#sunquan"] = "Niên Khinh Hiền Quân",
	["sunquan"] = "Tôn Quyền",
	["zhiheng"] = "Chế Hành",
	[":zhiheng"] = "Một lần trong giai đoạn hành động, bạn có thể bỏ đi tối đa X lá bài (X là giới hạn máu của bạn), sau đó rút số lá bài tương ứng.",

	["#ganning"] = "Cẩm Phàm Du Hiệp",
	["ganning"] = "Cam Ninh",
	["qixi"] = "Kỳ Tập",
	[":qixi"] = "Giai đoạn hành động, bạn có thể sử dụng bài Đen xem như [Quá Hạ Sách Kiều].",

	["#lvmeng"] = "Bạch Y Độ Giang",
	["illustrator:lvmeng"] = "樱花闪乱",
	["lvmeng"] = "Lữ Mông",
	["keji"] = "Khắc Kỷ",
	[":keji"] = "Tỏa định kỹ, đầu giai đoạn bỏ bài, nếu bạn trong giai đoạn hành động không sử dụng các lá bài khác màu sắc với nhau, giới hạn trữ bài của bạn trong lượt này +4.",
	["mouduan"] = "Mưu Đoạn",
	[":mouduan"] = "Giai đoạn kết thúc, nếu giai đoạn hành động đã sử dụng bài từ 4 chất khác nhau hoặc 3 loại bài khác nhau, bạn có thể di chuyển một lá trên bàn chơi.",
	["@mouduan-move"] = "Mưu Đoạn: có thể di chuyển 1 lá trên bàn.",

	["#huanggai"] = "Khinh Thân Vi Quốc",
	["illustrator:huanggai"] = "G.G.G.",
	["huanggai"] = "Hoàng Cái",
	["kurou"] = "Khổ Nhục",
	[":kurou"] = "Một lần trong giai đoạn hành động, bạn có thể bỏ 1 lá; Nếu làm vậy bạn mất 1 máu, sau đó rút 3 lá, giới hạn sử dụng [Sát] của bạn trong giai đoạn này +1.",

	["#zhouyu"] = "Đại Đô Đốc",
	["zhouyu"] = "Chu Du",
	["illustrator:zhouyu"] = "绘聚艺堂",
	["yingzi_zhouyu"] = "Anh Tư",
	[":yingzi"] = "Tỏa định kỹ, giai đoạn rút bài, bạn rút thêm 1 lá bài; giới hạn trữ bài trên tay bạn bằng với giới hạn máu.",
	["fanjian"] = "Phản Gián",
	[":fanjian"] = "Một lần trong giai đoạn hành động, bạn có thể mở ra một lá bài trên tay và giao cho một người khác, bạn lệnh cho họ lựa chọn một mục: 1. Mở ra toàn bộ bài trên tay và bỏ đi những lá cùng chất với lá bạn đã mở ra của họ; 2. Mất 1 máu.",
	["fanjian_show:prompt"] = "Phản Gián: Bấm \"Xác định\" để mở bài trên tay và bỏ toàn bộ lá %arg; Bấm \"/Hủy bỏ\" để mất 1 máu.",
	
	["#daqiao"] = "Căng Trì Chi Hoa",
	["daqiao"] = "Đại Kiều",
	["guose"] = "Quốc Sắc",
	[":guose"] = "Giai đoạn hành động, có thể sử dụng lá Rô như [Lạc Bất Tư Thục]",
	["liuli"] = "Lưu Ly",
	[":liuli"] = "Khi bạn trở thành mục tiêu của [Sát], bạn có thể bỏ đi một lá bài để dời mục tiêu của [Sát] này sang người khác trong tầm đánh của bạn (không thể là người sử dụng thẻ [Sát] và người đã là mục tiêu của [Sát] này).",
	["~liuli"] = "Chọn 1 lá, chọn người khác rồi bấm \"Xác định\"",
	["@liuli"] = "%src đã sử dụng [Sát] lên bạn, có thể bỏ 1 lá để kích hoạt \"Lưu Ly\"",

	["#luxun"] = "Kình Thiên Chi Trụ",
	["luxun"] = "Lục Tốn",
	["qianxun"] = "Khiêm Tốn",
	["qianxun-cancel"] = "Khiêm Tốn",
	[":qianxun"] = "Tỏa định kỹ, khi bạn trở thành mục tiêu của [Thuận Thủ Khiên Dương] và [Lạc Bất Tư Thục], hủy bỏ mục tiêu đối với bạn.",
	["duoshi"] = "Độ Thế",
	[":duoshi"] = "Bốn lần trong giai đoạn hành động, bạn có thể sử dụng bài Đỏ trên tay xem như [Dĩ Dật Đãi Lao].",

	["#sunshangxiang"] = "Cung Yêu Cơ",
	["sunshangxiang"] = "Tôn Thượng Hương",
	["jieyin"] = "Kết Nhân",
	[":jieyin"] = "Một lần trong giai đoạn hành động, có thể bỏ đi 2 lá trên tay và chọn một tướng nam khác đang bị thương, bạn cùng họ hồi 1 máu.",
	["xiaoji"] = "Kiêu Cơ",
	["xiaojidraw"] = "Kiêu Cơ: Rút bài.",
	[":xiaoji"] = "Khi bạn mất đi bài trong khu trang bị, bạn có thể rút 2 lá.",

	["#sunjian"] = "Vũ Liệt Đế",
	["sunjian"] = "Tôn Kiên",
	["illustrator:sunjian"] = "LiuHeng",
	["yinghun_sunjian"] = "Anh Hồn",
	[":yinghun"] = "Giai đoạn chuẩn bị, nếu bạn đang bị thương, bạn có thể lựa chọn một người chơi khác và bạn lựa chọn một mục: 1. Lệnh họ rút X lá sau đó bỏ đi 1 lá; 2. Lệnh họ rút 1 lá sau đó bỏ đi X lá (X là số máu đã mất).",
	["#yinghun_sunjian"] = "Kích hoạn \"Anh Hồn\" lên %to",
	["yinghun-invoke"] = "Có thể kích hoạt \"Anh Hồn\"<br/>Chọn 1 người chơi rồi bấm \"Xác định\"<br/>",
	["yinghun_sunjian:d1tx"] = "Rút 1 lá rồi bỏ ra X lá",
	["yinghun_sunjian:dxt1"] = "Rút X lá rồi bỏ đi 1 lá",

	["#xiaoqiao"] = "Kiều Tình Chi Hoa",
	["xiaoqiao"] = "Tiểu Kiều",
	["illustrator:xiaoqiao"] = "绘聚艺堂",
	["hongyan"] = "Hồng Nhan",
	[":hongyan"] = "Toả định kỹ, lá Bích của bạn xem như Cơ.",
	["tianxiang"] = "Thiên Hương",
	[":tianxiang"] = "Khi bạn nhận sát thương, có thể bỏ một lá Cơ trên tay để chặn sát thương này lại và lựa chọn một người khác, bạn chọn: 1. Lệnh họ nhận một điểm sát thương từ nguồn sau đó rút X thẻ bài (X là số sinh lực mục tiêu đã tổn thất nhiều nhất 5); 2. Lệnh họ mất một sinh lực sau đó thu lấy bài bạn vừa bỏ.",
	
	["@tianxiang-card"] = "Có thể bỏ 1 lá Cơ để kích hoạt \"Thiên Hương \"",
	["@tianxiang-choose"] = "Thiên Hương: Chọn cho %dest nhận 1 sát thương và rút bài hoặc cho %dest mất 1 máu và thu lấy [%arg]",
	["tianxiang:damage"] = "Nhận sát thương",
	["tianxiang:losehp"] = "Mất máu",

	["#taishici"] = "Đốc Liệt Chi Sĩ",
	["taishici"] = "Thái Sử Từ",
	["illustrator:taishici"] = "Tuu.",
	["tianyi"] = "Thiên Nghĩa",
	[":tianyi"] = "Một lần trong giai đoạn hành động, có thể đấu điểm với 1 người. Nếu bạn thắng, bạn trong lượt sử dụng [Sát] không hạn chế khoảng cách, giới hạn sử dụng [Sát] và sô mục tiêu của [Sát] +1; Nếu không thắng, bạn không thể sử dụng [Sát] cho đến hết lượt.",

	["#zhoutai"] = "Lịch Chiến Chi Khu",
	["zhoutai"] = "Chu Thái",
	["illustrator:zhoutai"] = "Thinking",
	["buqu"] = "Bất Khuất",
	[":buqu"] = "Tỏa định kỹ, khi bạn trong trạng thái hấp hối, bạn mở 1 lá bài trên cùng chồng bài và đặt lên tướng này, gọi là [Sang]. Nếu [Sang] mới không cùng điểm với các [Sang] khác trên tướng này, bạn hồi đến 1 máu; nếu cùng điểm, bạn đặt [Sang] này vào chồng bài bỏ.",
	["scars"] = "Sang",
	["#BuquDuplicate"] = "%from thất bại khi dùng \"<font color=\"yellow\"><b>Bất Khuất</b></font>\". Có lá [Sang] trùng trong %arg",
	["#BuquDuplicateGroup"] = "Số trùng của %arg là %arg2",
	["$BuquDuplicateItem"] = "Lá [Sang] bị trùng: %card",
	["$BuquRemove"] = "%from loại bỏ lá [Sang]: %card",
	["fenji"] = "Phấn Kích",
	[":fenji"] = "Giai đoạn kết thúc của 1 người, nếu họ không có bài trên tay, có thể lệnh cho họ rút 2 lá sau đó bạn mất 1 máu.",

	["#lusu"] = "Độc Đoạn Đích Ngoại Giao Gia",
	["lusu"] = "Lỗ Túc",
	["illustrator:lusu"] = "LiuHeng",
	["haoshi"] = "Hảo Thi",
	[":haoshi"] = "Giai đoạn rút bài, có thể rút thêm 2 lá, sau đó khi kết thúc giai đoạn rút bài, nếu số bài trên tay bạn nhiều hơn 5, bạn giao một nửa bài trên tay cho 1 người khác có số bài trên tay ít nhất.",
	["#haoshi-give"] = "Hảo Thi: Cho bài",
	["@haoshi-give"] = "Hảo Thi: Chọn %arg lá trên tay và đưa 1 người có ít bài nhất.",
	["dimeng"] = "Kết Minh",
	[":dimeng"] = "Một lần trong giai đoạn hành động, có thể chọn 2 người khác và bỏ đi X lá (X là số bài chênh lệch trên tay giữa 2 người), sau đó lệnh họ hoán đổi bài trên tay.",
	["#Dimeng"] = "%from (tay %arg lá) và %to (tay %arg2 lá) đã đổi bài cho nhau",

	["#erzhang"] = "Kinh Thiên Vĩ Địa",
	["erzhang"] = "Trương Chiêu & Trương Hoành",
	["&erzhang"] = "Trương Chiêu Trương Hoành",
	["illustrator:erzhang"] = "废柴男",
	["zhijian"] = "Trực Gián",
	[":zhijian"] = "Giai đoạn hành động, có thể đặt 1 trang bị trên tay vào vùng tranh bị của người khác, sau đó rút 1 lá.",
	["guzheng"] = "Cổ Chính",
	[":guzheng"] = "Kết thúc giai đoạn bỏ bài của người khác, có thể trả lại 1 lá trong những lá bỏ đi ở giai đoạn này lên tay của họ; nếu làm vậy, bạn có thể thu lấy những lá còn lại.",
	["$ZhijianEquip"] = "%from được trang bị %card",
	["@guzheng"] = "Có thể kích hoạt \"Cổ Chính\" để khiến %src lấy lại 1 lá trong chỗ bài bỏ." ,
	["@guzheng-obtain"] = "Cổ chính: Có thể lấy những lá bỏ còn lại.",
	["#guzheng"] = "Cổ Chính",
	["#guzhengOther"] = "Cổ Chính",

	["#dingfeng"] = "Thanh Trắc Trọng Thần",
	["dingfeng"] = "Đinh Phụng",
	["illustrator:dingfeng"] = "魔鬼鱼",
	["duanbing"] = "Đoản Binh",
	[":duanbing"] = "Sau khi chỉ định mục tiêu cho [Sát], bạn có thể lệnh 1 người có khoảng cách là 1 trở thành mục tiêu của [Sát] này",
	["duanbing-invoke"] = "\"Đoản Binh\": Có thể chọn 1 người trong tầm 1 để trở thành mục tiêu của [Sát]",
	["fenxun"] = "Phấn Tấn",
	[":fenxun"] = "Một lần trong giai đoạn hành động, có thể bỏ đi 1 lá bài và lựa chọn 1 người khác, khoảng cách từ bạn đến họ là 1 cho đến hết lượt.",

}

