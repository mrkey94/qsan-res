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

	-- 魏势力
	["#caocao"] = "Ngụy Vũ Đế",
	["caocao"] = "Tào Tháo",
	["jianxiong"] = "Gian Hùng",
	[":jianxiong"] = "Sau khi nhận sát thương, có thể thu lấy lá bài gây sát thương cho bạn.",

	["#simayi"] = "Lang Cố Chi Quỷ",
	["simayi"] = "Tư Mã Ý",
	["fankui"] = "Phản Phệ",
	[":fankui"] = "Sau khi nhận sát thương, có thể lấy 1 lá của nguồn sát thương.",
	["guicai"] = "Quỷ Tài",
	[":guicai"] = "Trước khi 1 phán xét có hiệu lực, có thể đánh ra 1 lá bài để thay thế kết quả Phán xét đó.",
	["@guicai-card"] = CommonTranslationTable["@askforretrial"],
	["~guicai"] = "Chọn 1 lá bài xong bấm \"Xác Định\"",

	["#xiahoudun"] = "Độc Nhãn La Sát",
	["xiahoudun"] = "Hạ Hầu Đôn",
	["ganglie"] = "Cương Liệt",
	[":ganglie"] = "Sau khi nhận 1 sát thương, có thể tiến hành phán xét. Nếu kết quả phán xét là:\nĐỏ: gây 1 sát thương cho nguồn sát thương;\nĐen: bỏ 1 lá bài của nguồn sát thương",

	["#zhangliao"] = "Tiền Tướng Quân",
	["zhangliao"] = "Trương Liêu",
	["tuxi"] = "Tập Kích",
	[":tuxi"] = "Giai đoạn rút bài, có thể rút -X lá và chọn X người chơi khác có bài trên tay, thu lấy 1 lá bài trên tay của mỗi người.",
	["@tuxi-card"] = "Bạn có thể kích hoạt \"Tập Kích\"",
	["~tuxi"] = "Chọn những người khác và bấm \"Xác Định\"",

	["#xuchu"] = "Hổ Si",
	["xuchu"] = "Hứa Chử",
	["luoyi"] = "Lỏa Y",
	[":luoyi"] = "Cuối giai đoạn rút bài, bạn có thể bỏ đi 1 lá; trong lượt này, khi bạn gây sát thương cho mục tiêu của [Sát] hoặc [Quyết Đấu], sát thương này +1.",
	["#LuoyiBuff"] = "%from đã kích hoạt \"<font color=\"yellow\"><b>Loả Y</b></font>\", sát thương từ %arg tăng thành %arg2",
	["@luoyi"] = "Lỏa Y: Bạn có thể bỏ đi 1 lá.",

	["#guojia"] = "Tảo Chung Tiên Tri",
	["guojia"] = "Quách Gia",
	["tiandu"] = "Thiên Khiển",
	[":tiandu"] = "Sau khi Phán xét của bản thân có hiệu lực, có thể thu lấy lá Phán xét.",
	["yiji"] = "Di Kế",
	[":yiji"] = "Sau khi nhận sát thương, có thể xem 2 lá bài trên cùng chồng bài và giao cho 1 người.",

	["#zhenji"] = "Bạc Hạnh Đích Mỹ Nhân",
	["zhenji"] = "Chân Cơ",
	["luoshen"] = "Lạc Thần",
	[":luoshen"] = "Giai đoạn chuẩn bị, có thể tiến hành Phán Xét, nếu kết quả có màu Đen, có thể lặp lại quá trình này. Sau đó bạn thu lấy tất cả phán xét màu Đen.",
	["#luoshen-move"] = "Lạc Thần (Chuyển lá này vào vùng Phán xét)",
	["qingguo"] = "Khuynh Quốc",
	[":qingguo"] = "Có thể sử dụng hoặc đánh ra bài màu Đen trên tay như [Thiểm].",

	["#xiahouyuan"] = "Tật Hành Liệp Báo",
	["xiahouyuan"] = "Hạ Hầu Uyên",
	["shensu"] = "Thần Tốc",
	[":shensu"] = "Có thể bỏ qua giai đoạn phán xét và rút bài, xem như sử dụng [Sát] không giới hạn tầm; Có thể bỏ qua giai đoạn hành động và bỏ đi 1 trang bị, xem như sử dụng [Sát] không giới hạn tầm.",
	["@shensu1"] = "Bạn có thể bỏ qua giai đoạn phán xét và rút bài để kích hoạt \"Thần Tốc\"",
	["@shensu2"] = "Bạn có thể bỏ qua giai đoạn hành động và bỏ 1 trang bị để kích hoạt \"Thần Tốc\"",
	["~shensu1"] = "Chọn mục tiêu của sát [Sát] rồi bấm \"Xác định\"",
	["~shensu2"] = "Chọn bỏ 1 trang bị, chọn mục tiêu của [Sát] rồi bấm \"Xác định\"",

	["#zhanghe"] = "Liệu Địch Cơ Tiên",
	["zhanghe"] = "Trương Cáp",
	["qiaobian"] = "Xảo Biến",
	[":qiaobian"] = "Có thể bỏ 1 lá bài trên tay để bỏ qua 1 giai đoạn trong lượt (trừ chuẩn bị và kết thúc). Sau đó,\nNếu bỏ qua giai đoạn rút bài, có thể chọn từ 1 đến 2 người chơi đang có bài trên tay để thu lấy 1 lá trên tay mỗi người.\nNếu bỏ qua lượt hành động, có thể chuyển 1 lá bài từ vùng trang bị hoặc vùng phán xét của 1 người sang người khác.",
	["@qiaobian-2"] = "Bạn có thể lấy 1 lá bài từ 1 đến 2 người chơi khác nhau.",
	["@qiaobian-3"] = "Bạn có thể chuyển 1 lá bài trên bàn đến khu tương ứng của một người chơi khác",
	["#qiaobian"] = "Bạn có thể bỏ 1 lá bài trên tay để bỏ qua <font color='yellow'><b> %arg </b></font>",
	["~qiaobian2"] = "Chọn 1 đến 2 người chơi rồi bấm \"Xác định\"",
	["~qiaobian3"] = "Chọn một người chơi rồi bấm \"Xác định\"",
	["@qiaobian-to"] = "Hãy chọn người chơi để chuyển [%arg] đến.",

	["#xuhuang"] = "Châu Á Phu Chi Phong",
	["xuhuang"] = "Từ Hoảng",
	["duanliang"] = "Đoạn Lương",
	[":duanliang"] = "Có thể sử dụng lá bài Đen không phải Công cụ như [Binh Lương Thốn Đoạn] không giới hạn khoảng cách. Nếu khoảng cách giữa bạn và mục tiêu lớn hơn 2, vô hiệu kỹ năng này trong giai đoạn này.",

	["#caoren"] = "Đại Tướng Quân",
	["caoren"] = "Tào Nhân",
	["jushou"] = "Chiếm Thủ",
	[":jushou"] = "Giai đoạn kết thúc, có thể bốc X lá (X là số thế lực còn sống); sau đó bỏ 1 lá trên tay, nếu lá được bỏ đi là trang bị, xem như sử dụng. Nếu bạn rút nhiều hơn 2 lá bài, đặt chồng tướng.",

	["@jushou"] = "Chiếm Thủ: Sử dụng 1 trang bị hoặc bỏ 1 lá không phải trang bị",
	
	["#dianwei"] = "Cổ Chi Ác Lai",
	["dianwei"] = "Điển Vi",
	["qiangxi"] = "Cường Kích",
	[":qiangxi"] = "Một lần trong giai đoạn hành động, có thể mất 1 máu hoặc bỏ 1 Vũ khí để gây 1 sát thương cho 1 người trong tầm đánh.",

	["#xunyu"] = "Vương Tá Chi Tài",
	["xunyu"] = "Tuân Úc",
	["quhu"] = "Vờn Hổ",
	[":quhu"] = "Một lần trong giai đoạn hành động, có thể tiến hành đấu điểm với 1 người có số máu lớn hơn bạn. Nếu thắng, họ gây 1 sát thương cho 1 người trong tầm đánh của họ do bạn chỉ định. Nếu không thắng, họ gây 1 sát thương cho bạn.",
	["@quhu-damage"] = "Hãy chọn 1 người trong tầm đánh của %src",
	["jieming"] = "Tiết Mệnh",
	[":jieming"] = "Sau khi nhận sát thương, có thể cho 1 người bổ xung bài đến giới hạn máu (Tối đa 5)",
	["jieming-invoke"] = "Bạn có thể kích hoạt \"Tiết Mệnh\". <br/>Chọn một người chơi và bấm \"Xác định\"<br/>",
	["#QuhuNoWolf"] = "%from đã kích hoạt \"<font color=\"yellow\"><b>Vờn Hổ</b></font>\" đấu điểm thắng, gây sát thương cho 1 người khác trong tầm đánh của %to",

	["#caopi"] = "Kế Thừa Bá Nghiệp",
	["caopi"] = "Tào Phi",
	["xingshang"] = "Hành Thương",
	[":xingshang"] = "Khi có người trận vong, bạn có thể thu lấy toàn bộ bài của người đó.",
	["fangzhu"] = "Lưu Đày",
	[":fangzhu"] = "Sau khi nhận sát thương, có thể lệnh 1 người khác lựa chọn:\n1. Đặt chồng tướng, sau đó rút X lá (X lá số máu đã mất của bạn).\n2. Bỏ 1 lá, sau đó mất 1 máu.",
	["fangzhu-invoke"] = "Có thể kích hoạt \"Lưu Đày\". <br/>Chọn một người rồi bấm \"Xác định\"",
	["@fangzhu-discard"] = "Lưu Đày: Bỏ 1 lá và mất 1 máu, hoặc bấm \"Hủy bỏ\" để đặt chồng tướng và rút %arg lá.",

	["#yuejin"] = "Kiên Cường Đột Phá",
	["yuejin"] = "Nhạc Tiến",
	["xiaoguo"] = "Dũng Mãnh",
	[":xiaoguo"] = "Giai đoạn kết thúc của một người khác, có thể bỏ 1 lá cơ bản để lệnh người đó chọn bỏ 1 trang bị hoặc nhận 1 sát thươg từ bạn.",
	["@xiaoguo"] = "Có thể bỏ 1 lá cơ bản để kích hoạt \"Dũng Mãnh\"",
	["@xiaoguo-discard"] = "Dũng Mãnh: Bỏ 1 trang bị, hoặc nhận 1 sát thương.",
	
	
	["#jianggan"] = "Phong Đích Huyền Tín",
	["jianggan"] = "Tưởng Cán",
	["weicheng"] = "Ngụy Thành",
	[":weicheng"] = "Khi bài trên tay bạn chuyển đến tay người chơi khác, nếu bài trên tay bạn nhỏ hơn số HP hiện tại, có thể rút 1 thẻ.",
	["daoshu"] = "Đạo Thư",
	[":daoshu"] = "Một lần trong giai đoạn hành động, bạn có thể chọn 1 chất và 1 người chơi có bài trên tay, thu lấy 1 lá bài trên tay người đó và so sánh với chất bài đã đoán; Nếu trùng: gây 1 sát thương cho họ và tăng thêm 1 lần sử dụng kỹ năng trong giai đoạn này; Không trùng: giao 1 lá bài trên tay có chất khác cho họ, nếu không thể, mở toàn bộ bài trên tay.",
	["@daoshu-give"] = "Đạo Thư: chọn 1 lá bài không phải chất %arg và giao cho %dest",
	
	

	["illustrator:simayi"] = "Mộc Mĩ Nhân",
	["illustrator:xiahoudun"] = "DH",
	["illustrator:zhangliao"] = "张帅",
	["illustrator:guojia"] = "绘聚艺堂",
	["illustrator:zhenji"] = "DH",
	["illustrator:zhanghe"] = "张帅",
	["illustrator:xuhuang"] = "波子",
	["illustrator:caoren"] = "Ccat",
	["illustrator:dianwei"] = "小冷",
	["illustrator:xunyu"] = "LiuHeng",
	["illustrator:caopi"] = "DH",
	["illustrator:yuejin"] = "巴萨小马",
	["illustrator:jianggan"] = "biou09",


	

}

