Include("\\script\\lib\\awardtemplet.lua")
function main(sel)
    dofile("script/global/pgaming/item/baoruongdatau.lua")
	if (CalcFreeItemCellCount() < 10) then
		Talk(1, "", "H�y �� Tr�ng 10 � R�i Nh�n Th��ng")
		return 1;
	end

	local tbAward = {
		[1] = {
            {tbProp = {4,random(744,770),374,1,0,0}, nCount = 1, nRate = 100},--manh anbang
		},
		[2] = {
			{tbProp = {6,1,71,1,0,0}, nCount = 1, nExpiredTime = 43200, nRate = 40},
			{tbProp = {6,1,124,1,0,0}, nCount = 1, nRate = 1},
            {tbProp = {6,1,125,1,0,0}, nCount = 1, nRate = 5},
			{tbProp = {6,1,147,random(2,4),0,0,0}, tbParam = {60}, nCount = 1, nRate = 20},
			{tbProp = {6,1,1181,1,0,0}, nCount = 1, nExpiredTime = 43200, nRate = 1},
			--{tbProp = {4,353,1,1,0,0}, nCount = 1, nRate = 5},
			{tbProp = {4,238,1,1,0,0}, tbParam = {60}, nCount = 1, nRate = 1},
			{tbProp = {4,240,1,1,0,0}, tbParam = {60}, nCount = 1, nRate = 1},
			{tbProp = {4,239,1,1,0,0}, tbParam = {60}, nCount = 1, nRate = 1},
			{tbProp = {0,10,5,10,0,0}, nCount = 1, nRate = 2},
			{tbProp = {0,10,5,7,0,0}, nCount = 1, nRate = 2},
			{tbProp = {0,10,5,9,0,0}, nCount = 1, nRate = 2},
			{tbProp = {0,10,5,6,0,0}, nCount = 1, nRate = 2},
			{tbProp = {0,10,5,8,0,0}, nCount = 1, nRate = 2},
		},

	}

	tbAwardTemplet:GiveAwardByList(tbAward, "Ph�n th��ng D� T�u")
    Msg2Player("B�n �� m� r��ng v� nh�n th��ng!")


end
