nStartHour = 0
nEndHour = 24

local _GetNexStartTime = function(nStartHour, nStartMinute, nInterval)
	local nNextHour = nStartHour
	local nNextMinute = nInterval * ceil(nStartMinute / nInterval)
	if nNextMinute >= 60 then	
		nNextHour = nNextHour + floor(nNextMinute / 60)
		nNextMinute = mod(nNextMinute, 60) 
	end
	if (nNextHour >= 24) then
		nNextHour = mod(nNextHour, 24);
	end;
	return nNextHour, nNextMinute
end

function TaskShedule()
	TaskName("Boss §¹i Hoµng Kim")
	local  nInterval = 60; -- thoi gian ra boss
	local nStartHour = tonumber(date("%H")) ;
	local nStartMinute = tonumber(date("%M"));
	local nNextHour, nNextMinute = %_GetNexStartTime(nStartHour, nStartMinute, nInterval)	
	TaskTime(nNextHour, nNextMinute);
	TaskInterval(nInterval) 
	TaskCountLimit(0)
	OutputMsg("================[START BOSS HOANG KIM]==================");
end

function TaskContent()
	local nTime = tonumber(date("%H%M"))
	local n_date = tonumber(date("%Y%m%d"));
	local n_weekid = tonumber(date("%w"));
	local n_hour = tonumber(date("%H"));	
	local flag = 0
	if (nTime >= 0000 and nTime < 2300) then
		flag = 1
	end
	if flag == 1 then
	GlobalExecute("dwf \\script\\global\\pgaming\\missions\\bosshoangkim\\bossdai\\goldboss_main.lua bigboss_call2world()")
	OutputMsg("============[RUN BOSS HOANG KIM]=============");
	end
end

function GameSvrConnected(dwGameSvrIP)
end
function GameSvrReady(dwGameSvrIP)
end