general_extension = sgs.Package("zzhead", sgs.Package_GeneralPack)


sgs.LoadTranslationTable{
	["zzhead"] = "Hàng Test",

}

 function file_exists(name) 
	local f = io.open(name, "r")
	if f ~= nil then io.close(f) return true else return false end
end

 math.random() --傲娇的lua随机数，要我用挫计来骗他
	local n = 0
	for i = 1, 998, 1 do
		if file_exists("image/backdrop/"..i..".jpg") then
			n = i
		else
			break
		end
	end
 

function getServerPlayer(room, name)
	for _, p in sgs.qlist(room:getAllPlayers(true)) do
		if p:objectName() == name then return p end
	end
	return nil
end

function getSkinId(general_name)
	local n = 0
	for i = 1, 998, 1 do
		if file_exists("hero-skin/"..general_name.."/"..i.."/full.png") then
			n = i
		else
			break
		end
	end
	return math.random(0,n)
end

UseDefaultSkin = sgs.CreateTriggerSkill{
	name = "UseDefaultSkin",
	global = true,
	events = {sgs.EventPhaseStart},
		priority = 10,
	on_record = function(self, event, room, player, data)  
		if player and player:isAlive() and player:getPhase() == sgs.Player_Play and player:getState() == "robot" then
			if player:hasShownGeneral1() and not string.find(player:getActualGeneral1Name(), "sujiang") and math.random(1,2) == 1 then	
			room:setPlayerProperty(player,"head_skin_id", sgs.QVariant(getSkinId(player:getActualGeneral1Name())))
			end
			if player:hasShownGeneral2() and not string.find(player:getActualGeneral2Name(), "sujiang") and math.random(1,2) == 1  then	
				room:setPlayerProperty(player, "deputy_skin_id", sgs.QVariant(getSkinId(player:getActualGeneral2Name())))
			end
		end
	end,
	on_cost = function(self, event, room, player, data)
		return false 
	end,
}

local skills = sgs.SkillList()
if not sgs.Sanguosha:getSkill("UseDefaultSkin") then skills:append(UseDefaultSkin) end
sgs.Sanguosha:addSkills(skills)



--创建角色
Zzhead0 = sgs.General(general_extension, "zzhead0", "god", 3 , true, true)
Zzhead1 = sgs.General(general_extension, "zzhead1", "god", 3 , true, true)
Zzhead2 = sgs.General(general_extension, "zzhead2", "god", 3 , true, true)
Zzhead3 = sgs.General(general_extension, "zzhead3", "god", 3 , true, true)
Zzhead4 = sgs.General(general_extension, "zzhead4", "god", 3 , true, true)
Zzhead5 = sgs.General(general_extension, "zzhead5", "god", 3 , true, true)
Zzhead6 = sgs.General(general_extension, "zzhead6", "god", 3 , true, true)
Zzhead7 = sgs.General(general_extension, "zzhead7", "god", 3 , true, true)
Zzhead8 = sgs.General(general_extension, "zzhead8", "god", 3 , true, true)
Zzhead9 = sgs.General(general_extension, "zzhead9", "god", 3 , true, true)
Zzhead10 = sgs.General(general_extension, "zzhead10", "god", 3 , true, true)
Zzhead11= sgs.General(general_extension, "zzhead11", "god", 3 , true, true)
Zzhead12= sgs.General(general_extension, "zzhead12", "god", 3 , true, true)
Zzhead13= sgs.General(general_extension, "zzhead13", "god", 3 , true, true)
Zzhead14= sgs.General(general_extension, "zzhead14", "god", 3 , true, true)
Zzhead15 = sgs.General(general_extension, "zzhead15", "god", 3 , true, true)
Zzhead16 = sgs.General(general_extension, "zzhead16", "god", 3 , true, true)
Zzhead17 = sgs.General(general_extension, "zzhead17", "god", 3 , true, true)
Zzhead18 = sgs.General(general_extension, "zzhead18", "god", 3 , true, true)
Zzhead19 = sgs.General(general_extension, "zzhead19", "god", 3 , true, true)
Zzhead20 = sgs.General(general_extension, "zzhead20", "god", 3 , true, true)
Zzhead21 = sgs.General(general_extension, "zzhead21", "god", 3 , true, true)
Zzhead22 = sgs.General(general_extension, "zzhead22", "god", 3 , true, true)
Zzhead23 = sgs.General(general_extension, "zzhead23", "god", 3 , false, true)
Zzhead24 = sgs.General(general_extension, "zzhead24", "god", 3 , true, true)
Zzhead25 = sgs.General(general_extension, "zzhead25", "god", 3 , true, true)
Zzhead26 = sgs.General(general_extension, "zzhead26", "god", 3 , true, true)
Zzhead27 = sgs.General(general_extension, "zzhead27", "god", 3 , true, true)
Zzhead101 = sgs.General(general_extension, "zzhead101", "god", 3 , true, true)
Zzhead102 = sgs.General(general_extension, "zzhead102", "god", 3 , true, true)
Zzhead103 = sgs.General(general_extension, "zzhead103", "god", 3 , true, true)
Zzhead104 = sgs.General(general_extension, "zzhead104", "god", 3 , true, true)
Zzhead105 = sgs.General(general_extension, "zzhead105", "god", 3 , true, true)
Zzhead106 = sgs.General(general_extension, "zzhead106", "god", 3 , true, true)
Zzhead107 = sgs.General(general_extension, "zzhead107", "god", 3 , true, true)
Zzhead108 = sgs.General(general_extension, "zzhead108", "god", 3 , true, true)
Zzhead109 = sgs.General(general_extension, "zzhead109", "god", 3 , true, true)
Zzhead110 = sgs.General(general_extension, "zzhead110", "god", 3 , true, true)
Zzhead111 = sgs.General(general_extension, "zzhead111", "god", 3 , true, true)
Zzhead112 = sgs.General(general_extension, "zzhead112", "god", 3 , true, true)
Zzhead113 = sgs.General(general_extension, "zzhead113", "god", 3 , true, true)
Zzhead114 = sgs.General(general_extension, "zzhead114", "god", 3 , true, true)
Zzhead115 = sgs.General(general_extension, "zzhead115", "god", 3 , true, true)
Zzhead116 = sgs.General(general_extension, "zzhead116", "god", 3 , true, true)
Zzhead117 = sgs.General(general_extension, "zzhead117", "god", 3 , true, true)
Zzhead118 = sgs.General(general_extension, "zzhead118", "god", 3 , true, true)
Zzhead119 = sgs.General(general_extension, "zzhead119", "god", 3 , true, true)
Zzhead120 = sgs.General(general_extension, "zzhead120", "god", 3 , true, true)
Zzhead121 = sgs.General(general_extension, "zzhead121", "god", 3 , true, true)
Zzhead122 = sgs.General(general_extension, "zzhead122", "god", 3 , true, true)
Zzhead123 = sgs.General(general_extension, "zzhead123", "god", 3 , true, true)
Zzhead124 = sgs.General(general_extension, "zzhead124", "god", 3 , true, true)
Zzhead125 = sgs.General(general_extension, "zzhead125", "god", 3 , true, true)
Zzhead126 = sgs.General(general_extension, "zzhead126", "god", 3 , true, true)
Zzhead127 = sgs.General(general_extension, "zzhead127", "god", 3 , true, true)
Zzhead128 = sgs.General(general_extension, "zzhead128", "god", 3 , true, true)
Zzhead129 = sgs.General(general_extension, "zzhead129", "god", 3 , true, true)
Zzhead130 = sgs.General(general_extension, "zzhead130", "god", 3 , true, true)
Zzhead131 = sgs.General(general_extension, "zzhead131", "god", 3 , true, true)
Zzhead1001 = sgs.General(general_extension, "zzhead1001", "god", 4 , true, true)
Zzhead1002 = sgs.General(general_extension, "zzhead1002", "god", 3 , false, true)
Zzhead1003 = sgs.General(general_extension, "zzhead1003", "god", 3 , true, true)
Zzhead1004 = sgs.General(general_extension, "zzhead1004", "god", 3 , true, true)
Zzhead1005 = sgs.General(general_extension, "zzhead1005", "god", 3 , true, true)
Zzhead1006 = sgs.General(general_extension, "zzhead1006", "god", 3 , true, true)

zzjishi = sgs.CreateTriggerSkill{
	name = "zzjishi" ,

}
Zzhead0:addSkill(zzjishi)

zzzhenai = sgs.CreateTriggerSkill{
	name = "zzzhenai" ,

}
Zzhead1:addSkill(zzzhenai)

zzshuaibi = sgs.CreateTriggerSkill{
	name = "zzshuaibi" ,

}
Zzhead2:addSkill(zzshuaibi)

zzjiaoshen = sgs.CreateTriggerSkill{
	name = "zzjiaoshen" ,

}
Zzhead3:addSkill(zzjiaoshen)

zztoutang = sgs.CreateTriggerSkill{
	name = "zztoutang" ,

}
Zzhead4:addSkill(zztoutang)

zzxinbian = sgs.CreateTriggerSkill{
	name = "zzxinbian" ,

}
Zzhead5:addSkill(zzxinbian)

zzluolan = sgs.CreateTriggerSkill{
	name = "zzluolan" ,

}
Zzhead6:addSkill(zzluolan)

zzgewang = sgs.CreateTriggerSkill{
	name = "zzgewang" ,

}
Zzhead7:addSkill(zzgewang)

zzjiuri = sgs.CreateTriggerSkill{
	name = "zzjiuri" ,

}
Zzhead8:addSkill(zzjiuri)

zzjiayu = sgs.CreateTriggerSkill{
	name = "zzjiayu" ,

}
Zzhead9:addSkill(zzjiayu)

zzjingshen = sgs.CreateTriggerSkill{
	name = "zzjingshen" ,

}
Zzhead10:addSkill(zzjingshen)

zzbeiguo = sgs.CreateTriggerSkill{
	name = "zzbeiguo" ,

}
Zzhead11:addSkill(zzbeiguo)

zzlvsuan = sgs.CreateTriggerSkill{
	name = "zzlvsuan" ,

}
Zzhead12:addSkill(zzlvsuan)

zzwangliang = sgs.CreateTriggerSkill{
	name = "zzwangliang" ,

}
Zzhead13:addSkill(zzwangliang)

zzlvguan = sgs.CreateTriggerSkill{
	name = "zzlvguan" ,

}
Zzhead14:addSkill(zzlvguan)

zzmeimeng = sgs.CreateTriggerSkill{
	name = "zzmeimeng" ,

}
Zzhead15:addSkill(zzmeimeng)

zzlingting = sgs.CreateTriggerSkill{
	name = "zzlingting" ,

}
Zzhead16:addSkill(zzlingting)

zzdaimeng = sgs.CreateTriggerSkill{
	name = "zzdaimeng" ,

}
Zzhead17:addSkill(zzdaimeng)

zzxingcheng = sgs.CreateTriggerSkill{
	name = "zzxingcheng" ,

}
Zzhead18:addSkill(zzxingcheng)

zzdimo = sgs.CreateTriggerSkill{
	name = "zzdimo" ,

}
Zzhead19:addSkill(zzdimo)

zzzhifa = sgs.CreateTriggerSkill{
	name = "zzzhifa" ,

}
Zzhead20:addSkill(zzzhifa)

zzfazheng = sgs.CreateTriggerSkill{
	name = "zzfazheng" ,

}
Zzhead21:addSkill(zzfazheng)

zzChristina = sgs.CreateTriggerSkill{
	name = "zzChristina" ,

}
Zzhead22:addSkill(zzChristina)

zzmeier = sgs.CreateTriggerSkill{
	name = "zzmeier" ,

}
Zzhead23:addSkill(zzmeier)


zzhull = sgs.CreateTriggerSkill{
	name = "zzhull" ,

}
Zzhead24:addSkill(zzhull)

zzziren = sgs.CreateTriggerSkill{
	name = "zzziren" ,

}
Zzhead25:addSkill(zzziren)

zzfengyushuang = sgs.CreateTriggerSkill{
    name = "zzfengyushuang" ,

}
Zzhead26:addSkill(zzfengyushuang)

zzfengxiao = sgs.CreateTriggerSkill{
    name = "zzfengxiao" ,

}
Zzhead27:addSkill(zzfengxiao)
Zzhead27:addCompanion("zzhead26")

Zzhead1002:addCompanion("zzhead1001")

sgs.LoadTranslationTable{
    ["#zzhead0"] = "神杀基石",
	["zzhead0"] = "太阳神上",
	["zzjishi"] = "基石",
	[":zzjishi"] = "太阳神三国杀的创始人，谁能想到这是一个人写的良心游戏。" ,
	
    ["#zzhead1"] = "不忘初心",
	["zzhead1"] = "甄姬真妓",
	["zzzhenai"] = "甄爱",
	[":zzzhenai"] = "太阳神三国杀的初始玩家，热爱三国杀，建立群友，目标是能够搭建喜欢三国杀的氛围。" ,
	
	["#zzhead2"] = "帅比",
	["zzhead2"] = "好小子",
	["zzshuaibi"] = "帅逼",
	[":zzshuaibi"] = "神杀联机组织者，总是陶醉在自己很帅的境界王者。" ,
	
	["#zzhead3"] = "高达司令",
	["zzhead3"] = "饺神",
	["zzjiaoshen"] = "吃饺",
	[":zzjiaoshen"] = "神杀群首席看板娘，高达模玩者，也是高达杀的作者，似乎有着和zy非同一般的关系。三幻神之一" ,
	
	["#zzhead4"] = "狼顾之鬼",
    ["zzhead4"] = "偷糖的贼",
	["zztoutang"] = "偷心",
	[":zztoutang"] = "神杀群国战大佬，与官方有着千丝万缕的联系，是玩点的boss。" ,
	
	["#zzhead5"] = "心变",
    ["zzhead5"] = "xxyheaven",
	["zzxinbian"] = "变心",
	[":zzxinbian"] = "神杀群首席程序员，神嗨佬般的存在，做任何事都是“Emmm...看心情”。" ,
	
	["zzhead6"] = "银",
	["#zzhead6"] = "紫罗兰永恒花园",
	["zzluolan"] = "罗兰",
	[":zzluolan"] = "神杀群首席测试员，紫罗兰永不凋零”。" ,
	
	["zzhead7"] = "ZY",
	["#zzhead7"] = "鸽德再世",
	["zzgewang"] = "鸽王",
	[":zzgewang"] = "神杀群身份版负责人，不是“歌王”而是“鸽王”，而且喜欢发逗比表情，貌似深爱着某人。" ,
	
	["zzhead8"] = "九日",
	["#zzhead8"] = "横扫千军",
	["zzjiuri"] = "就日",
	[":zzjiuri"] = "神杀群远古时代人之一，被冠以“就日”的称号，可见其的蹲坑手法非同一般，前提是你得玩的过他。三幻神之一" ,
	
	["#zzhead9"] = "武逆乾坤",
	["zzhead9"] = "贾诩",
	["zzjiayu"] = "深算",
	[":zzjiayu"] = "神杀群远古时代人之一，时常戏称为“甲鱼”，玩得好，藏得深，打法老辣凶狠。三幻神之一" ,
	
	["#zzhead10"] = "寂月梦影",
	["zzhead10"] = "寂镜",
	["zzjingshen"] = "音王",
	[":zzjingshen"] = "镜神，神杀的配音人员，为很多人物进行献声，目标成为配音的王者，(*^__^*) 嘻嘻。" ,
	
	["#zzhead11"] = "背锅侠",
	["zzhead11"] = "数字",
	["zzbeiguo"] = "背锅",
	[":zzbeiguo"] = "无敌是多么寂寞，早期的神杀开发者之一，总是因bug而让其背锅。" ,
	
	["#zzhead12"] = "次氯酸X",
	["zzhead12"] = "氯无止尽",
	["zzlvsuan"] = "酸爽",
	[":zzlvsuan"] = "貌似有很多的孪生兄弟，专注武将强度数十载，后来对官方失去信心神隐。" ,
	
	["#zzhead13"] = "不死小强",
	["zzhead13"] = "鬼魅魍魉",
	["zzwangliang"] = "魍魉",
	[":zzwangliang"] = "神杀群远古时代人之一，打法令人捉摸不定，总有神来之笔。" ,
	
	["#zzhead14"] = "绿罐导演",
	["zzhead14"] = "基尔兽",
	["zzlvguan"] = "绿罐",
	[":zzlvguan"] = "学医却喜欢拍电影，学医却喜欢写lua，你有如此潜质咋不弃医从文呢，讲不定是下一个大文豪。" ,
	
	["#zzhead15"] = "先谢郭嘉",
	["zzhead15"] = "魈梦",
	["zzmeimeng"] = "魈梦",
	[":zzmeimeng"] = "神杀忠实粉丝之一，喜欢yy很多三国杀的东西。" ,
	
	["#zzhead16"] = "随遇而安",
	["zzhead16"] = "聆听",
	["zzlingting"] = "听者",
	[":zzlingting"] = "神杀忠实粉丝之一，喜欢做很多神杀的小视频，经典是b站的top秀。" ,
	
	["#zzhead17"] = "呆酱可爱",
	["zzhead17"] = "呆萌",
	["zzdaimeng"] = "呆萌",
	[":zzdaimeng"] = "神杀忠实粉丝之一，虎牙主播之一，id取名比较可爱。" ,
	
	["#zzhead18"] = "七巧玲珑",
	["zzhead18"] = "星尘",
	["zzxingcheng"] = "星尘",
	[":zzxingcheng"] = "神杀忠实粉丝之一，喜欢做皮肤不能自拔，强大的收集控。" ,
	
	["#zzhead19"] = "迪莫",
	["zzhead19"] = "迪莫",
	["zzdimo"] = "迪莫",
	[":zzdimo"] = "神杀忠实粉丝之一，喜欢做皮肤不能自拔，强大的收集控。" ,
	
	["#zzhead20"] = "生鱼片",
	["zzhead20"] = "生鱼片",
	["zzzhifa"] = "执法",
	[":zzzhifa"] = "神杀比赛执法者和后期整理者，感恩！！！再多说一句，生鱼片真好吃。" ,
	
	["#zzhead21"] = "法孝直",
	["zzhead21"] = "法孝直",
	["zzfazheng"] = "汉室复兴",
	[":zzfazheng"] = "神杀忠实粉丝之一，曾经为太阳神三国杀宣传做出贡献。" ,
	
	["#zzhead22"] = "Christina",
	["zzhead22"] = "Christina",
	["zzChristina"] = "圣堂武士",
	[":zzChristina"] = "神杀忠实粉丝之一，原名加慧滕" ,    
	
	["#zzhead23"] = "媚儿",
	["zzhead23"] = "媚儿",
	["zzmeier"] = "国民女神",
	[":zzmeier"] = "神杀忠实粉丝之一，是个美女主播" ,	
	
	["#zzhead24"] = "呼啦啦	",
	["zzhead24"] = "呼啦啦",
	["zzhull"] = "矜智负能",
	[":zzhull"] = "神杀忠实粉丝之一，现于二三群担任管理一职" ,	
	
	["#zzhead25"] = "子任",
	["zzhead25"] = "子任",
	["zzziren"] = "禁止迫害",
	[":zzziren"] = "神杀忠实粉丝之一，技术高超，是一名高玩禁止迫害！" ,    
    
    ["#zzhead26"] = "狗托",
    ["zzhead26"] = "枫毓霜",
    ["zzfengyushuang"] = "狗托",
    [":zzfengyushuang"] = "神杀忠实粉丝之一，技术高超，各种素材局提供者！" ,
	
	["#zzhead27"] = "狗托之神",
    ["zzhead27"] = "风箫",
    ["zzfengxiao"] = "真的狗托",
    [":zzfengxiao"] = "神杀忠实粉丝之一，技术尚可，各种狗托素材局提供者！" ,    
	
	["#zzhead101"] = "小杀一号",
	["zzhead101"] = "小杀一号",
	["#zzhead102"] = "小杀二号",
	["zzhead102"] = "小杀二号",
	["#zzhead103"] = "小杀三号",
	["zzhead103"] = "小杀三号",
	["#zzhead104"] = "天使小杀",
	["zzhead104"] = "天使小杀",
	["#zzhead105"] = "蒲扇小杀",
    ["zzhead105"] = "蒲扇小杀",
	["#zzhead106"] = "中秋甄姬",
["zzhead106"] = "中秋甄姬",
["#zzhead107"] = "中秋郭嘉",
["zzhead107"] = "中秋郭嘉",
["#zzhead108"] = "中秋荀彧",
["zzhead108"] = "中秋荀彧",
["#zzhead109"] = "中秋小虎",
["zzhead109"] = "中秋小虎",
["#zzhead110"] = "小杀情人",
["zzhead110"] = "小杀情人",
["#zzhead111"] = "王法战队",
["zzhead111"] = "王法战队",
["#zzhead112"] = "王法战队",
["zzhead112"] = "王法战队",
["#zzhead112"] = "王法战队",
	["#zzhead113"] = "马尾小杀",
    ["zzhead113"] = "马尾小杀",
	["#zzhead114"] = "咸鱼达人",
    ["zzhead114"] = "咸鱼达人",
	["#zzhead115"] = "烧烤小杀",
    ["zzhead115"] = "烧烤小杀",
	["#zzhead116"] = "灯笼小杀",
    ["zzhead116"] = "灯笼小杀",
	["#zzhead117"] = "珠玉小杀",
    ["zzhead117"] = "珠玉小杀",
	["#zzhead118"] = "弹弓小杀",
    ["zzhead118"] = "弹弓小杀",
	["#zzhead119"] = "万圣司马",
    ["zzhead119"] = "万圣司马",
	["#zzhead120"] = "万圣香香",
    ["zzhead120"] = "万圣香香",
	["#zzhead121"] = "万圣貂蝉",
    ["zzhead121"] = "万圣貂蝉",
	["#zzhead122"] = "万圣魏延",
    ["zzhead122"] = "万圣魏延",
	["#zzhead123"] = "万圣甄姬",
    ["zzhead123"] = "万圣甄姬",
	["#zzhead124"] = "万圣曹丕",
    ["zzhead124"] = "万圣曹丕",
	["#zzhead125"] = "淘宝宪英",
    ["zzhead125"] = "淘宝宪英",
	["#zzhead126"] = "魔术英才",
    ["zzhead126"] = "魔术英才",
	["#zzhead127"] = "王法之战纪念",
    ["zzhead127"] = "贾诩",
	["#zzhead128"] = "王法之战纪念",
    ["zzhead128"] = "小七",
	["#zzhead129"] = "王法之战纪念",
    ["zzhead129"] = "夷陵老祖",
	["#zzhead130"] = "兔宝小杀",
    ["zzhead130"] = "兔宝小杀",
	["#zzhead131"] = "感恩郭嘉",
    ["zzhead131"] = "感恩郭嘉",
	["#zzhead1001"] = "Tam Quốc Đích Dịch Giả",
    ["zzhead1001"] = "Lãng Khách",
	["#zzhead1002"] = "Chíp Chíp Nữ Chủ",
    ["zzhead1002"] = "Hanako",
	["#zzhead1003"] = "Donator",
    ["zzhead1003"] = "Bấm Quẻ",
	["#zzhead1004"] = "Donator",
    ["zzhead1004"] = "Tierra",
	["#zzhead1005"] = "Người Vô Giải Binh Lương",
    ["zzhead1005"] = "Tom",
	["#zzhead1006"] = "Donator",
    ["zzhead1006"] = "TLinh",

}



return {general_extension}


