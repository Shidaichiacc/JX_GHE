IncludeLib("BATTLE");
IncludeLib("TITLE");
Include("\\script\\battles\\battlehead.lua")
Include("\\script\\battles\\marshal\\head.lua")
Include("\\script\\task\\newtask\\branch\\branch_bwsj.lua")



function InitMission()
	for i = 1, 100 do 
	SetMissionV(i , 0);
	end;
	SetMissionS(1, "")
	SetMissionS(2, "")
	level = BT_GetGameData(GAME_LEVEL);
	
	if (level <= 0) then
		print("Error!!!can not start battle because battlelevel <= 0")
		return
	end

	bt_setnormaltask2type()
	BT_SetView(PL_TOTALPOINT);--显示与统计总积分
	BT_SetView(PL_KILLPLAYER);--杀玩家数目
	BT_SetView(PL_KILLNPC);--杀Npc数目
	BT_SetView(PL_BEKILLED);--本玩家被杀次数
--	BT_SetView(PL_SNAPFLAG);--夺旗数目
	BT_SetView(PL_GETITEM);
	BT_SetView(PL_MAXSERIESKILL);--连斩次数
	
	BT_SetGameData(GAME_CAMP1, 0) --设置当前宋方人数
	BT_SetGameData(GAME_CAMP2, 0) --设置当前金方人数

	subworldid = SubWorldIdx2ID(SubWorld)
	ClearMapNpc(subworldid);	
	ClearMapTrap(subworldid); 
	ClearMapObj(subworldid);
	
	--设置煌之章活动奖励倍数
	SetMissionV(MS_HUANGZHIZHANG, greatnight_huang_event(1))
	
	--获得地图相对应的设定文件名
	local mapfile = GetMapInfoFile(BT_GetGameData(GAME_MAPID))
	

	--得到该地图有几个区域
	areacount = tonumber(GetIniFileData(mapfile, "MapInfo", "Area_Count"))
	if (areacount <= 1) then
		print("battle"..BT_GetGameData(GAME_RULEID).." error! areacount <= 1");
		return
	end
	
	--随机从所有区域中抽取两个，作为双方的主区域
	s_area, j_area = bt_autoselectmaparea(mapfile,areacount)

	BT_SetGameData(GAME_CAMP1AREA, s_area);
	BT_SetGameData(GAME_CAMP2AREA, j_area);
	
	area_section1 = "Area_"..s_area;
	area_section2 = "Area_"..j_area;
-------------------------------------------------------------------------
--读取两个区域的大营内点坐标
	--从大营到后营时的坐标点
    file = GetIniFileData(mapfile, area_section1 , "centertohomepos")
    x,y =bt_getadata(file)
	SetMissionV(MS_HOMEIN_X1, floor(x/32))
	SetMissionV(MS_HOMEIN_Y1, floor(y/32))

	file = GetIniFileData(mapfile, area_section2 , "centertohomepos")
    x,y = bt_getadata(file)
	SetMissionV(MS_HOMEIN_X2, floor(x/32))
	SetMissionV(MS_HOMEIN_Y2, floor(y/32))
	
	--从后营到大营的坐标点
	file = GetIniFileData(mapfile, area_section1 , "hometocenterpos")
	SetMissionS(1, file)
	x,y = bt_getadata(file)
	SetMissionV(MS_HOMEOUT_X1, floor(x/32))
	SetMissionV(MS_HOMEOUT_Y1, floor(y/32))

 	file = GetIniFileData(mapfile, area_section2 , "hometocenterpos")
	SetMissionS(2,file)
	x,y = bt_getadata(file)
	SetMissionV(MS_HOMEOUT_X2, floor(x/32))
	SetMissionV(MS_HOMEOUT_Y2, floor(y/32))
	
-------------------------------------------------------------------------
	
	--摆放Trap点
	--摆放双方后营的Trap点

	hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "hometrap")
	bt_addtrap(hometrapfile, FILE_HOMETRAP1)
	hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "hometrap");
	bt_addtrap(hometrapfile, FILE_HOMETRAP2)


	hometrapfile = GetIniFileData(mapfile, "Area_"..s_area, "centertohometrap")
	bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP1)
	hometrapfile = GetIniFileData(mapfile, "Area_"..j_area, "centertohometrap");
	bt_addtrap(hometrapfile, FILE_CENTERTOHOMETRAP2)
	
	
	--摆放双方军营的trap点

	centertrapfile = GetIniFileData(mapfile, "Area_"..s_area, "centertrap");
	bt_addtrap(centertrapfile, FILE_CENTERTRAP)
	centertrapfile = GetIniFileData(mapfile, "Area_"..j_area, "centertrap");
	bt_addtrap(centertrapfile, FILE_CENTERTRAP)
	

	--摆放对话类型Npc
	--军医的摆放
	doctorxy = GetIniFileData(mapfile, "Area_"..s_area, "doctornpc");
	x,y = bt_str2xydata(doctorxy)
	bt_add_a_diagnpc(FILE_DOCTOR1, TNPC_DOCTOR1, x * 32 ,y * 32 , "Qu﹏ Nhu quan");


	doctorxy = GetIniFileData(mapfile, "Area_"..j_area, "doctornpc");
	x,y = bt_str2xydata(doctorxy)
	bt_add_a_diagnpc(FILE_DOCTOR2, TNPC_DOCTOR2, x * 32, y * 32, "Qu﹏ nhu quan");
	
	--传送员的摆放
	transportxy = GetIniFileData(mapfile, "Area_"..s_area, "transportxy");
	x,y = bt_str2xydata(transportxy)
	bt_add_a_diagnpc(FILE_TRANSPORT1, TNPC_TRANSPORT1, x * 32 ,y * 32 , "Trinh s竧 ti襫 tuy課");


	transportxy = GetIniFileData(mapfile, "Area_"..j_area, "transportxy");
	x,y = bt_str2xydata(transportxy)
	bt_add_a_diagnpc(FILE_TRANSPORT2, TNPC_TRANSPORT2, x * 32, y * 32, "Trinh s竧 ti襫 tuy課");
	
	--帅旗的摆放
	symbolnpcfile = GetIniFileData(mapfile, "Area_"..s_area, "symbolnpc");
	bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL1, " ");
	symbolnpcfile = GetIniFileData(mapfile, "Area_"..j_area, "symbolnpc");
	bt_adddiagnpc(symbolnpcfile, FILE_SYMBOLNPC, TNPC_SYMBOL2, " ");
	
	
	--贮物箱的摆放
	depositxy = GetIniFileData(mapfile, "Area_"..s_area, "depositobj");
	x,y = bt_str2xydata(depositxy)
	bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32,y * 32);
	

	
	depositxy = GetIniFileData(mapfile, "Area_"..j_area, "depositobj");
	x,y = bt_str2xydata(depositxy)
	bt_add_a_diagnpc( FILE_DEPOSIT, TNPC_DEPOSIT, x * 32, y * 32);
	
	
	StartMissionTimer(MISSIONID, 31, TIMER_2);
	--随机模式需要打开每X分钟触发一次的触发器，以产生新旗
	StartMissionTimer(MISSIONID, 30, TIMER_1);
	
	SetMissionV(MS_STATE, 1);--允许报名了
	
	if (level == 1) then
		lvlstr = "Khu v鵦 S� c蕄 "
	elseif (level == 2) then
		lvlstr = "Khu v鵦 Trung c蕄 "
	else
		lvlstr = "Khu v鵦 Cao c蕄 "
	end
	
	RestMin, RestSec = GetMinAndSec(600);
	local str1 = lvlstr.."Chi課 trng T鑞g Kim (B秓 v� Nguy猲 So竔) 產ng trong giai 畂筺 b竜 danh. C竎 hi謕 kh竎h mu鑞 tham gia h穣 nhanh ch鉵g n Tng Dng ho芻 Chu Ti猲 tr蕁  b竜 danh! (ho芻 d飊g T鑞g Kim Chi猽 th�) .Th阨 gian b竜 danh c遪 l筰 l�::"..RestMin.."ph髏"..RestSec.." gi﹜. 襲 ki謓 tham gia: C蕄 kh玭g 輙 h琻 40, ph� b竜 danh 100000 lng";
	--AddGlobalNews(str1);
	CreateChannel("Phe T鑞g"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔", 9)
	CreateChannel("Phe Kim"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔", 10)

	BT_SetMissionName("Phng th鴆 B秓 v� Nguy猲 so竔")
	BT_SetMissionDesc("B鑙 c秐h: N╩ 1160 C玭g nguy猲, Kim ch� Ho祅 Nhan Lng t藀 h頿 qu﹏ l鵦, quy誸 nh Nam h�, ti猽 di謙 T鑞g tri襲. Tng Dng l� tr� ng筰 u ti猲 c馻 qu﹏ Kim, Tng Dng chu萵 b� ng藀 ch譵 trong kh鉯 l鯽 binh 產o. <enter><enter><color=yellow>B秓 v� Nguy猲 so竔: sau khi khai chi課 30 ph髏, nguy猲 so竔 2 b猲 s� l莕 lu顃 xu蕋 hi謓.<enter> M鬰 ti猽: b秓 v� Nguy猲 So竔 phe m譶h, ti猽 di謙 Nguy猲 So竔 phe ch")

end

function RunMission()
	SetMissionV(MS_STATE,2);
	
	local idx = 0;
	local pidx = 0;
	local oldPlayerIndex = PlayerIndex
	for i = 1 , 500 do 
		idx, pidx = GetNextPlayer(MISSIONID,idx, 0);
		--此时为GM发布命令，正式打响战斗
 		if (pidx > 0) then
 			PlayerIndex = pidx;
 			BT_SetData( PL_LASTDEATHTIME, GetGameTime() )
 			PutMessage("мch qu﹏  b総 u h祅h ng! C竎 chi課 s�! X玭g l猲!")
		end
		if (idx <= 0) then 
			break
		end
	end;
	PlayerIndex = oldPlayerIndex
end;

function EndMission()
	WriteLog("[Battle Log] Ending Misson Begin");
	
	SetMissionV(MS_STATE,3)
	StopMissionTimer(MISSIONID, 30);
	StopMissionTimer(MISSIONID ,31);
	
	GameOver()
	level = BT_GetGameData(GAME_LEVEL);
	DeleteChannel("Phe T鑞g"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔")
	DeleteChannel("Phe Kim"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔")


	SetGlbValue(GLB_BATTLESTATE, 0) --设置该全局变量为1，标志当前服务器正处于宋金战役阶段，此时襄阳或朱仙镇的出口点自动设在宋金战役的报名点，否则则设在原宋金战场地图
	for i = 1, 100 do 
		SetMissionV(i , 0);
	end;
	
	WriteLog("[Battle Log] Ending Misson End");
end;

function JoinMission(RoleIndex, Camp)
	PlayerIndex = RoleIndex;
	if (Camp ~= 1 and Camp ~= 2) then
		return
	end
	sf_join(Camp)
	ResetBonus()		--计算积分系数，重置积分
end;

function OnLeave(RoleIndex)
	level = BT_GetGameData(GAME_LEVEL);
	PlayerIndex = RoleIndex;
	
	WriteLog("[Battle Log] Player Leave Battle :"..GetName());
	
	-- SetLogoutRV(0);  玩家掉线也会从Mission中OnLeave，因此不能在此调用SetLogoutRV(0)，必须在把玩家NewWorld出Mission地图的地方调用 Fanghao_Wu 2006-3-21
	ForbidChangePK(0);
	SetPKFlag(0)
	if (GetCurCamp() == 1) then
		LeaveChannel(PlayerIndex, "Phe T鑞g"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔")
	else
		LeaveChannel(PlayerIndex, "Phe Kim"..szGAME_GAMELEVEL[level].."B秓 v� Nguy猲 so竔")
	end
	sf_onplayerleave()
	SyncTaskValue(700 + PL_BATTLEPOINT);--同步玩家的总积分给客户端，用于积分购买功能
	AddSkillState(656,30,0,0) --降玩家的速度
	AddSkillState(661,5,0,0) --清除玩家的称号技能数据
	Title_ActiveTitle(0);
	local nRecord = GetTask(PL_TOTALPOINT + 750);	--By Liao Zhishan
	local nBeiShu = greatnight_huang_event(1);
	if (nBeiShu > 0) then
		nRecord = floor(nRecord / nBeiShu);
	end;
	local nOffered = GetTask(2435);
	SetTask(2435, nRecord);
	if (nRecord > nOffered) then
		tongaward_battle(nRecord - nOffered);--
	end;

	if (GetMissionV(MS_TIMER1) < (TIMER_2 / TIMER_1)) then
		BT_UpdateMemberCount();
	end
	ResetBonus()		--计算积分系数，重置积分
end;

