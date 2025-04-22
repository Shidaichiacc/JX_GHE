G_PlayerDailogData = {}
function SayEx(nDesc,tbOpt,nSelectPerPage,nPage)
--C�ch d�ng
--local LoiThoai = ""
--local tb = {}
--tinsert(tb,{"D�ng l�a ch�n",Func,{Value1,Value2}})
--SayEx(LoiThoai,tb) --Khuy�n c�o l� 10 l�a ch�n cho 1 Page l� t�i �a, nhi�u qu� sau khi th�m 2 d�ng "Trang tr��c" v� "Trang K�" s� kh�ng hi�n th� h�t
--Kh�ng c�n th�m d�ng "K�t th�c ��i tho�i" v� n� s� t� th�m
    if nDesc == "" or nDesc == nil then nDesc = " " end
    local nTotalSelect = getn(tbOpt)
    if nPage == nil then nPage = 1 end
    if nSelectPerPage == nil then nSelectPerPage = 10 end
    local nStart = (nPage - 1) * nSelectPerPage + 1
    local nEnd = nStart + nSelectPerPage - 1
    if nStart > nTotalSelect then
        return
    end
    if nEnd > nTotalSelect then
        nEnd = nTotalSelect
    end
    local tbSayOpt = {}
    for i=nStart, nEnd do
        tinsert(tbSayOpt,{tbOpt[i][1],tbOpt[i][2],tbOpt[i][3]})
    end
    if nStart > 1 then
        tinsert(tbSayOpt, {"Trang Tr��c", SayEx, {nDesc,tbOpt,nSelectPerPage, nPage - 1}})
    end
    if nEnd < nTotalSelect then
        tinsert(tbSayOpt, {"Trang Sau ", SayEx, {nDesc,tbOpt,nSelectPerPage, nPage + 1}})
    end
    tinsert(tbSayOpt, {"K�t th�c ��i tho�i"})
    G_PlayerDailogData[PlayerIndex] = tbSayOpt
    local tb = {}
    for i= 1, getn(tbSayOpt) do
        tinsert(tb, tbSayOpt[i][1].. format("/#g_DailogBack(%d)", i))
    end
    if type(nDesc) == "number" then
        Describe(nDesc, getn(tb), tb)
    else
        TaskSay("<dec>"..nDesc, tb)
    end
end
function g_DailogBack(nSelectId, nCount) --H� tr� h�m SayEx
    local tbSayOpt = G_PlayerDailogData[PlayerIndex]
    G_PlayerDailogData[PlayerIndex] = nil
    
    if tbSayOpt and tbSayOpt[nSelectId] then
        local nParamCount = getn(tbSayOpt[nSelectId])
        if nParamCount == 1 then
            return
        elseif nParamCount == 2 then
            local pFun = tbSayOpt[nSelectId][2]
            pFun()
        elseif nParamCount == 3 then
            local pFun = tbSayOpt[nSelectId][2]
            local tbParam = tbSayOpt[nSelectId][3]
            
            call(pFun, tbParam)    
        end
    end
end
function FindNpc(nName,nIDMap,nType)
--H�m n�y s� t�m ki�m 1 NPC n�o �� d�a theo t�n v� ID map
--Sau khi t�m xong h�m s� tr� v� 3 gi� tr� bao g�m 2 gi� tr� to� �� v� 1 gi� tr� ID c�a Map. 2 gi� tr� to� �� v� ID map n�y c� th� d�ng �� teleport ��n n�i
--N�u kh�ng t�m ���c th� s� tr� v� 3 gi� tr� l� 0,0,0
--nType: 1-Hi�n th�ng b�o kh�ng t�m th�y npc qua k�nh Msg2Player 0:Kh�ng hi�n c�i th�ng b�o n�o c�. M�c ��nh l� 0
    if nType == nil then nType = 0 end
    NpcIndex = GetMapNpcWithName(nIDMap,nName)
    if NpcIndex == nil or NpcIndex == nName then
        if nType == 1 then
            Msg2Player("<color=green>Kh�ng t�m th�y NPC c� t�n <color=yellow>"..nName.."<color> t�i b�n �� <color=yellow>"..SubWorldName(SubWorldID2Idx(nIDMap)).."<color>.<color>")
        end
        return 0,0,0
    end
    x, y,subworld = GetNpcPos(NpcIndex[1])
    m,n,k = floor(x/32),floor(y/32),SubWorldIdx2ID(subworld)
    return m,n,k
end 