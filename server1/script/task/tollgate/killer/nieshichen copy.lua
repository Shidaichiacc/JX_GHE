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

function havetask()
	if ( UWorld1082 ~= 0 ) then
		Describe(DescLink_NieShiChen..ContentList[13], 1,ContentList[15]);
		return 0
	end
	return 1
end

function showboss(row)
	Describe(DescLink_NieShiChen..ContentList[16], 12, killertabfile:getCell("BossName",row+1).."/#givetask("..(row+1)..")", killertabfile:getCell("BossName",row+2).."/#givetask("..(row+2)..")", killertabfile:getCell("BossName",row+3).."/#givetask("..(row+3)..")", killertabfile:getCell("BossName",row+4).."/#givetask("..(row+4)..")", killertabfile:getCell("BossName",row+5).."/#givetask("..(row+5)..")", killertabfile:getCell("BossName",row+6).."/#givetask("..(row+6)..")", killertabfile:getCell("BossName",row+7).."/#givetask("..(row+7)..")", killertabfile:getCell("BossName",row+8).."/#givetask("..(row+8)..")", killertabfile:getCell("BossName",row+9).."/#givetask("..(row+9)..")", killertabfile:getCell("BossName",row+10).."/#givetask("..(row+10)..")", "Trang k� /#showbossnext("..row..")", ContentList[15]);
end

function showbossnext(row)
	Describe(DescLink_NieShiChen..ContentList[16], 12, killertabfile:getCell("BossName",row+11).."/#givetask("..(row+11)..")", killertabfile:getCell("BossName",row+12).."/#givetask("..(row+12)..")", killertabfile:getCell("BossName",row+13).."/#givetask("..(row+13)..")", killertabfile:getCell("BossName",row+14).."/#givetask("..(row+14)..")", killertabfile:getCell("BossName",row+15).."/#givetask("..(row+15)..")", killertabfile:getCell("BossName",row+16).."/#givetask("..(row+16)..")", killertabfile:getCell("BossName",row+17).."/#givetask("..(row+17)..")", killertabfile:getCell("BossName",row+18).."/#givetask("..(row+18)..")", killertabfile:getCell("BossName",row+19).."/#givetask("..(row+19)..")", killertabfile:getCell("BossName",row+20).."/#givetask("..(row+20)..")", "Trang trc/#showboss("..row..")", ContentList[15]);
end

function givetask(taskid)
	nt_setTask(1082,taskid);
	Describe(DescLink_NieShiChen..killertabfile:getCell("BossName",taskid)..killertabfile:getCell("BossInfo",taskid), 1, ContentList[15]);
end

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
