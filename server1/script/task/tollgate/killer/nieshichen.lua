--Bossɱ���������npc�ű�
--By LiuKuo 2005.3.25
Include ("\\script\\class\\ktabfile.lua")
Include ("\\script\\task\\newtask\\newtask_head.lua")
Include("\\script\\missions\\challengeoftime\\npc\\dragonboat_main.lua")
Include("\\script\\event\\birthday_jieri\\200905\\chuangguan\\chuangguan.lua");
Include("\\script\\event\\birthday_jieri\\200905\\class.lua");
Include("\\script\\lib\\common.lua");
Include("\\script\\lib\\log.lua")
Include("\\script\\global\\pgaming\\configserver\\configall.lua")
-- ���ػÿ�����а�
Include("\\script\\missions\\challengeoftime\\rank_perday.lua");
Include("\\script\\global\\general\\hotrotanthu\\goto_boss_st.lua");
---- DescribͼƬ����
--DescLink_NieShiChen = "<#><link=image[147,167]:\\spr\\npcres\\enemy\\enemy154\\enemy154_pst.spr>��߱����<link>";
--TSKID_KILLTASKID = 1082;	-- ���ܵ��ĸ�����
--TSKID_KILLERDATE	= 1192;	--������ʱ������
--TSKID_KILLERMAXCOUNT	= 1193;	--ÿ��ɱ�˴���
--KILLER_MAXCOUNT		= 8;	--ÿ��ɱ������8��

--Th�m d�ng ki�m tra �i�u ki�n tham gia khi�u chi�n c�a t� ��i - Modified by DinhHQ - 20110504
Include("\\script\\vng_feature\\challengeoftime\\npcNhiepThiTran.lua")

ContentList = {
	"<#>N�u ai c� �� 160  s�t th� gi�n trong tay th� gi�c m�ng tr� th�nh �� nh�t s�t th� �� xem nh� ho�n th�nh. M�i ng�y ch� c�n ho�n th�nh <color=yellow>"..SoLuongBossSatThuTrongNgay.." nhi�m v�<color>l� ���c. <enter>H�y ti�p nh�n nhi�m v� �th�ch th�c th�i gian� �� th� nghi�m s�c m�nh ��ng ��iv� kh� n�ng s�t th� c�a m�nh.",
	"<#> Nhi�m v� s�t th� c�p 20/killer20",
	"<#> Nhi�m v� s�t th� c�p 30/killer30",
	"<#> Nhi�m v� s�t th� c�p 40/killer40",
	"<#> Nhi�m v� s�t th� c�p 50/killer50",	--5
	"<#> Nhi�m v� s�t th� c�p 60/killer60",
	"<#> Nhi�m v� s�t th� c�p 70/killer70",
	"<#> Nhi�m v� s�t th� c�p 80/killer80",
	"<#> Nhi�m v� s�t th� c�p 90/killer90",
	"<#> Ta ��nh kh�ng mu�n gi�t ng��i ��u, h�y b� nhi�m v�./cancel",	--10
	"<#> M�u ch�y ��u r�i, t�t nh�t l� ta n�n tr�nh xa/no",
	"<#> Ng��i �� h�y b� nhi�m v�. L�m s�t th� tr��c ti�n ph�i c� th� ph�p si�u ph�m, hai l� h� th� v� t�nh, xem ra ng��i kh�ng th�ch h�p, kh�ng �i c�ng kh�ng sao.",
	"<#> Ng��i l�n tr��c ta n�i ng��i �i h� th� v�n c�n s�ng, h�y ch�ng minh th�c l�c c�a m�nh tr��c �i ��.",
	"<#> ��ng c�p c�a ng��i kh�ng ph� h�p, ph�i giao ��u c�ng v�i ng��i c� ��ng c�p t��ng �ng m�i ���c.",
	"<#> ��ng/no",	--15
	"<#> ��ng c�p nh� th� c� 20 s�t th�, tay m�i ng��i ��u nhu�m ��y m�u, ng��i mu�n ��nh v�i ng��i n�o?",
	"<#> H�p th�nh s�t th� gi�n/compose",
	"<#> S�t th� gi�n b�n �� kh�ng ��ng, vi�c quan s�t v� c�p m�t tinh t��ng l� r�t quan tr�ng.",
	"<#> S�t th� l�nh b�n �� qu� nhi�u, s�t th� c�ng ph�i c� ngh� thu�t c�a n�, kh�ng th� n�o m� ngay c� sinh m�nh c�a b�n th�n m�nh c�ng kh�ng bi�t.",
	"<#> S�t th� l�nh b�n �� qu� �t, s�t th� c�ng ph�i c� ngh� thu�t c�a n�, kh�ng th� n�o m� ngay c� sinh m�nh c�a b�n th�n m�nh c�ng kh�ng bi�t.",	--20
	"<#> H�p l�i m�t l�n n�a/compose",
	"<#> B�n �� h�p th�nh m�t<color=",
	"<#> Thu�c t�nh<color> s�t th� gi�n, s�t th� gi�n l� m�t s�t th� phi ph�m. B�n c� th� d�ng m�t s�t th� c�ng c�p �� so t�i v�i s�t th� gi�n, quy t�c th�ng thua ���c �p d�ng theo quy t�c t��ng kh�c c�a ng� h�nh. ",
	"<#> Th� luy�n s�t th� /annealofkiller",
	"<#> Tham gia khi�u chi�n/want_playboat",	--25
	"<#> S�t th� luy�n th�c tr��c ti�n ph�i b�t ��u t� vi�c tham gia khi�u chi�n, ng��i d�m ti�p nh�n nhi�m v� ch�?",
	"<#> Li�n quan ��n khi�u chi�n/aboutchallenge",
	"<#> C� m�i gi� h� th�ng s� th�ng b�o 1 l�n. Th�i gian b�o danh l� 5 ph�t, th�c hi�n ch� trong 30 ph�t. M�i ng��i ch� t�i �a 2 l�n/ng�y. Ph�i �o ��i tr��ng ��n b�o danh. <enter>�Nhi�m v� th�ch th�c th�i gian� g�m 2 khu v�c tham gia. S� c�p: ng��i ch�i t� c�p 50 ��n 89, do ��i tr��ng mang 2 s�t th� gi�n d��i c�p 90 (ng� h�nh b�t k�) �i b�o danh. Cao c�p: ng��i ch�i t� c�p 90, do ��i tr��ng mang 2 s�t th� gi�n c�p 90 (ng� h�nh b�t k�) �i b�o danh. <enter>N�i trong th�i gian quy ��nh, n�u v��t qua h�t 28 �i s� ho�n th�nh. M�i �i ph�n th��ng kinh nghi�m s� kh�c nhau. N�u ho�n th�nh nhi�m v� tr��c th�i gian h�n ��nh, ph�n th��ng kinh nghi�m s� c�ng cao <enter>N�u tr��c th�i h�n �� ho�n th�nh, c� th� s� xu�t hi�n th�m 1 �i, trong �� c� nhi�u ph�n th��ng b�t ng� (v�t ph�m ng�u nhi�n, trang b� Ho�ng Kim�). Ch� nh�ng ��i �� v��t 28 �i ��ng th�i gian quy ��nh m�i c� t�n trong b�ng x�p h�ng.",
	"<#> Nhi�m v� \"Qu� quan t�m b�o\"/guoguan_xunbao",
	"<#> Ta ��n nh�n th��ng/rank_award",
	"<#> Ta ��n xem x�p h�ng 5 ��i cao nh�t c�a h�m nay./get_top5team"
}

killertabfile = new(KTabFile,"/settings/task/tollgate/killer/killer.txt","KILLER")

function main()
	if NPCNhipThiTran ~= 1 then
		return Talk(1, "", "<color=Orange>Nh�p Th� Tr�n: <color>T�nh n�ng n�y t�m ��ng, h�y quay l�i sau!")	
	end
	UWorld1082 = nt_getTask(1082);
	local tbDialog = {ContentList[24],ContentList[17],ContentList[2],ContentList[3],ContentList[4],ContentList[5],ContentList[6],ContentList[7],ContentList[8],ContentList[9],ContentList[10],ContentList[15]};
	if (tbBirthday0905:IsActDate() == 1) then
		tinsert(tbDialog, 12, ContentList[29]);
	end
	Describe(DescLink_NieShiChen..ContentList[1], getn(tbDialog), unpack(tbDialog));
end

function annealofkiller()
--Th�m d�ng ki�m tra �i�u ki�n tham gia khi�u chi�n c�a t� ��i - Modified by DinhHQ - 20110504
	--Describe(DescLink_NieShiChen..ContentList[26], 3, ContentList[25],ContentList[27],ContentList[11]);
	Describe(DescLink_NieShiChen..ContentList[26], 4, ContentList[25], "<#> Ki�m tra �i�u ki�n t� ��i/#tbCOT_Party:CheckCondition()",ContentList[27],ContentList[11]);
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
		Talk(1, "", "Ng��i ch�a nh�n nhi�m v�, kh�ng th� h�y b�!")
	return end
	nt_setTask(1082, 0);
	Describe(DescLink_NieShiChen..ContentList[12], 1,ContentList[15]);
end


	------------------------------------gotoboss--------------------------------
	tab_ToaDoBossST = {
		--    T�n boss ph�i l�y trong \script\task\tollgate\killbosshead.lua n� m�i chu�n. V� FindNpc n� m�i c� th� t�m th�y
		--    IDMap,ID(S� d�ng)trong killer.txt, t�n boss, t�n map, c�p �� boss s�t th�
			{73,1,"Tr�c L�nh C�m","Ph�c L�u ��ng",20},
			{73,2,"Ti�u Thi�n Ng�o","Ph�c L�u ��ng",20},
			{73,3,"M�c Minh Ki�t","Ph�c L�u ��ng",20},
			{73,4,"T�t V�u Ph�ng","Ph�c L�u ��ng",20},
			{43,5,"L�c C�u U","Ki�m C�c Trung Nguy�n",20},
			{43,6,"B� Hi�u Tr�n","Ki�m C�c Trung Nguy�n",20},
			{43,7,"C�c Ki�m Thu","Ki�m C�c Trung Nguy�n",20},
			{43,8,"Thi�u Hoa Dung","Ki�m C�c Trung Nguy�n",20},
			{71,9,"Quan T� M�c","B�ch Th�y ��ng",20},
			{71,10,"B�nh Th�ch H�i","B�ch Th�y ��ng",20},
			{71,11,"B�ch Ph� B�nh","B�ch Th�y ��ng",20},
			{71,12,"Tr��ng L�nh s�n ","B�ch Th�y ��ng",20},
			{83,13,"Ti�u Ki�m Tuy�t","H�a Lang ��ng",20},
			{83,14,"Kha Thi�u Gia","H�a Lang ��ng",20},
			{83,15,"Ch��ng B�t Ph��ng","H�a Lang ��ng",20},
			{83,16,"M�ng �t  Phi","H�a Lang ��ng",20},
			{14,17,"T� �� Tuy�t Ch�y","M�nh H� ��ng",20},
			{14,18,"Th��ng Quan L�ng","M�nh H� ��ng",20},
			{14,19,"D��ng Thanh �n","M�nh H� ��ng",20},
			{14,20,"Ng�y Chi�m Th�n","M�nh H� ��ng",20},
			{4,21,"��o �o�t Thu","Kim Quang ��ng",30},
			{4,22,"X� B� ��ng","Kim Quang ��ng",30},
			{4,23,"L��ng T� Nam ","Kim Quang ��ng",30},
			{4,24,"Tr�c Th�t Lang","Kim Quang ��ng",30},
			{22,25,"Ki�u ��nh Thi�n","B�ch V�n ��ng",30},
			{22,26,"Tr�ng V� C�p","B�ch V�n ��ng",30},
			{22,27,"Kh� C�m S�","B�ch V�n ��ng",30},
			{22,28,"�inh V�n D�c","B�ch V�n ��ng",30},
			{77,29,"Phong Ng� �n","Y�n T� ��ng",30},
			{77,30,"Khang  B�t H�i","Y�n T� ��ng",30},
			{77,31,"Ph��ng D�c Vi�m","Y�n T� ��ng",30},
			{77,32,"Ninh T�m Cu�ng","Y�n T� ��ng",30},
			{141,33,"H�nh Ph� Sinh","D��c V��ng ��ng T�ng 1",30},
			{141,34,"Ho�c Tr�n Phi","D��c V��ng ��ng T�ng 1",30},
			{141,35,"Qu�n V� Y�m","D��c V��ng ��ng T�ng 1",30},
			{141,36,"Di�p V�nh �n","D��c V��ng ��ng T�ng 1",30},
			{193,37,"�u ch� Phong","V� Di s�n",30},
			{193,38,"��c C� Hi�p","V� Di s�n",30},
			{193,39,"H�ng Ph� Nhai","V� Di s�n",30},
			{193,40,"Ngh� ��i Chu","V� Di s�n",30},
			{5,41,"Du Th�n Giang","Kinh Ho�ng ��ng",40},
			{5,42,"H� H�ng Phi","Kinh Ho�ng ��ng",40},
			{5,43,"T�ng V� Phong","Kinh Ho�ng ��ng",40},
			{5,44,"L� Th��ng Nh�n","Kinh Ho�ng ��ng",40},
			{168,45,"Nh�m T�ng Ho�nh","Ph�ng Nh�n ��ng",40},
			{168,46,"H�n Khanh Long","Ph�ng Nh�n ��ng",40},
			{168,47,"Tr� Ph�m Chi","Ph�ng Nh�n ��ng",40},
			{168,48,"Chung Thi�t Th�i","Ph�ng Nh�n ��ng",40},
			{23,49,"�i�u D�ch �ao","Th�n Ti�n ��ng",40},
			{23,50,"�� T�n Sinh","Th�n Ti�n ��ng",40},
			{23,51,"B�ng V� T�nh","Th�n Ti�n ��ng",40},
			{23,52,"L� Hoa ��","Th�n Ti�n ��ng",40},
			{91,53,"Th�ch �nh Sa","M� Cung K� Qu�n ��ng",40},
			{91,54,"Nguy Nh�n T� ","M� Cung K� Qu�n ��ng",40},
			{91,55,"C� Vi�n Kh�","M� Cung K� Qu�n ��ng",40},
			{91,56,"Tang Ninh C�c","M� Cung K� Qu�n ��ng",40},
			{135,57,"Di�m T� H�u","Ki�n T�nh Phong s�n ��ng",40},
			{135,58,"��m Thi�n B�c","Ki�n T�nh Phong s�n ��ng",40},
			{135,59,"Th�ch C� Ki�u","Ki�n T�nh Phong s�n ��ng",40},
			{135,60,"�ng Th�i Hi�p","Ki�n T�nh Phong s�n ��ng",40},
			{12,61,"M�nh ��p H�ng","��a ��o H�u Vi�n T�n T��ng T�",50},
			{12,62,"�n  T�c H�n","��a ��o H�u Vi�n T�n T��ng T�",50},
			{12,63,"Ho�c Thanh S��ng","��a ��o H�u Vi�n T�n T��ng T�",50},
			{12,64,"Mi�n T� ��o","��a ��o H�u Vi�n T�n T��ng T�",50},
			{24,65,"Ti�u V�ng Du","H��ng Th�y ��ng",50},
			{24,66,"Cao N�i Kho�t","H��ng Th�y ��ng",50},
			{24,67,"M�nh T�  V� ","H��ng Th�y ��ng",50},
			{24,68,"���ng Ngh�a Chi","H��ng Th�y ��ng",50},
			{42,69,"L�u Vi Thi�n","Thi�n T�m ��ng",50},
			{42,70,"L� Tranh Tranh","Thi�n T�m ��ng",50},
			{42,71,"S� Ti�u s�n","Thi�n T�m ��ng",50},
			{42,72,"T�y M�n V� Gi�i","Thi�n T�m ��ng",50},
			{66,73,"Gi�i T�nh Ch�","��y ��ng ��nh H� T�ng 1",50},
			{66,74,"L�i Huy�n Kh�ch","��y ��ng ��nh H� T�ng 1",50},
			{66,75,"Di�p Ng� Long","��y ��ng ��nh H� T�ng 1",50},
			{66,76,"Ti�t Ti�u B�ch","��y ��ng ��nh H� T�ng 1",50},
			{194,77,"M�u Tu�t Nhung","Ng�c Hoa ��ng",50},
			{194,78,"D��ng Di�m Qu�n","Ng�c Hoa ��ng",50},
			{194,79,"Du Ti�u C��ng","Ng�c Hoa ��ng",50},
			{194,80,"C� D�  T�u","Ng�c Hoa ��ng",50},
			{164,81,"U�ng  Th� Th�y","Thi�n T�m Th�p T�ng 1",60},
			{164,82,"Y�n L�u  Sanh","Thi�n T�m Th�p T�ng 1",60},
			{164,83,"Tang Th��ng H�i","Thi�n T�m Th�p T�ng 1",60},
			{164,84,"B� Th�p Tam","Thi�n T�m Th�p T�ng 1",60},
			{117,85,"H�u  Kh�t Ki�m","T��ng V�n ��ng T�ng 2",60},
			{117,86,"H�u Y�n T�n","T��ng V�n ��ng T�ng 2",60},
			{117,87,"Thi�u Th�t S�t","T��ng V�n ��ng T�ng 2",60},
			{117,88,"Du V�n L�","T��ng V�n ��ng T�ng 2",60},
			{56,89,"C�u Du�n Sam","Ho�nh s�n ph�i",60},
			{56,90,"Th��ng Quan Ch�t","Ho�nh s�n ph�i",60},
			{56,91,"T�i Vi�n B�c","Ho�nh s�n ph�i",60},
			{56,92,"T��ng Huy�n Vi�n","Ho�nh s�n ph�i",60},
			{148,93,"Khu�t L�c Vinh","Tuy�t b�o ��ng t�ng 4",60},
			{148,94,"L� Qu�n B�c","Tuy�t b�o ��ng t�ng 4",60},
			{148,95,"Gi�i Qui Nam","Tuy�t b�o ��ng t�ng 4",60},
			{148,96,"T�ng V� �nh","Tuy�t b�o ��ng t�ng 4",60},
			{196,97,"Ti�n Th� Thanh","D��ng Gi�c ��ng",60},
			{196,98,"B�ch Th��ng Nham","D��ng Gi�c ��ng",60},
			{196,99,"Bi�n L�u Thi�n","D��ng Gi�c ��ng",60},
			{196,100,"Th�i Tinh Th�n","D��ng Gi�c ��ng",60},
			{123,101,"H�ng L�nh Ti","L�o H� ��ng",70},
			{123,102,"T�o Nh�n  Ph�","L�o H� ��ng",70},
			{123,103,"Tr�nh Ph�c Tam","L�o H� ��ng",70},
			{123,104,"��ng An Khu�","L�o H� ��ng",70},
			{94,105,"�ng  Ti�u Phong","Linh C�c ��ng",70},
			{94,106,"Th��ng Tri�u S��ng","Linh C�c ��ng",70},
			{94,107,"Ph�ng Song D�c","Linh C�c ��ng",70},
			{94,108,"Ph� Kh�u Tu","Linh C�c ��ng",70},
			{319,109,"L�c Long Hi�n","L�m du quan",70},
			{319,110,"C� Thanh D��ng","L�m du quan",70},
			{319,111,"Quan Thi�n V�n","L�m du quan",70},
			{319,112,"H� Thi�u H�ng","L�m du quan",70},
			{72,113,"T� C� Ng�m","��i T� ��ng",70},
			{72,114,"H� Nh�t Lang","��i T� ��ng",70},
			{72,115,"Ho�ng V�n Ki�p","��i T� ��ng",70},
			{72,116,"Giang Tr�m Nh�n","��i T� ��ng",70},
			{76,117,"C�nh Dung Ph�c","S�n B�o ��ng",70},
			{76,118,"Kh��ng T� Dao","S�n B�o ��ng",70},
			{76,119,"Kh�ng Dong Nh�n","S�n B�o ��ng",70},
			{76,120,"L�ng T�n Trung","S�n B�o ��ng",70},
			{201,121,"Di�p �c Anh","B�ng H� ��ng",80},
			{201,122,"L�c Nh� Kim","B�ng H� ��ng",80},
			{201,123,"M�c Nam Tr�c","B�ng H� ��ng",80},
			{201,124,"T�n T� Du","B�ng H� ��ng",80},
			{10,125,"C� V� Th��ng","Nh�n Th�ch ��ng",80},
			{10,126,"Li�u T� Gia","Nh�n Th�ch ��ng",80},
			{10,127,"Thi ��i Thi�u","Nh�n Th�ch ��ng",80},
			{10,128,"T�n V�n B�u","Nh�n Th�ch ��ng",80},
			{202,129,"��ng B�t Ph�c","Ph� Dung ��ng",80},
			{202,130,"���ng B�c V�n","Ph� Dung ��ng",80},
			{202,131,"��o ��o Ch� ","Ph� Dung ��ng",80},
			{202,132,"�i�n V� ��o","Ph� Dung ��ng",80},
			{181,133,"Vi�n Ni�m T�ch","L��ng Th�y ��ng",80},
			{181,134,"Tr�nh Tr�c Qu�n","L��ng Th�y ��ng",80},
			{181,135,"Ch��ng Nguy�n S�ng","L��ng Th�y ��ng",80},
			{181,136,"T� Tr�ng H�u","L��ng Th�y ��ng",80},
			{143,137,"Vu C�u  ��","d��c v��ng ��ng t�ng 3",80},
			{143,138,"Vi�n Thi�n Th�","d��c v��ng ��ng t�ng 3",80},
			{143,139,"Nh�c Th��ng C�n","d��c v��ng ��ng t�ng 3",80},
			{143,140,"Chi�m Ph�c V�n","d��c v��ng ��ng t�ng 3",80},
			{93,141,"C� Gi�i Nh�n","Ti�n C�c ��ng",90},
			{93,142,"Tr�nh C�u Nh�t","Ti�n C�c ��ng",90},
			{93,143,"Chu S� B�","Ti�n C�c ��ng",90},
			{93,144,"Trang Minh Trung","Ti�n C�c ��ng",90},
			{225,145,"Cam Ch�nh C�","Sa M�c 1",90},
			{225,146,"V� Nh�t Th�","Sa M�c 1",90},
			{225,147,"D��ng Phong D�t","Sa M�c 1",90},
			{225,148,"H� Sinh Vong","Sa M�c 1",90},
			{75,149,"T�ng Ch� O�n","Kho� Lang ��ng",90},
			{75,150,"V� Bi�n Th�nh","Kho� Lang ��ng",90},
			{75,151,"C� Th� ��ng","Kho� Lang ��ng",90},
			{75,152,"Ch� C�t Kinh H�ng","Kho� Lang ��ng",90},
			{321,153,"Phan Ng�t Nhan","Tr��ng B�ch S�n Nam",90},
			{321,154,"Li�n Kinh Th�i","Tr��ng B�ch S�n Nam",90},
			{321,155,"B�o Tri�t S�n","Tr��ng B�ch S�n Nam",90},
			{321,156,"V�n H� Tinh","Tr��ng B�ch S�n Nam",90},
			{340,157,"Tr� Thi�n M�n","M�c Cao Qu�t",90},
			{340,158,"�o�n L�ng Nguy�t","M�c Cao Qu�t",90},
			{340,159,"T� D�t Danh","M�c Cao Qu�t",90},
			{340,160,"Nh�m Th��ng Khung","M�c Cao Qu�t",90},
		}
-------------------------------------------------
		function havetask()
			if ( UWorld1082 ~= 0 ) then --�� nh�n nhi�m v� nh�ng ch�a kill boss
			--UWorld1082 ch�nh l� nt_getTask(1082)
				local tb = {}
				nX,nY,nMap = FindNpc(tab_ToaDoBossST[UWorld1082][3],tab_ToaDoBossST[UWorld1082][1])
				if  nX ~= 0 and nY~=0 and nMap~=0 then --con boss c� m�t � tr�n map
					nDesc = DescLink_NieShiChen.." S�t th� "..tab_ToaDoBossST[UWorld1082][3].." v�n c�n s�ng, ng��i c�n ch�a ti�u di�t ���c h�n."
					tinsert(tb,{"H�y ��a ta ��n ��",gotobossst,{nX,nY,nMap}})
				else
					nDesc = "Hi�n t�i s�t th� "..tab_ToaDoBossST[UWorld1082][3].." �� l�n tr�n, ng��i ph�i ki�n nh�n ch� tin t�c."
					tinsert(tb,{"Ta s� tr� l�i sau",Quit})
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
    Describe(DescLink_NieShiChen..ContentList[16], 12, killertabfile:getCell("BossName",row+11).."/#givetask("..(row+11)..")", killertabfile:getCell("BossName",row+12).."/#givetask("..(row+12)..")", killertabfile:getCell("BossName",row+13).."/#givetask("..(row+13)..")", killertabfile:getCell("BossName",row+14).."/#givetask("..(row+14)..")", killertabfile:getCell("BossName",row+15).."/#givetask("..(row+15)..")", killertabfile:getCell("BossName",row+16).."/#givetask("..(row+16)..")", killertabfile:getCell("BossName",row+17).."/#givetask("..(row+17)..")", killertabfile:getCell("BossName",row+18).."/#givetask("..(row+18)..")", killertabfile:getCell("BossName",row+19).."/#givetask("..(row+19)..")", killertabfile:getCell("BossName",row+20).."/#givetask("..(row+20)..")", "Trang tr��c/#showboss("..row..")", ContentList[15]);
end
---------------------------------------------
function givetask(taskid,nX,nY,nMap)
	nt_setTask(1082,taskid);
	  local nDesc = DescLink_NieShiChen..killertabfile:getCell("BossName",taskid)..killertabfile:getCell("BossInfo",taskid)
	  local tb = {}
	  tinsert(tb,{"H�y ��a ta ��n ��",gotobossst,{nX,nY,nMap}})
	  SayEx(nDesc,tb)
end
function gotobossst(nX,nY,nMap)
	  NewWorld(nMap,nX,nY)
	  SetFightState(1);
end 

------------------------------------------=
function compose()
	GiveItemUI("Giao di�n h�p th�nh s�t th� gi�n","5 s�t th� l�nh c�ng ��ng c�p s� h�p th�nh 1 s�t th� gi�n c�p t��ng �ng, thu�c t�nh c�a s�t th� gi�n ���c t�o th�nh c� li�n quan ��n thu6�c t�nh c�a 5 s�t th� l�nh. B�n c� th� d�ng s�t th� gi�n c�a m�nh �� so t�i v�i s�t th� gi�n ��ng c�p c�a ng��i kh�c, quy t�c th�ng thua ���c t�nh theo quy t�c t��ng kh�c c�a ng� h�nh.","exchange_token", "no")
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
	series = {"metal>Kim", "wood>M�c", "water>Th�y", "fire>H�a", "earth>Th� "};
	i = random( 1, 5 );
	AddItem( 6, 1, 400, level, attr[i], 0);
	j = attr[i] + 1;
	Describe(DescLink_NieShiChen..ContentList[22]..series[j]..ContentList[23], 1, ContentList[15]);
end

function no()
end

--ÿ������������
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
		Describe(DescLink_NieShiChen.."S�t th� c� m�t t� ch�t r�t quan tr�ng g�i l� khinh k� b�i tr�n.  H�m nay ng��i �� b� h�"..SoLuongBossSatThuTrongNgay.."  ng��i r�i, ng�y mai h�y quay l�i.", 1, ContentList[15]);
		return 0;
	elseif (myDate ~= nDate) then
		nt_setTask(TSKID_KILLERMAXCOUNT, 0);
		nt_setTask(TSKID_KILLERDATE, nDate);
	end;
	return 1;
end;
