--Boss杀手任务接引npc脚本
--By LiuKuo 2005.3.25
Include ("\\script\\class\\ktabfile.lua")
Include ("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\missions\\challengeoftime\\npc\\dragonboat_main.lua")
Include("\\script\\event\\birthday_jieri\\200905\\chuangguan\\chuangguan.lua");
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-- 闯关活动每日排行榜
Include("\\script\\missions\\challengeoftime\\rank_perday.lua");
Include("\\script\\global\\general\\hotrotanthu\\goto_boss_st.lua");
---- Describ图片描述
--DescLink_NieShiChen = "<#><link=image[147,167]:\\spr\\npcres\\enemy\\enemy154\\enemy154_pst.spr>聂弑尘：<link>";
--TSKID_KILLTASKID = 1082;	-- 接受的哪个任务
--TSKID_KILLERDATE	= 1192;	--接任务时的日期
--TSKID_KILLERMAXCOUNT	= 1193;	--每天杀人次数
--KILLER_MAXCOUNT		= 8;	--每天杀人上限8人

--Th猰 d遪g ki觤 tra 甶襲 ki謓 tham gia khi猽 chi課 c馻 t� i - Modified by DinhHQ - 20110504
Include("\\script\\vng_feature\\challengeoftime\\npcNhiepThiTran.lua")

ContentList = {
	"<#>N誹 ai c�  160  s竧 th� gi秐 trong tay th� gi蔯 m閚g tr� th祅h  nh蕋 s竧 th�  xem nh� ho祅 th祅h. M鏸 ng祔 ch� c莕 ho祅 th祅h <color=yellow>"..SoLuongBossSatThuTrongNgay.." nhi謒 v�<color>l� 頲. <enter>H穣 ti誴 nh薾 nhi謒 v� 搕h竎h th鴆 th阨 gian�  th� nghi謒 s鴆 m筺h ng iv� kh� n╪g s竧 th� c馻 m譶h.",
	"<#> Nhi謒 v� s竧 th� c蕄 20/killer20",
	"<#> Nhi謒 v� s竧 th� c蕄 30/killer30",
	"<#> Nhi謒 v� s竧 th� c蕄 40/killer40",
	"<#> Nhi謒 v� s竧 th� c蕄 50/killer50",	--5
	"<#> Nhi謒 v� s竧 th� c蕄 60/killer60",
	"<#> Nhi謒 v� s竧 th� c蕄 70/killer70",
	"<#> Nhi謒 v� s竧 th� c蕄 80/killer80",
	"<#> Nhi謒 v� s竧 th� c蕄 90/killer90",
	"<#> Ta nh kh玭g mu鑞 gi誸 ngi u, h駓 b� nhi謒 v�./cancel",	--10
	"<#> M竨 ch秠 u r琲, t鑤 nh蕋 l� ta n猲 tr竛h xa/no",
	"<#> Ngi  h駓 b� nhi謒 v�. L祄 s竧 th� trc ti猲 ph秈 c� th� ph竝 si猽 ph祄, hai l� h� th� v� t譶h, xem ra ngi kh玭g th輈h h頿, kh玭g 甶 c騨g kh玭g sao.",
	"<#> Ngi l莕 trc ta n鉯 ngi 甶 h� th� v蒼 c遪 s鑞g, h穣 ch鴑g minh th鵦 l鵦 c馻 m譶h trc 甶 .",
	"<#> Ъng c蕄 c馻 ngi kh玭g ph� h頿, ph秈 giao u c飊g v韎 ngi c� ng c蕄 tng 鴑g m韎 頲.",
	"<#> сng/no",	--15
	"<#> Ъng c蕄 nh� th� c� 20 s竧 th�, tay m鏸 ngi u nhu鑝 y m竨, ngi mu鑞 nh v韎 ngi n祇?",
	"<#> H頿 th祅h s竧 th� gi秐/compose",
	"<#> S竧 th� gi秐 b筺  kh玭g ng, vi謈 quan s竧 v� c苝 m総 tinh tng l� r蕋 quan tr鋘g.",
	"<#> S竧 th� l謓h b筺  qu� nhi襲, s竧 th� c騨g ph秈 c� ngh� thu藅 c馻 n�, kh玭g th� n祇 m� ngay c� sinh m謓h c馻 b秐 th﹏ m譶h c騨g kh玭g bi誸.",
	"<#> S竧 th� l謓h b筺  qu� 輙, s竧 th� c騨g ph秈 c� ngh� thu藅 c馻 n�, kh玭g th� n祇 m� ngay c� sinh m謓h c馻 b秐 th﹏ m譶h c騨g kh玭g bi誸.",	--20
	"<#> H頿 l筰 m閠 l莕 n鱝/compose",
	"<#> B筺  h頿 th祅h m閠<color=",
	"<#> Thu閏 t輓h<color> s竧 th� gi秐, s竧 th� gi秐 l� m閠 s竧 th� phi ph祄. B筺 c� th� d飊g m閠 s竧 th� c飊g c蕄  so t礽 v韎 s竧 th� gi秐, quy t綾 th緉g thua 頲 竝 d鬾g theo quy t綾 tng kh綾 c馻 ng� h祅h. ",
	"<#> Th� luy謓 s竧 th� /annealofkiller",
	"<#> Tham gia khi猽 chi課/want_playboat",	--25
	"<#> S竧 th� luy謓 th鴆 trc ti猲 ph秈 b総 u t� vi謈 tham gia khi猽 chi課, ngi d竚 ti誴 nh薾 nhi謒 v� ch�?",
	"<#> Li猲 quan n khi猽 chi課/aboutchallenge",
	"<#> C� m鏸 gi� h� th鑞g s� th玭g b竜 1 l莕. Th阨 gian b竜 danh l� 5 ph髏, th鵦 hi謓 ch� trong 30 ph髏. M鏸 ngi ch� t鑙 產 2 l莕/ng祔. Ph秈 畂 i trng n b竜 danh. <enter>擭hi謒 v� th竎h th鴆 th阨 gian� g錷 2 khu v鵦 tham gia. S� c蕄: ngi ch琲 t� c蕄 50 n 89, do i trng mang 2 s竧 th� gi秐 di c蕄 90 (ng� h祅h b蕋 k�) 甶 b竜 danh. Cao c蕄: ngi ch琲 t� c蕄 90, do i trng mang 2 s竧 th� gi秐 c蕄 90 (ng� h祅h b蕋 k�) 甶 b竜 danh. <enter>N閕 trong th阨 gian quy nh, n誹 vt qua h誸 28 秈 s� ho祅 th祅h. M鏸 秈 ph莕 thng kinh nghi謒 s� kh竎 nhau. N誹 ho祅 th祅h nhi謒 v� trc th阨 gian h筺 nh, ph莕 thng kinh nghi謒 s� c祅g cao <enter>N誹 trc th阨 h筺  ho祅 th祅h, c� th� s� xu蕋 hi謓 th猰 1 秈, trong  c� nhi襲 ph莕 thng b蕋 ng� (v藅 ph萴 ng蓇 nhi猲, trang b� Ho祅g Kim�). Ch� nh鱪g i  vt 28 秈 ng th阨 gian quy nh m韎 c� t猲 trong b秐g x誴 h筺g.",
	"<#> Nhi謒 v� \"Qu� quan t莔 b秓\"/guoguan_xunbao",
	"<#> Ta n nh薾 thng/rank_award",
	"<#> Ta n xem x誴 h筺g 5 i cao nh蕋 c馻 h玬 nay./get_top5team"
}

killertabfile = new(KTabFile,"/settings/task/tollgate/killer/killer.txt","KILLER")

function main()
	if NPCNhipThiTran ~= 1 then
		return Talk(1, "", "<color=Orange>Nh輕 Th� Tr莕: <color>T輓h n╪g n祔 t筸 ng, h穣 quay l筰 sau!")	
	end
	UWorld1082 = nt_getTask(1082);
	local tbDialog = {ContentList[24],ContentList[17],ContentList[2],ContentList[3],ContentList[4],ContentList[5],ContentList[6],ContentList[7],ContentList[8],ContentList[9],ContentList[10],ContentList[15]};
	if (tbBirthday0905:IsActDate() == 1) then
		tinsert(tbDialog, 12, ContentList[29]);
	end
	Describe(DescLink_NieShiChen..ContentList[1], getn(tbDialog), unpack(tbDialog));
end

function annealofkiller()
--Th猰 d遪g ki觤 tra 甶襲 ki謓 tham gia khi猽 chi課 c馻 t� i - Modified by DinhHQ - 20110504
	--Describe(DescLink_NieShiChen..ContentList[26], 3, ContentList[25],ContentList[27],ContentList[11]);
	Describe(DescLink_NieShiChen..ContentList[26], 4, ContentList[25], "<#> Ki觤 tra 甶襲 ki謓 t� i/#tbCOT_Party:CheckCondition()",ContentList[27],ContentList[11]);
end

function aboutchallenge()
	Describe(DescLink_NieShiChen..ContentList[28],1, ContentList[15]);
end

function killer20()
	if ( killerCoundTakedTask(20, 29) == 0) then
		return 0;
	end;
	showboss( 0 );
end

function killer30()
	if ( killerCoundTakedTask(30, 39) == 0) then
		return 0;
	end;
	showboss( 20 );
end

function killer40()
	if ( killerCoundTakedTask(40, 49) == 0) then
		return 0;
	end;
	showboss( 40 );
end

function killer50()
	if ( killerCoundTakedTask(50, 59) == 0) then
		return 0;
	end;
	showboss( 60 );
end

function killer60()
	if ( killerCoundTakedTask(60, 69) == 0) then
		return 0;
	end;
	showboss( 80 );
end

function killer70()
	if ( killerCoundTakedTask(70, 79) == 0) then
		return 0;
	end;
	showboss( 100 );
end

function killer80()
	if ( killerCoundTakedTask(80, 89) == 0) then
		return 0;
	end;
	showboss( 120 );
end

function killer90()
	if ( killerCoundTakedTask(90, 350) == 0) then
		return 0;
	end;
	showboss( 140 );
	tbLog:PlayerActionLog("TinhNangKey","NhanNhiemVuBossSatThu")
end

function cancel()
	if (nt_getTask(1082) == 0) then
		Talk(1, "", "Ngi ch璦 nh薾 nhi謒 v�, kh玭g th� h駓 b�!")
	return end
	nt_setTask(1082, 0);
	Describe(DescLink_NieShiChen..ContentList[12], 1,ContentList[15]);
end


	------------------------------------gotoboss--------------------------------
	tab_ToaDoBossST = {
		--    T猲 boss ph秈 l蕐 trong \script\task\tollgate\killbosshead.lua n� m韎 chu萵. V� FindNpc n� m韎 c� th� t譵 th蕐
		--    IDMap,ID(S� d遪g)trong killer.txt, t猲 boss, t猲 map, c蕄  boss s竧 th�
			{73,1,"Tr竎 L穘h C莔","Ph鬰 L璾 ng",20},
			{73,2,"Ti猽 Thi猲 Ng筼","Ph鬰 L璾 ng",20},
			{73,3,"M鬰 Minh Ki謙","Ph鬰 L璾 ng",20},
			{73,4,"T蕋 V璾 Ph鉵g","Ph鬰 L璾 ng",20},
			{43,5,"L鬰 C鰑 U","Ki誱 C竎 Trung Nguy猲",20},
			{43,6,"B� Hi猽 Tr莕","Ki誱 C竎 Trung Nguy猲",20},
			{43,7,"C鑓 Ki誱 Thu","Ki誱 C竎 Trung Nguy猲",20},
			{43,8,"Thi謚 Hoa Dung","Ki誱 C竎 Trung Nguy猲",20},
			{71,9,"Quan T� M筩","B筩h Th駓 ng",20},
			{71,10,"B祅h Th輈h H秈","B筩h Th駓 ng",20},
			{71,11,"B輈h Ph� B譶h","B筩h Th駓 ng",20},
			{71,12,"Trng L穘h s琻 ","B筩h Th駓 ng",20},
			{83,13,"Ti猽 Ki誱 Tuy誸","H醓 Lang ng",20},
			{83,14,"Kha Thi誹 Gia","H醓 Lang ng",20},
			{83,15,"Chng B竧 Phng","H醓 Lang ng",20},
			{83,16,"M閚g 蕋  Phi","H醓 Lang ng",20},
			{14,17,"T� у Tuy謙 Ch駓","M穘h H� ng",20},
			{14,18,"Thng Quan L穘g","M穘h H� ng",20},
			{14,19,"Dng Thanh 萵","M穘h H� ng",20},
			{14,20,"Ng魕 Chi猰 Th﹏","M穘h H� ng",20},
			{4,21,"Уo 箃 Thu","Kim Quang ng",30},
			{4,22,"X� B� Йng","Kim Quang ng",30},
			{4,23,"Lng T� Nam ","Kim Quang ng",30},
			{4,24,"Tr竎 Th蕋 Lang","Kim Quang ng",30},
			{22,25,"Ki襲 жnh Thi猲","B筩h V﹏ ng",30},
			{22,26,"Tr鋘g V� C蕄","B筩h V﹏ ng",30},
			{22,27,"Kh� C莔 S�","B筩h V﹏ ng",30},
			{22,28,"nh V╪ D鬰","B筩h V﹏ ng",30},
			{77,29,"Phong Ng� 蕁","Y課 T� ng",30},
			{77,30,"Khang  B蕋 H鑙","Y課 T� ng",30},
			{77,31,"Phng D鵦 Vi猰","Y課 T� ng",30},
			{77,32,"Ninh T﹎ Cu錸g","Y課 T� ng",30},
			{141,33,"H譶h Ph� Sinh","Dc Vng чng T莕g 1",30},
			{141,34,"Ho綾 Tr蕁 Phi","Dc Vng чng T莕g 1",30},
			{141,35,"Qu秐 V� Y誱","Dc Vng чng T莕g 1",30},
			{141,36,"Di謕 V躰h ","Dc Vng чng T莕g 1",30},
			{193,37," ch� Phong","V� Di s琻",30},
			{193,38,"чc C� Hi謕","V� Di s琻",30},
			{193,39,"H筺g Ph� Nhai","V� Di s琻",30},
			{193,40,"Ngh� Чi Chu","V� Di s琻",30},
			{5,41,"Du Th竛 Giang","Kinh Ho祅g ng",40},
			{5,42,"H� H飊g Phi","Kinh Ho祅g ng",40},
			{5,43,"T鑞g V� Phong","Kinh Ho祅g ng",40},
			{5,44,"L� Thng Nh﹏","Kinh Ho祅g ng",40},
			{168,45,"Nh薽 T玭g Ho祅h","Ph鬾g Nh穘 ng",40},
			{168,46,"H祅 Khanh Long","Ph鬾g Nh穘 ng",40},
			{168,47,"Tr� Ph萴 Chi","Ph鬾g Nh穘 ng",40},
			{168,48,"Chung Thi誸 Th鑙","Ph鬾g Nh穘 ng",40},
			{23,49,"猽 D辌h o","Th莕 Ti猲 ng",40},
			{23,50,"у T祅 Sinh","Th莕 Ti猲 ng",40},
			{23,51,"B祅g V� T躰h","Th莕 Ti猲 ng",40},
			{23,52,"L� Hoa ч","Th莕 Ti猲 ng",40},
			{91,53,"Th輈h 秐h Sa","M� Cung K� Qu竛 ng",40},
			{91,54,"Nguy Nh﹏ T� ","M� Cung K� Qu竛 ng",40},
			{91,55,"C� Vi詎 Kh�","M� Cung K� Qu竛 ng",40},
			{91,56,"Tang Ninh C鑓","M� Cung K� Qu竛 ng",40},
			{135,57,"Di猰 T� H鱱","Ki課 T輓h Phong s琻 ng",40},
			{135,58,"Уm Thi猲 B閏","Ki課 T輓h Phong s琻 ng",40},
			{135,59,"Th筩h C� Ki襲","Ki課 T輓h Phong s琻 ng",40},
			{135,60,"鴑g Th竔 Hi謕","Ki課 T輓h Phong s琻 ng",40},
			{12,61,"M筺h Чp H錸g","мa Чo H藆 Vi謓 T輓 Tng T�",50},
			{12,62,"  T鴆 H薾","мa Чo H藆 Vi謓 T輓 Tng T�",50},
			{12,63,"Ho綾 Thanh Sng","мa Чo H藆 Vi謓 T輓 Tng T�",50},
			{12,64,"Mi猲 T� Чo","мa Чo H藆 Vi謓 T輓 Tng T�",50},
			{24,65,"Ti誹 V鋘g Du","Hng Th駓 ng",50},
			{24,66,"Cao N穒 Kho竧","Hng Th駓 ng",50},
			{24,67,"M筺h T�  V� ","Hng Th駓 ng",50},
			{24,68,"Л阯g Ngh躠 Chi","Hng Th駓 ng",50},
			{42,69,"L﹗ Vi Thi謓","Thi猲 T﹎ ng",50},
			{42,70,"L� Tranh Tranh","Thi猲 T﹎ ng",50},
			{42,71,"S� Ti猽 s琻","Thi猲 T﹎ ng",50},
			{42,72,"T﹜ M玭 V� Gi韎","Thi猲 T﹎ ng",50},
			{66,73,"Gi韎 T譶h Ch�","Цy чng ёnh H� T莕g 1",50},
			{66,74,"L玦 Huy詎 Kh竎h","Цy чng ёnh H� T莕g 1",50},
			{66,75,"Di謕 Ng� Long","Цy чng ёnh H� T莕g 1",50},
			{66,76,"Ti誸 Ti觰 B竎h","Цy чng ёnh H� T莕g 1",50},
			{194,77,"M藆 Tu蕋 Nhung","Ng鋍 Hoa ng",50},
			{194,78,"Dng Di詍 Qu﹏","Ng鋍 Hoa ng",50},
			{194,79,"Du Ti猽 Cng","Ng鋍 Hoa ng",50},
			{194,80,"C� D�  T萿","Ng鋍 Hoa ng",50},
			{164,81,"U玭g  Th� Th駓","Thi猲 T莔 Th竝 T莕g 1",60},
			{164,82,"Y課 L璾  Sanh","Thi猲 T莔 Th竝 T莕g 1",60},
			{164,83,"Tang Thng H秈","Thi猲 T莔 Th竝 T莕g 1",60},
			{164,84,"B� Th藀 Tam","Thi猲 T莔 Th竝 T莕g 1",60},
			{117,85,"H藆  Kh蕋 Ki誱","Tng V﹏ чng T莕g 2",60},
			{117,86,"H藆 Y課 T﹏","Tng V﹏ чng T莕g 2",60},
			{117,87,"Thi謚 Th蕋 S竧","Tng V﹏ чng T莕g 2",60},
			{117,88,"Du V筺 L�","Tng V﹏ чng T莕g 2",60},
			{56,89,"C鮱 Du蒼 Sam","Ho祅h s琻 ph竔",60},
			{56,90,"Thng Quan Ch蕋","Ho祅h s琻 ph竔",60},
			{56,91,"T竔 Vi詎 B筩","Ho祅h s琻 ph竔",60},
			{56,92,"Tng Huy襫 Vi詎","Ho祅h s琻 ph竔",60},
			{148,93,"Khu蕋 L閏 Vinh","Tuy誸 b竜 ng t莕g 4",60},
			{148,94,"L� Qu竛 B綾","Tuy誸 b竜 ng t莕g 4",60},
			{148,95,"Gi秈 Qui Nam","Tuy誸 b竜 ng t莕g 4",60},
			{148,96,"T飊g V� 秐h","Tuy誸 b竜 ng t莕g 4",60},
			{196,97,"Ti詎 Th� Thanh","Dng Gi竎 ng",60},
			{196,98,"B筩h Thng Nham","Dng Gi竎 ng",60},
			{196,99,"Bi謓 L璾 Thi謓","Dng Gi竎 ng",60},
			{196,100,"Th竔 Tinh Th莕","Dng Gi竎 ng",60},
			{123,101,"H筺g L謓h Ti","L穙 H� ng",70},
			{123,102,"T祇 Nh﹏  Ph�","L穙 H� ng",70},
			{123,103,"Tr譶h Ph骳 Tam","L穙 H� ng",70},
			{123,104,"ng An Khu�","L穙 H� ng",70},
			{94,105,"鴑g  Ti猽 Phong","Linh C鑓 ng",70},
			{94,106,"Thng Tri襲 Sng","Linh C鑓 ng",70},
			{94,107,"Ph飊g Song D鵦","Linh C鑓 ng",70},
			{94,108,"Ph� Kh﹗ Tu","Linh C鑓 ng",70},
			{319,109,"L筩 Long Hi襫","L﹎ du quan",70},
			{319,110,"C� Thanh Dng","L﹎ du quan",70},
			{319,111,"Quan Thi猲 V蕁","L﹎ du quan",70},
			{319,112,"H� Thi誹 H飊g","L﹎ du quan",70},
			{72,113,"T� C� Ng﹎","Чi T� ng",70},
			{72,114,"H� Nh蕋 Lang","Чi T� ng",70},
			{72,115,"Ho祅g V筺 Ki誴","Чi T� ng",70},
			{72,116,"Giang Tr莔 Nh筺","Чi T� ng",70},
			{76,117,"C秐h Dung Ph鬰","S琻 B秓 ng",70},
			{76,118,"Khng T� Dao","S琻 B秓 ng",70},
			{76,119,"Kh鎛g Dong Nh﹏","S琻 B秓 ng",70},
			{76,120,"L╪g T薾 Trung","S琻 B秓 ng",70},
			{201,121,"Di謕 鴆 Anh","B╪g H� ng",80},
			{201,122,"L筩 Nh� Kim","B╪g H� ng",80},
			{201,123,"M筩 Nam Tr骳","B╪g H� ng",80},
			{201,124,"T莕 T� Du","B╪g H� ng",80},
			{10,125,"C� V� Thng","Nh筺 Th筩h ng",80},
			{10,126,"Li評 T� Gia","Nh筺 Th筩h ng",80},
			{10,127,"Thi Чi Thi誹","Nh筺 Th筩h ng",80},
			{10,128,"T玭 V╪ B璾","Nh筺 Th筩h ng",80},
			{202,129,"уng B蕋 Ph鬰","Ph� Dung ng",80},
			{202,130,"Л阯g B竎 V╪","Ph� Dung ng",80},
			{202,131,"Уo Фo Ch� ","Ph� Dung ng",80},
			{202,132,"襫 V� Чo","Ph� Dung ng",80},
			{181,133,"Vi猲 Ni謒 T辌h","Lng Th駓 ng",80},
			{181,134,"Tr辬h Tr竎 Qu莕","Lng Th駓 ng",80},
			{181,135,"Chng Nguy猲 S飊g","Lng Th駓 ng",80},
			{181,136,"T� Tr鋘g H藆","Lng Th駓 ng",80},
			{143,137,"Vu C鰑  у","dc vng ng t莕g 3",80},
			{143,138,"Vi猲 Thi猲 Th�","dc vng ng t莕g 3",80},
			{143,139,"Nh筩 Thng C玭","dc vng ng t莕g 3",80},
			{143,140,"Chi猰 Ph骳 V﹏","dc vng ng t莕g 3",80},
			{93,141,"C� Gi韎 Nh﹏","Ti課 C骳 ng",90},
			{93,142,"Tr辬h C鰑 Nh藅","Ti課 C骳 ng",90},
			{93,143,"Chu S� B�","Ti課 C骳 ng",90},
			{93,144,"Trang Minh Trung","Ti課 C骳 ng",90},
			{225,145,"Cam Ch輓h C�","Sa M筩 1",90},
			{225,146,"V� Nh蕋 Th�","Sa M筩 1",90},
			{225,147,"Dng Phong D藅","Sa M筩 1",90},
			{225,148,"H� Sinh Vong","Sa M筩 1",90},
			{75,149,"T籲g Ch� O竛","Kho� Lang ng",90},
			{75,150,"V� Bi猲 Th祅h","Kho� Lang ng",90},
			{75,151,"C� Th� Щng","Kho� Lang ng",90},
			{75,152,"Ch� C竧 Kinh H錸g","Kho� Lang ng",90},
			{321,153,"Phan Ng箃 Nhan","Trng B筩h S琻 Nam",90},
			{321,154,"Li猲 Kinh Th竔","Trng B筩h S琻 Nam",90},
			{321,155,"B秓 Tri謙 S琻","Trng B筩h S琻 Nam",90},
			{321,156,"V筺 H� Tinh","Trng B筩h S琻 Nam",90},
			{340,157,"Tr� Thi猲 M蒼","M筩 Cao Qu藅",90},
			{340,158,"筺 L╪g Nguy謙","M筩 Cao Qu藅",90},
			{340,159,"T� D藅 Danh","M筩 Cao Qu藅",90},
			{340,160,"Nh﹎ Thng Khung","M筩 Cao Qu藅",90},
		}
-------------------------------------------------
		function havetask()
			if ( UWorld1082 ~= 0 ) then -- nh薾 nhi謒 v� nh璶g ch璦 kill boss
			--UWorld1082 ch輓h l� nt_getTask(1082)
				local tb = {}
				nX,nY,nMap = FindNpc(tab_ToaDoBossST[UWorld1082][3],tab_ToaDoBossST[UWorld1082][1])
				if  nX ~= 0 and nY~=0 and nMap~=0 then --con boss c� m苩 � tr猲 map
					nDesc = DescLink_NieShiChen.." S竧 th� "..tab_ToaDoBossST[UWorld1082][3].." v蒼 c遪 s鑞g, ngi c遪 ch璦 ti猽 di謙 頲 h緉."
					tinsert(tb,{"H穣 a ta n ",gotobossst,{nX,nY,nMap}})
				else
					nDesc = "Hi謓 t筰 s竧 th� "..tab_ToaDoBossST[UWorld1082][3].."  l萵 tr鑞, ngi ph秈 ki猲 nh蒼 ch� tin t鴆."
					tinsert(tb,{"Ta s� tr� l筰 sau",Quit})
				end
				SayEx(nDesc,tb)
				return 0
			end
			return 1
		end		
----------------------------------------------

--------------------------------------------
function showboss(row)
    Describe(DescLink_NieShiChen..ContentList[16], 12, killertabfile:getCell("BossName",row+1).."/#givetask("..(row+1)..")", killertabfile:getCell("BossName",row+2).."/#givetask("..(row+2)..")", killertabfile:getCell("BossName",row+3).."/#givetask("..(row+3)..")", killertabfile:getCell("BossName",row+4).."/#givetask("..(row+4)..")", killertabfile:getCell("BossName",row+5).."/#givetask("..(row+5)..")", killertabfile:getCell("BossName",row+6).."/#givetask("..(row+6)..")", killertabfile:getCell("BossName",row+7).."/#givetask("..(row+7)..")", killertabfile:getCell("BossName",row+8).."/#givetask("..(row+8)..")", killertabfile:getCell("BossName",row+9).."/#givetask("..(row+9)..")", killertabfile:getCell("BossName",row+10).."/#givetask("..(row+10)..")", "Trang k� /#showbossnext("..row..")", ContentList[15]);
end
function showbossnext(row)
    Describe(DescLink_NieShiChen..ContentList[16], 12, killertabfile:getCell("BossName",row+11).."/#givetask("..(row+11)..")", killertabfile:getCell("BossName",row+12).."/#givetask("..(row+12)..")", killertabfile:getCell("BossName",row+13).."/#givetask("..(row+13)..")", killertabfile:getCell("BossName",row+14).."/#givetask("..(row+14)..")", killertabfile:getCell("BossName",row+15).."/#givetask("..(row+15)..")", killertabfile:getCell("BossName",row+16).."/#givetask("..(row+16)..")", killertabfile:getCell("BossName",row+17).."/#givetask("..(row+17)..")", killertabfile:getCell("BossName",row+18).."/#givetask("..(row+18)..")", killertabfile:getCell("BossName",row+19).."/#givetask("..(row+19)..")", killertabfile:getCell("BossName",row+20).."/#givetask("..(row+20)..")", "Trang trc/#showboss("..row..")", ContentList[15]);
end
---------------------------------------------
function givetask(taskid,nX,nY,nMap)
	nt_setTask(1082,taskid);
	  local nDesc = DescLink_NieShiChen..killertabfile:getCell("BossName",taskid)..killertabfile:getCell("BossInfo",taskid)
	  local tb = {}
	  tinsert(tb,{"H穣 a ta n ",gotobossst,{nX,nY,nMap}})
	  SayEx(nDesc,tb)
end
function gotobossst(nX,nY,nMap)
	  NewWorld(nMap,nX,nY)
	  SetFightState(1);
end 

------------------------------------------=
function compose()
	GiveItemUI("Giao di謓 h頿 th祅h s竧 th� gi秐","5 s竧 th� l謓h c飊g ng c蕄 s� h頿 th祅h 1 s竧 th� gi秐 c蕄 tng 鴑g, thu閏 t輓h c馻 s竧 th� gi秐 頲 t筼 th祅h c� li猲 quan n thu6鋍 t輓h c馻 5 s竧 th� l謓h. B筺 c� th� d飊g s竧 th� gi秐 c馻 m譶h  so t礽 v韎 s竧 th� gi秐 ng c蕄 c馻 ngi kh竎, quy t綾 th緉g thua 頲 t輓h theo quy t綾 tng kh綾 c馻 ng� h祅h.","exchange_token", "no")
end

function exchange_token(ncount)
	local scrollidx = {}
	local scrollattr = {}
	local y = 0
	local compare_level = 0
	for i=1, ncount do
		local nItemIdx = GetGiveItemUnit(i);
		itemgenre, detailtype, parttype, level, attribute = GetItemProp(nItemIdx)
		if (itemgenre == 6 and detailtype == 1 and parttype == 399  ) then	
			if( y > 0 ) then
				if( level ~= compare_level ) then
					Describe(DescLink_NieShiChen..ContentList[18], 2, ContentList[21], ContentList[15]);
					return
				end
			end
			y = y + 1;
			scrollidx[y] = nItemIdx;
			scrollattr[y] = attribute;
			compare_level = level;
		end
	end
	if( y ~= ncount) then
		Describe(DescLink_NieShiChen..ContentList[18], 2, ContentList[21], ContentList[15]);
		return
	end
	if( y > 5 ) then
		Describe(DescLink_NieShiChen..ContentList[19], 2, ContentList[21], ContentList[15]);
		return
	end
	if( y < 5 ) then
		Describe(DescLink_NieShiChen..ContentList[20], 2, ContentList[21], ContentList[15]);
		return
	end
	if( y == 5 ) then
		for i = 1, y do
			RemoveItemByIndex(scrollidx[i]);
		end
		givesword(scrollattr,compare_level);
	end
end

function givesword(attr,level)
	series = {"metal>Kim", "wood>M閏", "water>Th駓", "fire>H醓", "earth>Th� "};
	i = random( 1, 5 );
	AddItem( 6, 1, 400, level, attr[i], 0);
	j = attr[i] + 1;
	Describe(DescLink_NieShiChen..ContentList[22]..series[j]..ContentList[23], 1, ContentList[15]);
end

function no()
end

--每天接任务的限制
function killerCoundTakedTask(nLowLevel, nHighLevel)
	if ( havetask() == 0) then
		return 0;
	end;
	local myLevel = GetLevel();
	if( myLevel < nLowLevel or myLevel >  nHighLevel) then
		Describe(DescLink_NieShiChen..ContentList[14], 1,ContentList[15]);
		return 0;
	end;
	local nDate = tonumber(GetLocalDate("%y%m%d"));
	local myDate = nt_getTask(TSKID_KILLERDATE);
	if (myDate == nDate and nt_getTask(TSKID_KILLERMAXCOUNT) >= SoLuongBossSatThuTrongNgay) then
		Describe(DescLink_NieShiChen.."S竧 th� c� m閠 t� ch蕋 r蕋 quan tr鋘g g鋓 l� khinh k� b筰 tr薾.  H玬 nay ngi  b� h�"..SoLuongBossSatThuTrongNgay.."  ngi r錳, ng祔 mai h穣 quay l筰.", 1, ContentList[15]);
		return 0;
	elseif (myDate ~= nDate) then
		nt_setTask(TSKID_KILLERMAXCOUNT, 0);
		nt_setTask(TSKID_KILLERDATE, nDate);
	end;
	return 1;
end;
