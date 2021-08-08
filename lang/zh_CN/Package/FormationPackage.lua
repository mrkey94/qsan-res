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

-- translation for Hegemony Formation Package

return {
	["formation"] = "Trận",
	["formation_equip"] = "Trận",

	["#dengai"] = "Kiểu Nhiên Đích Tráng Sĩ",
	["dengai"] = "Đặng Ngải",
	["illustrator:dengai"] = "Amo",
	["tuntian"] = "Truân Điền",
	[":tuntian"] = "Sau khi bạn mất đi bài ngoài lượt, có thể tiến hành phán xét. Nếu kết quả phán xét không phải là chất Cơ, bạn có thể đặt phán xét lên tướng này, gọi là [Điền]. Với mỗi [Điền], khoảng cách từ bạn tới người khác -1.",
	["#tuntian-gotofield"] = "Truân Điền (Đặt lên tướng)",
	["#tuntian"] = "Truân Điền" ,
	["@tuntian-gotofield"] = "Truân Điền: Có thể đặt lên tướng làm [Điền]" ,
	["field"] = "Điền",
	["#tuntian-dist"] = "Truân Điền" ,
	["jixi"] = "Cấp Tập",
	[":jixi"] = "Chủ tướng kỹ, giảm 0.5 máu gốc. Bạn có thể sử dụng [Điền] như [Thuận Thủ Khiên Dương].",
	["ziliang"] = "Tư Lương",
	[":ziliang"] = "Phó tướng kỹ: Sau khi 1 người cùng thế lực nhận sát thương, bạn có thể giao cho họ 1 [Điền].",
	["@ziliang-give"] = "Có thể kích \"Tư Lương\" để giao [Điền] cho người bị thương.",
	["~ziliang"] = "Chọn lá [Điền] rồi bấm \"Xác Định\".",

	["#caohong"] = "Ngụy Chi Phúc Tướng",
	["caohong"] = "Tào Hồng",
	["illustrator:caohong"] = "YellowKiss",
	["huyuan"] = "Hộ Viện",
	[":huyuan"] = "Giai đoạn kết thúc, có thể đem trang bị đặt vào vùng trang bị của 1 người, sau đó có thể bỏ 1 lá bài của 1 người chơi có khoảng cách 1 từ họ.",
	["@huyuan-equip"] = "Kích hoạt \"Hộ Viện\" để đặt trang bị",
	["@huyuan-discard"] = "Hãy chọn 1 mục tiêu trong tầm 1 của %src",
	["~huyuan"] = "Chọn 1 lá trang bị, chọn một người chơi rồi bấm \"Xác định\"",
	["heyi"] = "Hạc Dực",
	[":heyi"] = "Trận pháp kỹ: Người chơi khác cùng đội hình với bạn nhận kỹ năng \"Phi Ảnh\"",
	["HeyiSummon"] = "Hạc Dực",
	["#heyi_feiying"] = "Phi Ảnh",
	["feiying"] = "Phi Ảnh",
	[":feiying"] = "Tỏa định kỹ: Khoảng cách từ người chơi khác đến bạn +1.",

	["#jiangwei"] = "Long Đích Y Bát",
	["jiangwei"] = "Khương Duy",
	["illustrator:jiangwei"] = "Mộc Mỹ Nhân",
	["tiaoxin"] = "Khiêu Hấn",
	[":tiaoxin"] = "Một lần trong giai đoạn hành động, có thể lệnh một người chơi có tầm đánh tới bạn sử dụng [Sát] lên bạn, nếu không bạn bỏ 1 lá của người đó.",
	["@tiaoxin-slash"] = "%src đã kích hoạt \"Khiêu Hấn\", hãy sử dụng [Sát] lên %src",
	["yizhi"] = "Di Chí",
	[":yizhi"] = "Phó tướng kỹ - Giảm 0.5 máu gốc: Nếu Chủ tướng của bạn có kỹ năng \"Quan Tinh\" thì số lá bài được xem luôn là 5; nếu không, bạn nhận kỹ năng \"Quan Tinh\".",
	["tianfu"] = "Thiên Phúc",
	[":tianfu"] = "Chủ tướng kỹ, Trận pháp kỹ: Trong lượt của người cùng đội hình với bạn, bạn nhận kỹ năng \"Khán Phá\".",
	["TianfuSummon"] = "Thiên Phúc",
	["guanxing_jiangwei"] = "Quan Tinh",

	["#jiangwanfeiyi"] = "Xã Tắc Cổ Quăng",
	["jiangwanfeiyi"] = "Tưởng Uyển & Phí Y",
	["&jiangwanfeiyi"] = "Tưởng Uyển Phí Y",
	["illustrator:jiangwanfeiyi"] = "cometrue",
	["shengxi"] = "Sinh Tức",
	[":shengxi"] = "Đầu giai đoạn bỏ bài, nếu trong lượt này bạn không gây sát thương, có thể rút 2 lá bài.",
	["shoucheng"] = "Thủ Thành",
	[":shoucheng"] = "Khi người chơi cùng thế lực mất đi lá bài cuối cùng trên tay ngoài lượt, có thể cho họ rút 1 lá bài.",

	["#jiangqin"] = "Kỳ Hề Chi Khí",
	["jiangqin"] = "Tưởng Khâm",
	["illustrator:jiangqin"] = "Thiên Không Chi Thành",
	["shangyi"] = "Thượng Nghĩa",
	[":shangyi"] = "Một lần trong giai đoạn hành động, có thể lệnh cho một người chơi khác xem bài trên tay của bạn, sau đó bạn lựa chọn:\n1. Bạn xem bài trên tay họ và bỏ 1 lá màu đen trong đó.\n2. Bạn xem tất cả tướng ẩn của họ.",
	["@shangyi-choose"] = "Lựa chọn xem tướng hoặc bài trên tay của %dest",
	["shangyi:hidden_general"] = "Xem Tướng ẩn",
	["shangyi:handcards"] = "Xem bài trên tay",
	["niaoxiang"] = "Điểu Tường",
	[":niaoxiang"] = "Trận pháp kỹ: Trong trạng thái vây công, sau khi người vây công sử dụng [Sát] chọn mục tiêu là người bị vây công, lệnh cho mục tiêu phải sử dụng 2 [Thiểm] nếu muốn triệt tiêu [Sát] đó.",
	["NiaoxiangSummon"] = "Điểu Tường",

	["#xusheng"] = "Giang Đông Đích Thiết Bích",
	["xusheng"] = "Từ Thịnh",
	["illustrator:xusheng"] = "Thiên Tín",
	["yicheng"] = "Nghi Thành",
	[":yicheng"] = "Sau khi một người chơi cùng thế lực trở thành mục tiêu của thể [Sát], họ có thể rút 1 thẻ bài. Nếu làm như thế, họ bỏ đi một thẻ bài.",

	["#yuji"] = "Hồn Nhiễu Tả Hữu",
	["yuji"] = "Vu Cát",
	["illustrator:yuji"] = "G.G.G.",
	["qianhuan"] = "Thiên Huyễn",
	[":qianhuan"] = "Sau khi 1 người cùng thế lực nhận sát thương, có thể đem 1 lá bài của bạn đặt lên tướng này, gọi là [Huyễn] (Không được đặt lá trùng chất với lá [Huyễn] đã có). Khi 1 người chơi cùng thế lực trở thành mục tiêu duy nhất của lá cơ bản hoặc công cụ, bạn có thể đưa 1 lá [Huyễn] vào chồng bài bỏ, hủy bỏ mục tiêu này.",
	["@qianhuan-put"] = "Có thể kích hoạt \"Thiên Huyễn\", đặt 1 lá khác chất với các lá [Huyễn] khác." ,
	["sorcery"] = "Huyễn",
	["@qianhuan-cancel"] = "Có thể kích hoạt \"Thiên Huyễn\", hủy bỏ mục tiêu %dest của lá [%arg]",

	["#hetaihou"] = "Lộng Quyền Chi Xà Hạt",
	["hetaihou"] = "Hà Thái Hậu",
	["illustrator:hetaihou"] = "KayaK, Mộc Mỹ Nhân",
	["zhendu"] = "Độc Tửu",
	[":zhendu"] = "Đầu giai đoạn hành động của người chơi khác, có thể bỏ 1 lá bài trên tay, xem như họ sử dụng 1 [Tửu], sau đó bạn gây cho họ 1 sát thương.",
	["@zhendu-discard"] = "Có thể kích hoạt \"Độc Tửu\", bỏ 1 lá trên tay.",
	["qiluan"] = "Thích Loạn",
	[":qiluan"] = "Cuối lượt của 1 người, nếu trong lượt này bạn có giết người, bạn có thể rút 3 lá.",

	["#lord_liubei"] = "龙横蜀汉",
	["lord_liubei"] = "刘备-君",
	["&lord_liubei"] = "刘备" ,
	["illustrator:lord_liubei"] = "LiuHeng",
	["zhangwu"] = "章武",
	["#zhangwu-draw"] = "章武（摸牌）",
	[":zhangwu"] = "锁定技，①当【飞龙夺凤】移至弃牌堆或其他角色的装备区后，你获得此【飞龙夺凤】。②当你并非因使用【飞龙夺凤】而失去【飞龙夺凤】前，你展示此【飞龙夺凤】，将此【飞龙夺凤】的此次移动的目标区域改为牌堆底→此【飞龙夺凤】移动至牌堆底后，你摸两张牌。",
	["shouyue"] = "授钺",
	[":shouyue"] = "君主技，锁定技，你拥有\"五虎将大旗\"。\n\n#\"五虎将大旗\"\n" ..
					"存活的蜀势力角色拥有的〖武圣〗、〖咆哮〗、〖龙胆〗、〖铁骑〗和〖烈弓〗分别改为：\n" ..
					"武圣——你可将一张牌当【杀】使用或打出。\n" ..
					"咆哮——增加“③当【杀】指定目标后，若使用者为你，你令此目标对应的角色的防具技能无效。”\n" ..  --remove the detail of Qinggang-like effect
					"龙胆——增加“③当因〖龙胆〗转化的普【杀】或【闪】被使用/打出时，若使用/打出者为你，你摸一张牌。”\n" ..
					"烈弓——增加“②你的攻击范围+1。”\n" ..
					"铁骑——当【杀】指定目标后，若使用者为你，你可判定▶你令此目标对应的角色的所有处于明置状态的武将牌的未带有“锁定技”标签的武将技能于当前回合内无效。其选择：1.弃置与结果花色相同的一张牌；2.令此【杀】于对此目标进行的使用结算中不是其使用【闪】的合法目标。",
	["jizhao"] = "激诏",
	[":jizhao"] = "限定技，当你处于濒死状态时，你可将你的手牌补至X张（X为你的体力上限），将体力回复至2点，失去〖授钺〗并获得〖仁德〗。",
	["@jizhao"] = "激诏",

	["DragonPhoenix"] = "Phi Long Đoạt Phượng",
	[":DragonPhoenix"] = "Bài Trang bị - Vũ khí\n\nTầm đánh: 2\nKỹ năng:\n" ..
					"1. Sau khi sử dụng [Sát] chỉ định mục tiêu, có thể lệnh mục tiêu bỏ đi 1 lá của họ.\n" ..
					"2. Khi mục tiêu của [Sát] từ bạn vào trạng thái hấp hối, có thể thu lấy 1 lá trên tay họ.\n" ,
	["@dragonphoenix-discard"] = "Đã kích hoạt [Phi Long Đoạt Phượng], hãy bỏ 1 lá.",

	["DragonPhoenix:revive"] = "你可以点击下方确定按钮，从未使用的武将牌中选择与你势力相同的一张武将牌重新加入游戏。",
}