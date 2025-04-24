----------------------------------------------------Config Server--------------------------------------------------------------
--0: T¾t , 1: Më

FanePage = "www.facebook.com/grouppgaminggameoffline"

CapKhiLoginVaoServer = 0
CapDo = 1 --§¨ng nhËp lÇn ®Çu khi t¹o nh©n vËt tù ®éng lªn cÊp theo chØ ®Þnh
--============================================================================================================--
--													Ho¹t §éng												  --
--============================================================================================================--
NPCCongThanhQuan3Tru = 0
PhongLangDo = 1
NPCVoLamLienDau = 1
LoanChienCuuChauCoc = 1 --TÞa NPC Ch­ëng §¨ng Cung N÷
HoatDongDauNguu = 1 --TÞa NPC Ch­ëng §¨ng Cung N÷
CauCa = 0 --T¹i ThuyÒn Phu C¸c thµnh
-------NPC NhiÕp NhÝ TrÇn-------------
NPCNhipThiTran = 1
SoNguoiThapNhatThamGiaVuotAi = 4
SoLanVuotAiTrongNgay = 1
SoLuongBossSatThuTrongNgay = 101
-------BÇu Cua----------------
BauCua = 1 -- Trung T©m T­¬ng D­¬ng
ThoiGianBatDauBauCua = 0000
ThoiGianKetThucBauCua = 2400
ThoiGianBatDauBauCuaText = "TÝnh n¨ng chØ ®­îc khai më khung giê 0h-24h h»ng ngµy. Vui lßng quay l¹i sau"
ThoiGianKetThucBauCuaText = 12
------Tèng Kim----------------
ThamGiaTongKim = 1
KiemTraIpChongBoostDiemTongKim = 0
KhongCoNguoiDanhLenDiemTongKim = 1
VongSangTopTongKim9h = 1
ThuongTopTongKimTuDong9h = 0
------ThÊt Thµnh §¹i ChiÕn ---------
ThatThanhDaiChien = 1
SoTienBaoDanhCanNop = 10000000
SoKhieuChienLenhCanNop = 500
-----TÝn Sø------
HoatDongTinSu = 1
TinSuPhongKy = 0  
TinSuThienBaoKho = 1
TinSuSonThanMieu = 0
Mo3LoaiTinSuNhuVNG = 0 --(Phong Kú: BiÖn Kinh - D­¬ng Ch©u, Th­¬ng B¶o Khè: Thµnh §« - T­¬ng D­¬ng, S¬n ThÇn MiÕu: L©m An - Ph­îng T­êng, §¹i Lý random 3 map)
---Boss Hoµng Kim------
-- edit boss hoang kim --
-- Thoi gian  ra boss /gateway/s3relay/relaysetting/task/makegoldboss/boss_dai_hoangkim_1900.lua
-- local  nInterval = 10; -- thoi gian ra boss
-- Thoi gian  kill boss /server1/script/global/pgaming/missions/bosshoangkim/bossdai/goldboss_h.lua
-- TIME_BIGBOSS_REMOVE = 5*60*18;
SoLuongBossHoangKimGoiRa = 5  --sè l­îng boss hoµng kim gäi ra mçi ngµy, max lµ 20
KinhNghiemGietBoss = 8000000 -- phai edit trong file
KinhNghiemNguoiChoiDungXungQuanh = 2000000 -- phai edit trong file
TyLeRotDoPho = 50 ---100 t­¬ng øng víi 100%
TyLeRotTrangBiHoangKim = 1 ---100 t­¬ng øng víi 100%
---Boss TiÓu Hoµng Kim------
KinhNghiemGietBossTieu = 2000000;
-----D· TÈu ------------
NPCDaTau = 1
PhanThuongTienVan = 0.09 --ChØnh cµng cao cµng ®­îc nhiÒu
PhanThuongKinhNghiem = 1.3 --ChØnh cµng cao cµng ®­îc nhiÒu
datauvll = 1 ----sluong ruong da tau
-----------------------
--============================================================================================================--
--												NPC													  --
--============================================================================================================--
------NPC TiÒn Trang--------------
NPCTienTrang = 1
PhuongThucDoi = 1 -------- 1: KNB, 2: TiÒn §ång
TyLeNapThe = 100 --VD 50.000VND ®®­îc 500xu hoÆc 50.000 ®­îc 500 KNB
TyLeDoiKnbSangTienDong = 50 -- 1 KNB = 50 TiÒn §ång (Më nÕu bËc ph­¬ng thøc KNB)
-----------------------
NPCLongNgu = 1
--------HiÖu Thuèc---------
TatNPCHieuThuocAllThanh = 0
ScriptMuaThuoc = 0
--------T¹p Hãa------------
TatNPCTapHoaAllThanh = 0
ScriptMuaTBTapHoa =0
--------Thî RÌn-----------
TatNPCThoRenAllThanh = 0
ScriptMuaTBThoRen = 0 
--------B¸n Ngùa---------
TatNPCBanNguaAllThanh = 0
ScriptBanNgua = 0
--------NPC Hç Trî-------------
NPC_HoTro = 1 --Trung T©m Ba L¨ng HuyÖn -- npc doi vat pham
--============================================================================================================--
--												TÝnh N¨ng													  --
--============================================================================================================--
ThoiGianBaoTriServer = 30 --TÝnh b»ng gi©y
UongChaoLapBat = 1
AllowUyThacBachCauHoan = 1
ThayDoiNgoaiTrang = 1 -- Thay §æi Ngo¹i Trang trung t©m T­¬ng D­¬ng
DoiTenNhanVat = 1 -- Vâ L©m Minh Chñ L©m An
GiftCode = 0 --Trung T©m Ba L¨ng HuyÖn
KhoaChucNangGiaoDich = 0
KhoaChucNangBayBan = 0
--============================================================================================================--
--										Hæ trî Test Game - Open Server										  --
--============================================================================================================--
----------------Thêi Gian Open Server ----------------------------
ThoiGianOpenServer = 202006111700 --N¨m/Th¸ng/Ngµy/Giê/Phót
ThoiGianOpenServerText = "Thêi gian open server lµ 17h, xin h·y quay lai sau" --söa l¹i c©u tho¹i cho phï hîp
ThoiGianNhanThuongDuaTop = 202007050000 --NhËn trong NPC lÔ quan
ThoiGianKetThucNhanThuongDuaTop = 202007110000
----------------BËt TÝnh N¨ng Test Game ------------------------------
HoTroTestGame = 0
-------------------C¸c TÝnh N¨ng Hæ Trî T©n Thñ ------------------------------
NhanHoTroKyNang1xDen150 = 1
NhanHoTroKyNang1xDen6x = 0 
VongSangHoTroTanThu = 0
GioiHanCapNhanHoTroVongSang = 60
TocDoHoiPhucManaVongSangHoTro = 200
TocDoHoiPhucMauVongSangHoTro = 200
----------------ChØnh Server Theo D¹ng NhËn §å Free PK -------------------------
ChinhServerPkNhanFullDoVaCap = 0
--Th«ng tin: 
-- + NhËn 1 bé trang bÞ hoµng kim m«n ph¸i tïy chän khãa, chØ chän ®­îc 1 lÇn
-- + NhËn c¸c lo¹i ®iÓm (trõ tiÒn ®ång vµ KNB), thó c­ëi, ®æi mµu, thµnh lËp Bang, trang bÞ xanh, tÝm.
-- + NPC chøc n¨ng tËp trung ë Trung T©m T­¬ng D­¬ng
-- + §æi Vò KhÝ Xanh Trung T©m T­¬ng D­¬ng
--NPC
ChuyenDoiTrangBiHoangKim = 1 -- ChuyÒn §æi 1 Set Trang BÞ Hoµng Kim M«n ph¸i nµy s¸ng trang bÞ Hoµng Kim M«n Ph¸i kh¸c hoÆc cïng 1 ph¸i
TienDongChuyenTrangBi = 300
DoiVatPham = 1 -- §æi nguyªn liÖu c¸c ho¹t ®éng
BanItemHoTro = 1 -- NPC b¸n c¸c vËt phÈm hæ trî nh­ Thuèc lag Tèng Kim,..
DoiVuKhiXanh = 0 -- §æi Vò KhÝ Xanh, cßn lçi, test l¹i sau
--============================================================================================================--
--													Shop													  --
--============================================================================================================--
---------Kú Tr©n C¸c----------------
OpenShopKTC = 1
DiemNapTheSuDungKTC = 0 --B»ng víi tû lÖ n¹p xu VD 50.000VND ®­îc 500 ®iÓm, nÕu kh«ng ®ñ sè ®iÓm sÏ kh«ng sö dông ®­îc Kú Tr©n C¸c (NÕu kh«ng sö dông tÝnh n¨ng nµy th× cho b»ng 0)
--------Shop Tèng Kim---------
ShopTongKim = 1
ScriptShopTongKim = 0
--------Shop Liªn §Êu---------
ShopLienDau = 1
ScriptShopLienDau = 0
-----------------------
OpenShopThanBiThuongNhan = 1
--============================================================================================================--
--												  Di ChuyÓn													  --
--============================================================================================================--
KiemTraCapDoTrainMapVuotCap = 0
DiDenNgonNuiTruongBachThanBiThuongNhan = 0
ChienLongDong = 1
DiViSonDao = 1
--============================================================================================================--
--												  VËt PhÈm													  --
--============================================================================================================--
SuDoThiep = 1
GioiHanTTK = 30
GioiHanVLMT = 30
--============================================================================================================--
--											   	Ðp Trang BÞ													  --
--============================================================================================================--
AllowCheTaoDoTim = 1
DucVatPham = 1
RotDoTimViSonDaoVaMacBac = 1
TyLeRotTrangBiTim = 50 --ChØnh cµng cao cµng rít nhiÒu
EpTrangBiBachKim = 1
NangCapNgua = 0
--============================================================================================================--
--												Giíi h¹n IP													  --
--============================================================================================================--
GioiHanLoginIP = 1
SoLuongAccGioiHan = 6
--============================================================================================================--
--												  Kü N¨ng													  --
--============================================================================================================--
HocKyNang120 = 1
VoDanhTangHocSkill150 = 1
-------------------------------------------
----Skill V¹n §éc Thøc T©m T¨ng Dån Dame----
--MÆc §Þnh -105, -300
nVanDocThucTam1Skill = -1000
nVanDocThucTam20Skill = -1500
------------------------------------
----Tèc ®é luyÖn skill c¸c ph¸i---- ----- da sua  ko con tac dung
--MÆc ®Þnh lµ 2
--ThiÕu L©m--shaolin.lua
nTocDoLuyenSkillThieuLam = 2
--Thiªn V­¬ng--tianwang.lua
nTocDoLuyenSkillThienVuong = 2
--§­êng M«n--tangmen.lua
nTocDoLuyenSkillDuongMon = 2
--Ngò §éc--wudu.lua
nTocDoLuyenSkillNguDoc = 2
--Thóy Yªn--cuiyan.lua
nTocDoLuyenSkillThuyYen = 2
--Nga My--emei.lua
nTocDoLuyenSkillNgaMy = 2
--C¸i Bang--gaibang.lua
nTocDoLuyenSkillCaiBang = 2
--Thiªn NhÉn--tianren.lua
nTocDoLuyenSkillThienNhan = 2
--Vâ §ang--wudang.lua
nTocDoLuyenSkillVoDang = 2
--C«n L«n--kunlun.lua
nTocDoLuyenSkillConLon = 2
--============================================================================================================--
--													Event 12 th¸ng											  --
--============================================================================================================--
EventTuDong = 1
------------------------------------------------------------------------
--		Giíi h¹n sö dông Event th­êng vµ ®Æc biÖt			--
------------------------------------------------------------------------
nGioiHanEventThuong = 1000
nGioiHanEventDacBiet = 2000
------------------------------------------------------------------------
--			Giíi h¹n event mèc 1 2 3				--
------------------------------------------------------------------------
nGioiHanMoc1 = 1000
nGioiHanMoc2 = 1500
nGioiHanMoc3 = 2000
------------------------------------------------------------------------
--	Tû lÖ ghÐp event 1 sè th¸ng (100 lµ max t­¬ng ®­¬ng 100%)		--
------------------------------------------------------------------------
--------event th¸ng 2 ghÐp Ph¸o-----------------------
TyLePhaoTrungPhaoDai = {50,50}
TyLeGhepPhongPhaoDai = {20}	
TyLeGhepPhongPhaoTrung = {50}
TyLeGhepPhongPhaoTieu = {70}
--------event th¸ng 4 ghÐp L¸ Cê ChiÕn Th¾ng----------	
TyLeGhepLaCoChienThang = {100}
--------event th¸ng 6 ghÐp B¸nh Kem-------------------
TyLeBanhKemCatTuong = {100}
TyLeBanhKemNhuY = {100}	
--------event th¸ng 9 ghÐp Quµ Quèc Kh¸nh-------------
TyLeGhepQuaQuocKhanh = {100}
--------event th¸ng 11 ghÐp BÝ KiÕp Gia TruyÒn--------	
TyLeGhepBiKiepGiaTruyen = {100}		







----------------------------------------------------------------edit---------------------------------------------------
-- nhiem vu DA Tau 
--/server1/script/task/newtask/tasklink/tasklink_head.lua
-- sua lai chi cho tim matdothanbi   tl_gettasktype1 la ham goc . 