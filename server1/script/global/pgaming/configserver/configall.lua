----------------------------------------------------Config Server--------------------------------------------------------------
--0: T�t , 1: M�

FanePage = "www.facebook.com/grouppgaminggameoffline"

CapKhiLoginVaoServer = 0
CapDo = 1 --��ng nh�p l�n ��u khi t�o nh�n v�t t� ��ng l�n c�p theo ch� ��nh
--============================================================================================================--
--													Ho�t ��ng												  --
--============================================================================================================--
NPCCongThanhQuan3Tru = 0
PhongLangDo = 1
NPCVoLamLienDau = 1
LoanChienCuuChauCoc = 1 --T�a NPC Ch��ng ��ng Cung N�
HoatDongDauNguu = 1 --T�a NPC Ch��ng ��ng Cung N�
CauCa = 0 --T�i Thuy�n Phu C�c th�nh
-------NPC Nhi�p Nh� Tr�n-------------
NPCNhipThiTran = 1
SoNguoiThapNhatThamGiaVuotAi = 4
SoLanVuotAiTrongNgay = 1
SoLuongBossSatThuTrongNgay = 101
-------B�u Cua----------------
BauCua = 1 -- Trung T�m T��ng D��ng
ThoiGianBatDauBauCua = 0000
ThoiGianKetThucBauCua = 2400
ThoiGianBatDauBauCuaText = "T�nh n�ng ch� ���c khai m� khung gi� 0h-24h h�ng ng�y. Vui l�ng quay l�i sau"
ThoiGianKetThucBauCuaText = 12
------T�ng Kim----------------
ThamGiaTongKim = 1
KiemTraIpChongBoostDiemTongKim = 0
KhongCoNguoiDanhLenDiemTongKim = 1
VongSangTopTongKim9h = 1
ThuongTopTongKimTuDong9h = 0
------Th�t Th�nh ��i Chi�n ---------
ThatThanhDaiChien = 1
SoTienBaoDanhCanNop = 10000000
SoKhieuChienLenhCanNop = 500
-----T�n S�------
HoatDongTinSu = 1
TinSuPhongKy = 0  
TinSuThienBaoKho = 1
TinSuSonThanMieu = 0
Mo3LoaiTinSuNhuVNG = 0 --(Phong K�: Bi�n Kinh - D��ng Ch�u, Th��ng B�o Kh�: Th�nh �� - T��ng D��ng, S�n Th�n Mi�u: L�m An - Ph��ng T��ng, ��i L� random 3 map)
---Boss Ho�ng Kim------
-- edit boss hoang kim --
-- Thoi gian  ra boss /gateway/s3relay/relaysetting/task/makegoldboss/boss_dai_hoangkim_1900.lua
-- local  nInterval = 10; -- thoi gian ra boss
-- Thoi gian  kill boss /server1/script/global/pgaming/missions/bosshoangkim/bossdai/goldboss_h.lua
-- TIME_BIGBOSS_REMOVE = 5*60*18;
SoLuongBossHoangKimGoiRa = 5  --s� l��ng boss ho�ng kim g�i ra m�i ng�y, max l� 20
KinhNghiemGietBoss = 8000000 -- phai edit trong file
KinhNghiemNguoiChoiDungXungQuanh = 2000000 -- phai edit trong file
TyLeRotDoPho = 50 ---100 t��ng �ng v�i 100%
TyLeRotTrangBiHoangKim = 1 ---100 t��ng �ng v�i 100%
---Boss Ti�u Ho�ng Kim------
KinhNghiemGietBossTieu = 2000000;
-----D� T�u ------------
NPCDaTau = 1
PhanThuongTienVan = 0.09 --Ch�nh c�ng cao c�ng ���c nhi�u
PhanThuongKinhNghiem = 1.3 --Ch�nh c�ng cao c�ng ���c nhi�u
datauvll = 1 ----sluong ruong da tau
-----------------------
--============================================================================================================--
--												NPC													  --
--============================================================================================================--
------NPC Ti�n Trang--------------
NPCTienTrang = 1
PhuongThucDoi = 1 -------- 1: KNB, 2: Ti�n ��ng
TyLeNapThe = 100 --VD 50.000VND ����c 500xu ho�c 50.000 ���c 500 KNB
TyLeDoiKnbSangTienDong = 50 -- 1 KNB = 50 Ti�n ��ng (M� n�u b�c ph��ng th�c KNB)
-----------------------
NPCLongNgu = 1
--------Hi�u Thu�c---------
TatNPCHieuThuocAllThanh = 0
ScriptMuaThuoc = 0
--------T�p H�a------------
TatNPCTapHoaAllThanh = 0
ScriptMuaTBTapHoa =0
--------Th� R�n-----------
TatNPCThoRenAllThanh = 0
ScriptMuaTBThoRen = 0 
--------B�n Ng�a---------
TatNPCBanNguaAllThanh = 0
ScriptBanNgua = 0
--------NPC H� Tr�-------------
NPC_HoTro = 1 --Trung T�m Ba L�ng Huy�n -- npc doi vat pham
--============================================================================================================--
--												T�nh N�ng													  --
--============================================================================================================--
ThoiGianBaoTriServer = 30 --T�nh b�ng gi�y
UongChaoLapBat = 1
AllowUyThacBachCauHoan = 1
ThayDoiNgoaiTrang = 1 -- Thay ��i Ngo�i Trang trung t�m T��ng D��ng
DoiTenNhanVat = 1 -- V� L�m Minh Ch� L�m An
GiftCode = 0 --Trung T�m Ba L�ng Huy�n
KhoaChucNangGiaoDich = 0
KhoaChucNangBayBan = 0
--============================================================================================================--
--										H� tr� Test Game - Open Server										  --
--============================================================================================================--
----------------Th�i Gian Open Server ----------------------------
ThoiGianOpenServer = 202006111700 --N�m/Th�ng/Ng�y/Gi�/Ph�t
ThoiGianOpenServerText = "Th�i gian open server l� 17h, xin h�y quay lai sau" --s�a l�i c�u tho�i cho ph� h�p
ThoiGianNhanThuongDuaTop = 202007050000 --Nh�n trong NPC l� quan
ThoiGianKetThucNhanThuongDuaTop = 202007110000
----------------B�t T�nh N�ng Test Game ------------------------------
HoTroTestGame = 0
-------------------C�c T�nh N�ng H� Tr� T�n Th� ------------------------------
NhanHoTroKyNang1xDen150 = 1
NhanHoTroKyNang1xDen6x = 0 
VongSangHoTroTanThu = 0
GioiHanCapNhanHoTroVongSang = 60
TocDoHoiPhucManaVongSangHoTro = 200
TocDoHoiPhucMauVongSangHoTro = 200
----------------Ch�nh Server Theo D�ng Nh�n �� Free PK -------------------------
ChinhServerPkNhanFullDoVaCap = 0
--Th�ng tin: 
-- + Nh�n 1 b� trang b� ho�ng kim m�n ph�i t�y ch�n kh�a, ch� ch�n ���c 1 l�n
-- + Nh�n c�c lo�i �i�m (tr� ti�n ��ng v� KNB), th� c��i, ��i m�u, th�nh l�p Bang, trang b� xanh, t�m.
-- + NPC ch�c n�ng t�p trung � Trung T�m T��ng D��ng
-- + ��i V� Kh� Xanh Trung T�m T��ng D��ng
--NPC
ChuyenDoiTrangBiHoangKim = 1 -- Chuy�n ��i 1 Set Trang B� Ho�ng Kim M�n ph�i n�y s�ng trang b� Ho�ng Kim M�n Ph�i kh�c ho�c c�ng 1 ph�i
TienDongChuyenTrangBi = 300
DoiVatPham = 1 -- ��i nguy�n li�u c�c ho�t ��ng
BanItemHoTro = 1 -- NPC b�n c�c v�t ph�m h� tr� nh� Thu�c lag T�ng Kim,..
DoiVuKhiXanh = 0 -- ��i V� Kh� Xanh, c�n l�i, test l�i sau
--============================================================================================================--
--													Shop													  --
--============================================================================================================--
---------K� Tr�n C�c----------------
OpenShopKTC = 1
DiemNapTheSuDungKTC = 0 --B�ng v�i t� l� n�p xu VD 50.000VND ���c 500 �i�m, n�u kh�ng �� s� �i�m s� kh�ng s� d�ng ���c K� Tr�n C�c (N�u kh�ng s� d�ng t�nh n�ng n�y th� cho b�ng 0)
--------Shop T�ng Kim---------
ShopTongKim = 1
ScriptShopTongKim = 0
--------Shop Li�n ��u---------
ShopLienDau = 1
ScriptShopLienDau = 0
-----------------------
OpenShopThanBiThuongNhan = 1
--============================================================================================================--
--												  Di Chuy�n													  --
--============================================================================================================--
KiemTraCapDoTrainMapVuotCap = 0
DiDenNgonNuiTruongBachThanBiThuongNhan = 0
ChienLongDong = 1
DiViSonDao = 1
--============================================================================================================--
--												  V�t Ph�m													  --
--============================================================================================================--
SuDoThiep = 1
GioiHanTTK = 30
GioiHanVLMT = 30
--============================================================================================================--
--											   	�p Trang B�													  --
--============================================================================================================--
AllowCheTaoDoTim = 1
DucVatPham = 1
RotDoTimViSonDaoVaMacBac = 1
TyLeRotTrangBiTim = 50 --Ch�nh c�ng cao c�ng r�t nhi�u
EpTrangBiBachKim = 1
NangCapNgua = 0
--============================================================================================================--
--												Gi�i h�n IP													  --
--============================================================================================================--
GioiHanLoginIP = 1
SoLuongAccGioiHan = 6
--============================================================================================================--
--												  K� N�ng													  --
--============================================================================================================--
HocKyNang120 = 1
VoDanhTangHocSkill150 = 1
-------------------------------------------
----Skill V�n ��c Th�c T�m T�ng D�n Dame----
--M�c ��nh -105, -300
nVanDocThucTam1Skill = -1000
nVanDocThucTam20Skill = -1500
------------------------------------
----T�c �� luy�n skill c�c ph�i---- ----- da sua  ko con tac dung
--M�c ��nh l� 2
--Thi�u L�m--shaolin.lua
nTocDoLuyenSkillThieuLam = 2
--Thi�n V��ng--tianwang.lua
nTocDoLuyenSkillThienVuong = 2
--���ng M�n--tangmen.lua
nTocDoLuyenSkillDuongMon = 2
--Ng� ��c--wudu.lua
nTocDoLuyenSkillNguDoc = 2
--Th�y Y�n--cuiyan.lua
nTocDoLuyenSkillThuyYen = 2
--Nga My--emei.lua
nTocDoLuyenSkillNgaMy = 2
--C�i Bang--gaibang.lua
nTocDoLuyenSkillCaiBang = 2
--Thi�n Nh�n--tianren.lua
nTocDoLuyenSkillThienNhan = 2
--V� �ang--wudang.lua
nTocDoLuyenSkillVoDang = 2
--C�n L�n--kunlun.lua
nTocDoLuyenSkillConLon = 2
--============================================================================================================--
--													Event 12 th�ng											  --
--============================================================================================================--
EventTuDong = 1
------------------------------------------------------------------------
--		Gi�i h�n s� d�ng Event th��ng v� ��c bi�t			--
------------------------------------------------------------------------
nGioiHanEventThuong = 1000
nGioiHanEventDacBiet = 2000
------------------------------------------------------------------------
--			Gi�i h�n event m�c 1 2 3				--
------------------------------------------------------------------------
nGioiHanMoc1 = 1000
nGioiHanMoc2 = 1500
nGioiHanMoc3 = 2000
------------------------------------------------------------------------
--	T� l� gh�p event 1 s� th�ng (100 l� max t��ng ���ng 100%)		--
------------------------------------------------------------------------
--------event th�ng 2 gh�p Ph�o-----------------------
TyLePhaoTrungPhaoDai = {50,50}
TyLeGhepPhongPhaoDai = {20}	
TyLeGhepPhongPhaoTrung = {50}
TyLeGhepPhongPhaoTieu = {70}
--------event th�ng 4 gh�p L� C� Chi�n Th�ng----------	
TyLeGhepLaCoChienThang = {100}
--------event th�ng 6 gh�p B�nh Kem-------------------
TyLeBanhKemCatTuong = {100}
TyLeBanhKemNhuY = {100}	
--------event th�ng 9 gh�p Qu� Qu�c Kh�nh-------------
TyLeGhepQuaQuocKhanh = {100}
--------event th�ng 11 gh�p B� Ki�p Gia Truy�n--------	
TyLeGhepBiKiepGiaTruyen = {100}		







----------------------------------------------------------------edit---------------------------------------------------
-- nhiem vu DA Tau 
--/server1/script/task/newtask/tasklink/tasklink_head.lua
-- sua lai chi cho tim matdothanbi   tl_gettasktype1 la ham goc . 