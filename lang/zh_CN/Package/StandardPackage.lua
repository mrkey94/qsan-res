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

-- translation for StandardPackage

local t = {
	["standard_cards"] = "Tiêu chuẩn",


	["slash"] = "Sát",
	[":slash"] = "Bài cơ bản\n\nSử dụng: Một lần trong giai đoạn hành động.\nMục tiêu: Người chơi trong tầm đánh\nHiệu quả: Gây 1 sát thương cho mục tiêu.",
	["slash-jink"] = "%src đã sử dụng [Sát], hãy sử dụng 1 [Thiểm]",
	["@multi-jink-start"] = "%src đã sử dụng lá [sát], hãy sử dụng %arg lá [Thiểm]",
	["@multi-jink"] = "%src đã sử dụng [Sát], hãy sử dụng thêm %arg lá [Thiểm]",
	["@slash_extra_targets"] = "Hãy chọn thêm mục tiêu khác cho lá [Sát]",

	["fire_slash"] = "Sát Hỏa",
	[":fire_slash"] = "Bài cơ bản\n\nSử dụng: Một lần trong giai đoạn hành động.\nMục tiêu: Người chơi trong tầm đánh\nHiệu quả: Gây 1 sát thương Hỏa cho mục tiêu.",

	["thunder_slash"] = "Sát Lôi",
	[":thunder_slash"] = "Bài cơ bản\n\nSử dụng: Một lần trong giai đoạn hành động.\nMục tiêu: Người chơi trong tầm đánh\nHiệu quả: Gây 1 sát thương Lôi cho mục tiêu.",

	["jink"] = "Thiểm",
	[":jink"] = "Bài cơ bản\n\nSử dụng:Khi lá [Sát] có hiệu quả lên bạn\nMục tiêu:Lá[Sát].\nHiệu quả:Vô hiệu hóa lá[Sát].",
	["#NoJink"] = "%from Không thể sử dụng[<font color=\"yellow\"><b>Thiểm</b></font>]để vô hiệu hóa[<font color=\"yellow\"><b>Sát</b></font>]",

	["peach"] = "Đào",
	[":peach"] = "Bài cơ bản\n\nCách thức I: \nSử dụng: Trong giai đoạn hành động\nMục tiêu: Bản thân đang mất máu.\nTác dụng: Hồi phục 1 máu."
	.."\n\nCách thức II:\nKhi một người chơi đang trong trạng thái hấp hối. \nMục tiêu: Người chơi đang trong trạng thái hấp hối.\nTác dụng: Hồi phục 1 máu cho mục tiêu.",

	["analeptic"] = "Tửu",
	[":analeptic"] = "Bài cơ bản\n\nCách thức I: \nSử dụng: Một lần trong giai đoạn hành động.\nMục tiêu: Bản thân.\nHiệu quả: Khi dùng 1 lá [Sát]tiếp theo sẽ tăng 1 sát thương."
	.."\n\nCách thức II: \nSử dụng: Bản thân đang trong trạng thái hấp hối.\nMục tiêu: Bản thân.\nHiệu quả: Bản thân hồi phục 1 máu",
	["#UnsetDrankEndOfTurn"] = "%from kết thúc giai đoạn hành động, lá [<font color=\"yellow\"><b>Tửu</b></font>] mất tác dụng",


	["Crossbow"] = "Gia Cát Liên Nỏ",
	[":Crossbow"] = "Bài trang bị - Vũ khí\n\nTầm đánh:1\nKỹ năng:Tỏa định kỹ，Không giới hạn số lá[Sát]được sử dụng trong lượt.",

	["DoubleSword"] = "Thư Hùng Song Cổ Kiếm",
	[":DoubleSword"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 2\nKỹ năng: Sau khi xác định mục tiêu của lá[Sát], nếu mục tiêu khác giới, cho mục tiêu chọn bỏ 1 lá bài trên tay hoặc để bạn rút 1 lá bài.",
	["double-sword-card"] = "%src phát động hiệu quả [Thư Hùng Song Cổ Kiếm], bạn cần phải bỏ 1 lá bài trên tay hoặc để %src rút 1 lá bài.",

	["SixSwords"] = "Ngô Lục Kiếm",
	[":SixSwords"] = "Bài trang bị - Vũ khí\n\nTầm đánh:2<br/>Kỹ năng: Tỏa định kỹ, người chơi khác cùng phe +1 tầm đánh.",

	["Triblade"] = "Tam Tiêm Lưỡng Nhận Đao",
	[":Triblade"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 3<br/>Kỹ năng: Sau khi gây sát thương cho mục tiêu của lá [Sát], có thể bỏ 1 lá bài trên tay để gây 1 sát thương cho 1 người chơi khác trong tầm 1 của mục tiêu.",
	["tribladeskill"] = "Tam Tiêm Lưỡng Nhận Đao",
	["@Triblade"] = "Phát động hiệu quả [Tam Tiêm Lưỡng Nhận Đao]",
	["~Triblade"] = "Chọn 1 lá bài trên tay, chọn mục tiêu kế tiếp rồi kích Xác định",

	["QinggangSword"] = "Thanh Công Kiếm",
	[":QinggangSword"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 2\nKỹ năng: Tỏa định kỹ，Sau khi xác định mục tiêu của lá[Sát], vô hiệu hoá phòng cụ của mục tiêu.",

	["Spear"] = "Trượng Bát Xà Mâu",
	[":Spear"] = "Bài trang bị - Vũ khí\n\nTầm đánh:3\nKỹ năng: Có thể sử dụng hoặc đánh ra 2 lá trên tay như [Sát].",

	["Axe"] = "Quán Thạch Phủ",
	[":Axe"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 3\nKỹ năng: Sau khi mục tiêu bị tấn công sử dụng lá[Thiểm] có hiệu lực, có thể bỏ 2 lá bài để vô hiệu hoá thẻ [Thiểm] đó.",
	["@Axe"] = "Bạn có thể bỏ ra 2 thẻ bài để [Sát] vẫn có hiệu lực.",
	["~Axe"] = "Chọn 2 thẻ bài muốn bỏ rồi kích \"Xác định\"",

	["KylinBow"] = "Kỳ Lân Cung",
	[":KylinBow"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 5\nKỹ năng: Khi gây sát thương cho mục tiêu của [Sát], có thể loại bỏ một Chiến mã trong vùng trang bị của mục tiêu.",
	["KylinBow:dhorse"] = "+1 Chiến mã",
	["KylinBow:ohorse"] = "-1 Chiến mã",
	["KylinBow:shorse"] = "Lục Long Tham Giá",

	["EightDiagram"] = "Bát Quái Trận",
	[":EightDiagram"] = "Bài trang bị - Phòng cụ\n\nKỹ năng: Khi cần sử dụng hoặc đánh ra [Thiểm], có thể tiến hành Phán xét, nếu phán xét có màu Đỏ, xem như sử dụng hoặc đánh ra [Thiểm].",

	["RenwangShield"] = "Nhân Vương Thuẫn",
	[":RenwangShield"] = "Bài trang bị - Phòng cụ\n\nKỹ năng: Tỏa định kỹ, [Sát] Đen không có hiệu quả với bạn.",

	["IceSword"] = "Hàn Băng Kiếm",
	[":IceSword"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 2\nKỹ năng: Khi gây sát thương cho mục tiêu của [Sát], bạn có thể chặn sát thương này lại và lần lượt bỏ 2 lá của mục tiêu.",

	["Fan"] = "Chu Tước Vũ Phiến",
	[":Fan"] = "Bài trang bị - Vũ khí\n\nTầm đánh: 4\nKỹ năng: Có thể sử dụng [Sát] thường như [Sát Hỏa].",
	["fan"] = "Chu Tước Vũ Phiến",

	["SilverLion"] = "Bạch Ngân Sư Tử",
	[":SilverLion"] = "Bài trang bị - Phòng cụ\n\nKỹ năng:\n" ..
	"1. Tỏa định kỹ, khi nhận sát thương, nếu sát thương này lớn hơn 1, sát thương này trở thành 1.\n" ..
"2. Tỏa định kỹ, sau khi bạn mất đi [Bạch Ngân Sư Tử] từ vùng trang bị của bạn, hồi 1 máu.\n" ,
	["#SilverLion"] = "[<font color=\"yellow\"><b>Bạch Ngân Sư Tử</b></font>] của %from giảm %arg sát thương còn <font color=\"yellow\"><b>1</b></font> điểm.",

	["Vine"] = "Đằng Giáp",
	[":Vine"] ="Bài trang bị - Phòng cụ\n\nKỹ năng:\n" ..
	"1. Tỏa định kỹ, [Nam Man Nhập Xâm]、[Vạn Tiễn Tề Phát] và [Sát] phổ thông không có hiệu quả với bạn.\n "..
"2. Tỏa định kỹ, Khi nhận sát thương có thuộc tính Hỏa, +1 sát thương này.\n" ,
	["#VineDamage"] = "Phát động hiệu quả [<font color=\"yellow\"><b>Đằng Giáp</b></font>] của %from, sát thương Hoả hệ tăng từ %arg lên %arg2 điểm.",

	["Horse"] = "Chiến mã",
	[":+1 horse"] = "Bài trang bị - Chiến mã\n\nKỹ năng: Tỏa định kỹ, khoảng cách từ người chơi khác đến bản thân +1.",
	["JueYing"] = "Tuyệt Ảnh",
	["DiLu"] = "Đích Lô",
	["ZhuaHuangFeiDian"] = "Trảo Hoàng Phi Điện",
	[":-1 horse"] = "Bài trang bị - Chiến mã\n\nKỹ năng: Tỏa định kỹ, khoảng cách từ bản thân đến người chơi khác -1.",
	["ChiTu"] = "Xích Thố",
	["DaYuan"] = "Đại Uyển",
	["ZiXing"] = "Tử Tuynh",
	["JingFan"] = "Kinh Phàm",

	["amazing_grace"] = "Ngũ Cốc Phong Đăng",
	[":amazing_grace"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tất cả người chơi.\nThao tác: Lật ra từ chồng bài số lá bài bằng với số mục tiêu.\nHiệu quả: Mỗi người chơi lần lượt nhận 1 lá từ số bài này.",

	["god_salvation"] = "Đào Viên Kết Nghĩa",
	[":god_salvation"] = "Bài Công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục Tiêu:Tất cả người chơi.\nTác dụng: Tất cả người chơi hồi 1 máu\n◆[Đào Viên Kết Nghĩa]không hiệu lực với mục tiêu không bị thương.",

	["savage_assault"] = "Nam Man Nhập Xâm",
	[":savage_assault"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tất cả người chơi khác.\nHiệu quả: Tất cả người chơi khác đánh ra lá [Sát], nếu không nhận 1 điểm sát thương.",
	["savage-assault-slash"] = "%src đã sử dụng [Nam Man Nhập Xâm], hãy đánh ra [Sát]",

	["archery_attack"] = "Vạn Tiễn Tề Phát",
	[":archery_attack"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tất cả người chơi khác.\nHiệu quả: Tất cả người chơi khác đánh ra lá [Thiểm], nếu không nhận 1 điểm sát thương.",
	["archery-attack-jink"] = "%src đã sử dụng [Vạn Tiễn Tề Phát], hãy đánh ra [Thiểm]",

	["collateral"] = "Tá Đao Sát Nhân",
	[":collateral"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi có vũ khí trong vùng trang bị." ..
"\nThao tác: Chọn một người trong tầm đánh của mục tiêu, buộc mục tiêu sử dụng[Sát] lên người chơi được chọn" ..
"\nHiệu quả: Nếu mục tiêu không dùng [Sát] lên người chơi được chỉ định, bạn lấy vũ khí của mục tiêu.",
	["collateral-slash"] = "%dest đã sử dụng [Tá Đao Sát Nhân], yêu cầu dùng [Sát] lên %src",
	["#CollateralSlash"] = "%from đã chọn sử dụng [<font color=\"yellow\"><b>Sát</b></font>] lên %to",

	["duel"] = "Quyết Đấu",
	[":duel"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác.\nHiệu quả: Bắt đầu từ mục tiêu và bạn lần lượt đánh ra lá [Sát] đến khi có người chơi không đánh ra lá[Sát], người đó nhận 1 sát thương từ người còn lại.",
	["duel-slash"] = "%src sử dụng [Quyết Đấu] với bạn, hãy đánh ra 1 [Sát]",

	["ex_nihilo"] = "Vô Trung Sinh Hữu",
	[":ex_nihilo"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Bản thân.\nHiệu quả: Rút 2 lá bài.",

	["snatch"] = "Thuận Thủ Khiên Dương",
	[":snatch"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác trong tầm 1 của bạn và có bài trong vùng chơi.\nHiệu quả: Lấy 1 lá bài trong vùng chơi của mục tiêu.",

	["dismantlement"] = "Qua Hạ Sách Kiều",
	[":dismantlement"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác có bài trong vùng chơi.\nHiệu quả: Bỏ 1 lá bài trong vùng chơi của mục tiêu",

	["nullification"] = "Vô Giải Khả Kích",
	[":nullification"] = "Bài công cụ\n\nSử dụng: Khi có lá công cụ phát động hiệu lực lên một người chơi.\nMục tiêu: Lá công cụ.\nHiệu quả: Vô hiệu lá công cụ với người chơi đó.",

	["heg_nullification"] = "Vô Giải Khả Kích - Quốc",
	[":heg_nullification"] = "Bài công cụ\n\nSử dụng: Khi có lá công cụ phát động hiệu lực lên một người chơi.\nMục tiêu: Lá công cụ.\nHiệu quả: Vô hiệu lá công cụ với người chơi đó hoặc toàn bộ phe của người chơi đó.",
	["@heg_nullification-choose"] = "Vô Giải Khả Kích - Quốc, Vui lòng chọn hiệu ứng",
	["heg_nullification:single"] = "Chỉ mục tiêu",
	["heg_nullification:all"] = "Toàn bộ thế lực" ,

	["indulgence"] = "Lạc Bất Tư Thục",
	[":indulgence"] = "Bài công cụ thời gian\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác.\nHiệu quả: Tại giai đoạn phán xét của  mục tiêu, người chơi đó lật phát xét, nếu phán xét không phải chất Cơ, bỏ qua giai đoạn hành động. Sau đó bỏ lá này.",

	["lightning"] = "Thiểm Điện",
	[":lightning"] = "Bài công cụ thời gian\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Bản thân.\nHiệu quả: Tại giai đoạn phán xét của mục tiêu, lật phán xét, nếu phán xét từ 2~9 Bích sẽ nhận 3 điểm sát thương Lôi hệ (không nguồn) và bỏ lá này. Nếu không, lá [Thiểm Điện] chuyển sang mục tiêu tiếp theo.",

	["iron_chain"] = "Thiết Tác Liên Hoàn",
	[":iron_chain"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Tối đa 2 người chơi.\nHiệu quả: đưa mục tiêu vào hoặc thoát khỏi trang thái bị xích. Tất cả người chơi bị xích nhận sát thương tương ứng sau khi một người trong chuỗi xích nhận sát thương Hoả  hoặc Lôi, đồng thời thoát khỏi trạng thái bị xích. Có thể đưa lá này vào chồng bài bỏ để rút một lá khác.",

	["fire_attack"] = "Hoả Công",
	[":fire_attack"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi có bài trên tay.\nHiệu quả: Mục tiêu đưa ra một thẻ bài, bạn có thể bỏ 1 lá cùng chất trên tay để gây cho mục tiêu 1 sát thương Hoả.",
	["fire-attack-card"] = "Bạn có thể bỏ 1 lá trên tay cùng chất với thẻ %arg của %dest để %dest nhận 1 điểm sát thương Hoả hệ.",
	["@fire-attack"] = "%src đưa ra thẻ có chất %arg，hãy bỏ 1 lá cùng chất trên tay.",

	["supply_shortage"] = "Binh Lương Thốn Đoạn",
	[":supply_shortage"] = "Bài công cụ thời gian\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác trong tầm 1 của bạn.\nHiệu quả:Tại giai đoạn phán xét của mục tiêu, người chơi đó lật phán xét, nếu phán xét không phải là Chuồn sẽ bỏ qua lượt rút bài. Sau đó bỏ lá này.",

	["await_exhausted"] = "Dĩ Dật Đãi Lao",
	[":await_exhausted"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Toàn bộ người chơi cùng phe.\nHiệu quả: Mỗi người lần lượt rút 2 lá và bỏ 2 lá bài.",

	["known_both"] = "Tri Bỉ Tri Kỉ",
	[":known_both"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác.\nHiệu quả: Có thể chọn xem tất cả bài trên tay mục tiêu hoặc một tướng ẩn của mục tiêu. Có thể đưa lá này vào chồng bài bỏ để rút 1 lá bài mới.",
	["#KnownBothView"] = "%from đã xem được %arg của %to" ,
	["$KnownBothViewGeneral"] = "%from đã xem được %arg của %to, chính là %arg2" ,
	["@known_both-choose"] = "Tri Bỉ Tri Kỉ: Vui lòng chọn hành động lên %dest",
	["known_both:head_general"] = "Xem Chủ tướng",
	["known_both:deputy_general"] = "Xem Phó tướng",
	["known_both:handcards"] = "Xem bài trên tay",

	["befriend_attacking"] = "Viễn Giao Cận Công",
	[":befriend_attacking"] = "Bài công cụ\n\nSử dụng: Trong giai đoạn hành động.\nMục tiêu: Một người chơi khác phe đã lật tướng.\nHiệu quả: Mục tiêu rút 1 lá bài, sau đó bạn được rút 3 lá bài.",

}

local ohorses = { "ChiTu", "DaYuan", "ZiXing", "JingFan"}
local dhorses = { "ZhuaHuangFeiDian", "DiLu", "JueYing"}

for _, horse in ipairs(ohorses) do
	t[":" .. horse] = t[":-1 horse"]
end

for _, horse in ipairs(dhorses) do
	t[":" .. horse] = t[":+1 horse"]
end

return t