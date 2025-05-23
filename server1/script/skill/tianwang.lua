--迭代函数，用于计算技能熟练度
--具体方法：
--根据1级熟练度，升级加速度，级数，重复伤害次数，范围，计算出相应等级熟练度
EXP_PER = 40
-- SkillExp(i) = Exp1*a^(i-1)*time*range
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end


SKILLS={
	---天王帮
	zhanlong_jue={ --Tram Long Quyet
		physicsenhance_p={{{1,80},{20,185}}},
		ignoredefense_p={{{1,5},{20,20}}},
		seriesdamage_p={{{1,1},{20,10}}},
		--colddamage_v={
		--	[1]={{1,1},{20,25}},
		--	[3]={{1,2},{20,50}}
		--},
		deadlystrike_p={{{1,6},{20,10}}},
		addskilldamage1={
			[1]={{1,325},{2,325}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage2={
			[1]={{1,408},{2,408}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage3={
			[1]={{1,324},{2,324}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage4={
			[1]={{1,407},{2,407}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage5={
			[1]={{1,1059},{2,1059}},
			[3]={{1,1},{20,41}}
		},
		addskilldamage6={
			[1]={{1,1087},{2,1087}},
			[3]={{1,1},{20,41}}
		},
		missle_speed_v={{{1,18},{20,18}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,54},{20,54}}},
		skill_cost_v={{{1,2},{20,6}}}
	},
	tianwang_qiangfa={ --Thien Vuong Thuong phap
		addphysicsdamage_p={{{1,25},{20,315}},{{1,-1},{2,-1}},{{1,3},{2,3}}},
		attackratingenhance_p={{{1,75},{20,270}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,2},{20,15}},{{1,-1},{2,-1}}}
	},
	tianwang_daofa={ --Thie Vuong Dao phap
		addphysicsdamage_p={{{1,50},{20,300}},{{1,-1},{2,-1}},{{1,1},{2,1}}},
		attackratingenhance_p={{{1,15},{20,72}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,2},{20,15}},{{1,-1},{2,-1}}}
	},
	tianwang_chuifa={ --Thien Vuong Chuy phap
		addphysicsdamage_p={{{1,25},{20,275}},{{1,-1},{2,-1}},{{1,4},{2,4}}},
		attackratingenhance_p={{{1,15},{20,72}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,2},{20,15}},{{1,-1},{2,-1}}}
	},
	huifeng_luoyan={ --Hoi phong lac nhan
		seriesdamage_p={{{1,1},{20,10}}},
		physicsenhance_p={{{1,80},{20,215}}},
		attackrating_p={{{1,10},{20,147}}},
		addskilldamage1={
			[1]={{1,323},{2,323}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,327},{2,327}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage3={
			[1]={{1,41},{2,41}},
			[3]={{1,1},{20,15}}
		},
		addskilldamage4={
			[1]={{1,225},{2,225}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage5={
			[1]={{1,1060},{2,1060}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage6={
			[1]={{1,1088},{2,1088}},
			[3]={{1,1},{20,50}}
		},
		missle_speed_v={{{1,18},{20,18}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,54},{20,54}}},
		skill_cost_v={{{1,4},{20,10}}}
	},
	xingyun_jue={ --Hang Van quyet
		physicsenhance_p={{{1,30},{20,255}}},
		ignoredefense_p={{{1,10},{20,35}}},
		seriesdamage_p={{{1,5},{20,30}}},
		--colddamage_v={
		--	[1]={{1,5},{20,50}},
		--	[3]={{1,100},{20,100}}
		--},
		deadlystrike_p={{{1,8},{20,20}}},
		addskilldamage1={
			[1]={{1,325},{2,325}},
			[3]={{1,1},{20,55}}
		},
		addskilldamage2={
			[1]={{1,408},{2,408}},
			[3]={{1,1},{20,55}}
		},
		addskilldamage3={
			[1]={{1,1059},{2,1059}},
			[3]={{1,1},{20,45},{25,78},{29,96}}
		},
		addskilldamage4={
			[1]={{1,1087},{2,1087}},
			[3]={{1,1},{20,45},{25,78},{29,96}}
		},
		missle_speed_v={{{1,22},{20,22}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,66},{20,66}}},
		skill_cost_v={{{1,3},{20,7}}}
	},
	wuxin_zhan={ --Vo Tam Tram
		physicsenhance_p={{{1,65},{20,453}}},
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		deadlystrike_p={{{1,4},{20,25}}},
		addskilldamage1={
			[1]={{1,322},{2,322}},
			[3]={{1,1},{20,80}}
		},
		addskilldamage2={
			[1]={{1,326},{2,326}},
			[3]={{1,1},{20,80}}
		},
		addskilldamage3={
			[1]={{1,1058},{2,1058}},
			[3]={{1,1},{20,67}}
		},
		addskilldamage4={
			[1]={{1,1086},{2,1086}},
			[3]={{1,1},{20,67}}
		},
		addskilldamage5={
			[1]={{1,1084},{2,1084}},
			[3]={{1,1},{20,67}}
		},
		missle_speed_v={{{1,26},{20,26}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,78},{20,78}}},
		skill_cost_v={{{1,10},{20,20}}}
	},
	jingxin_jue={ --Tinh Tam quyet
		attackratingenhance_p={{{1,45},{20,400}},{{1,18*120},{20,18*180}}},
		skill_cost_v={{{1,5},{20,20}}}
	},
	jinglei_zhan={ --Kinh Loi Tram
		physicsenhance_p={{{1,40},{20,200}}},
		seriesdamage_p={{{1,1},{20,10}}},
		addskilldamage1={
			[1]={{1,322},{2,322}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,326},{2,326}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage3={
			[1]={{1,32},{2,32}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage4={
			[1]={{1,220},{2,220}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage5={
			[1]={{1,1058},{2,1058}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage6={
			[1]={{1,1086},{2,1086}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage7={
			[1]={{1,1084},{2,1084}},
			[3]={{1,1},{20,50}}
		},
		missle_speed_v={{{1,18},{20,18}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,54},{20,54}}},
		skill_cost_v={{{1,5},{20,10}}}
	},
	yangguan_sandie={ --Duong quan tam diep
		physicsenhance_p={{{1,130},{20,375}}},
		seriesdamage_p={{{1,5},{20,30}}},
		attackrating_p={{{1,10},{20,180}}},
		addskilldamage1={
			[1]={{1,323},{2,323}},
			[3]={{1,1},{20,65}}
		},
		addskilldamage2={
			[1]={{1,327},{2,327}},
			[3]={{1,1},{20,65}}
		},
		addskilldamage3={
			[1]={{1,1060},{2,1060}},
			[3]={{1,1},{20,54},{25,88},{29,98}}
		},
		addskilldamage4={
			[1]={{1,1088},{2,1088}},
			[3]={{1,1},{20,54},{25,88},{29,98}}
		},
		missle_speed_v={{{1,22},{20,22}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,66},{20,66}}},
		skill_cost_v={{{1,9},{20,16}}}
	},
	tianwang_zhanyi={ --Thien Vuong chien y
		lifemax_p={{{1,21},{30,185}},{{1,-1},{30,-1}}},
		deadlystrikeenhance_p={{{1,5},{30,45}},{{1,-1},{30,-1}}},
		--attackspeed_v={{{1,5},{30,65}},{{1,-1},{30,-1}}},
		--skill_cost_v={{{1,10},{30,50}}}
	},
	pofeng_zhan={ --Bat phong Tram
		physicsenhance_p={{{1,120},{20,275}}},
		seriesdamage_p={{{1,5},{20,30}}},
		addskilldamage1={
			[1]={{1,322},{2,322}},
			[3]={{1,1},{20,70}}
		},
		addskilldamage2={
			[1]={{1,326},{2,326}},
			[3]={{1,1},{20,70}}
		},
		addskilldamage3={
			[1]={{1,1058},{2,1058}},
			[3]={{1,1},{20,58},{25,92},{27,98}}
		},
		addskilldamage4={
			[1]={{1,1086},{2,1086}},
			[3]={{1,1},{20,58},{25,92},{27,98}}
		},
		addskilldamage5={
			[1]={{1,1084},{2,1084}},
			[3]={{1,1},{20,58},{25,92},{27,98}}
		},
		missle_speed_v={{{1,22},{20,22}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,66},{20,66}}},
		skill_cost_v={{{1,8},{20,12}}}
	},
	duanhun_ci={ --Doan Hon Thich
		physicsenhance_p={{{1,25},{20,215}}},
		seriesdamage_p={{{1,1},{20,50}}},--plus
		stun_p={{{1,16},{20,35}},{{1,5},{20,18}}},
		skill_param1_v={{{1,31},{5,31},{20,31},{31,31},{32,31}}},
		skill_param2_v={{{1,1},{20,1},{21,1}}},
		deadlystrike_p={{{1,4},{20,80}}},
		missle_speed_v={{{1,22},{20,30},{21,30}}},
		skill_attackradius={{{1,22*16},{20,30*16},{21,30*16}}},
		skill_cost_v={{{1,10},{20,20}}}
	},
	xuezhan_bafang={ --Huyet chien Bat phuong
		physicsenhance_p={{{1,60},{20,723}}},
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		attackrating_p={{{1,75},{20,320}}},
		deadlystrike_p={{{1,4},{20,25}}},
		addskilldamage1={
			[1]={{1,323},{2,323}},
			[3]={{1,1},{20,70}}
		},
		addskilldamage2={
			[1]={{1,327},{2,327}},
			[3]={{1,1},{20,70}}
		},
		addskilldamage3={
			[1]={{1,1060},{2,1060}},
			[3]={{1,1},{20,58}}
		},
		addskilldamage4={
			[1]={{1,1088},{2,1088}},
			[3]={{1,1},{20,58}}
		},
		missle_speed_v={{{1,26},{20,26}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,78},{20,78}}},
		skill_cost_v={{{1,11},{20,45}}}
	},
	jinzhong_zhao={ --Kim Chung Trao
		physicsres_p={{{1,12},{20,50}},{{1,18*120},{20,18*180}}},
		coldres_p={{{1,7},{20,45}},{{1,18*120},{20,18*180}}},
		fireres_p={{{1,-5},{20,-15},{21,-15}},{{1,18*120},{20,18*180}}},
		skill_cost_v={{{1,12},{20,40}}}
	},
	chenglong_jue={ --Thua long Quyet
		physicsenhance_p={{{1,40},{20,495}}},
		ignoredefense_p={{{1,38},{20,80},{21,82}}},
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		--colddamage_v={
		--	[1]={{1,10},{20,100}},
		--	[3]={{1,20},{20,200}}
		--},
		deadlystrike_p={{{1,5},{20,40}}},
		addskilldamage1={
			[1]={{1,325},{2,325}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,408},{2,408}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage3={
			[1]={{1,1059},{2,1059}},
			[3]={{1,1},{20,50}}
		},
		addskilldamage4={
			[1]={{1,1087},{2,1087}},
			[3]={{1,1},{20,50}}
		},
		missle_speed_v={{{1,26},{20,26}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,78},{20,78}}},
		skill_cost_v={{{1,10},{20,16}}}
	},
	potian_zhan={ --Pha thien Tram
		physicsenhance_p={{{1,35},{15,160},{20,348}}},
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		deadlystrike_p={{{1,14},{20,35}}},
		attackrating_p={{{1,35},{20,215}}},
		missle_speed_v={{{1,30},{20,30}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,90},{20,90}}},
		skill_cost_v={{{1,15},{20,30}}},
		addskillexp1={{{1,322},{2,322}},{{1,EXP_PER},{20,EXP_PER}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(7280,1.25,1,2.5,1)},
							{2,SkillExpFunc(7280,1.25,2,2.5,1)},
							{3,SkillExpFunc(7280,1.25,3,2.5,1)},
							{4,SkillExpFunc(7280,1.25,4,2.5,1)},
							{5,SkillExpFunc(7280,1.25,5,2.5,1)},
							{6,SkillExpFunc(7280,1.25,6,2.5,1)},
							{7,SkillExpFunc(7280,1.25,7,2.5,1)},
							{8,SkillExpFunc(7280,1.25,8,2.5,1)},
							{9,SkillExpFunc(7280,1.25,9,2.5,1)},
							{10,SkillExpFunc(7280,1.25,10,2.5,1)},
							{11,SkillExpFunc(7280,1.25,11,2.5,1)},
							{12,SkillExpFunc(7280,1.25,12,2.5,1)},
							{13,SkillExpFunc(7280,1.25,13,2.5,1)},
							{14,SkillExpFunc(7280,1.25,14,2.5,1)},
							{15,SkillExpFunc(7280,1.25,15,2.5,1)},
							{16,SkillExpFunc(7280,1.25,16,2.5,1)},
							{17,SkillExpFunc(7280,1.25,17,2.5,1)},
							{18,SkillExpFunc(7280,1.25,18,2.5,1)},
							{19,SkillExpFunc(7280,1.25,19,2.5,1)},
							{20,SkillExpFunc(7280,1.25,20,2.5,1)},
							}},
		addskilldamage1={
			[1]={{1,1058},{2,1058}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage2={
			[1]={{1,1086},{2,1086}},
			[3]={{1,1},{20,35}}
		},
		addskilldamage3={
			[1]={{1,1084},{2,1084}},
			[3]={{1,1},{20,35}}
		},
	},
	zhuixing_zhuyue={ --Truy Tinh Truc Nguyet
		physicsenhance_p={{{1,50},{15,210},{20,391}}},
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		attackrating_p={{{1,95},{20,360}}},
		deadlystrike_p={{{1,14},{20,35}}},
		missle_speed_v={{{1,30},{20,30}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,90},{20,90}}},
		skill_cost_v={{{1,10},{20,65}}},
		addskillexp1={{{1,323},{2,323}},{{1,EXP_PER},{20,EXP_PER}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(6550,1.25,1,5,1)},
							{2,SkillExpFunc(6550,1.25,2,5,1)},
							{3,SkillExpFunc(6550,1.25,3,5,1)},
							{4,SkillExpFunc(6550,1.25,4,5,1)},
							{5,SkillExpFunc(6550,1.25,5,5,1)},
							{6,SkillExpFunc(6550,1.25,6,5,1)},
							{7,SkillExpFunc(6550,1.25,7,5,1)},
							{8,SkillExpFunc(6550,1.25,8,5,1)},
							{9,SkillExpFunc(6550,1.25,9,5,1)},
							{10,SkillExpFunc(6550,1.25,10,5,1)},
							{11,SkillExpFunc(6550,1.25,11,5,1)},
							{12,SkillExpFunc(6550,1.25,12,5,1)},
							{13,SkillExpFunc(6550,1.25,13,5,1)},
							{14,SkillExpFunc(6550,1.25,14,5,1)},
							{15,SkillExpFunc(6550,1.25,15,5,1)},
							{16,SkillExpFunc(6550,1.25,16,5,1)},
							{17,SkillExpFunc(6550,1.25,17,5,1)},
							{18,SkillExpFunc(6550,1.25,18,5,1)},
							{19,SkillExpFunc(6550,1.25,19,5,1)},
							{20,SkillExpFunc(6550,1.25,20,5,1)},
							}},
		addskilldamage1={
			[1]={{1,1060},{2,1060}},
			[3]={{1,1},{20,45}}
		},
		addskilldamage2={
			[1]={{1,1088},{2,1088}},
			[3]={{1,1},{20,45}}
		},
	},
	zhuifeng_jue={ --Truy phong Quyet
		physicsenhance_p={{{1,25},{15,155},{20,215}}},
		-- physicsenhance_p={{{1,25},{15,140},{20,380}}},
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		ignoredefense_p={{{1,12},{20,90},{21,94},{22,98},{23,99},{24,99}}},
		--colddamage_v={
		--	[1]={{1,1},{20,50}},
		--	[3]={{1,5},{20,250}}
		--},
		deadlystrike_p={{{1,10},{20,45}}},
		missle_speed_v={{{1,30},{20,30}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,90},{20,90}}},
		addskillexp1={{{1,325},{2,325}},{{1,EXP_PER},{20,EXP_PER}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(7750,1.25,1,2.5,1)},
							{2,SkillExpFunc(7750,1.25,2,2.5,1)},
							{3,SkillExpFunc(7750,1.25,3,2.5,1)},
							{4,SkillExpFunc(7750,1.25,4,2.5,1)},
							{5,SkillExpFunc(7750,1.25,5,2.5,1)},
							{6,SkillExpFunc(7750,1.25,6,2.5,1)},
							{7,SkillExpFunc(7750,1.25,7,2.5,1)},
							{8,SkillExpFunc(7750,1.25,8,2.5,1)},
							{9,SkillExpFunc(7750,1.25,9,2.5,1)},
							{10,SkillExpFunc(7750,1.25,10,2.5,1)},
							{11,SkillExpFunc(7750,1.25,11,2.5,1)},
							{12,SkillExpFunc(7750,1.25,12,2.5,1)},
							{13,SkillExpFunc(7750,1.25,13,2.5,1)},
							{14,SkillExpFunc(7750,1.25,14,2.5,1)},
							{15,SkillExpFunc(7750,1.25,15,2.5,1)},
							{16,SkillExpFunc(7750,1.25,16,2.5,1)},
							{17,SkillExpFunc(7750,1.25,17,2.5,1)},
							{18,SkillExpFunc(7750,1.25,18,2.5,1)},
							{19,SkillExpFunc(7750,1.25,19,2.5,1)},
							{20,SkillExpFunc(7750,1.25,20,2.5,1)},
							}},
		addskilldamage1={
			[1]={{1,1059},{2,1059}},
			[3]={{1,1},{20,42}}
		},
		addskilldamage2={
			[1]={{1,1087},{2,1087}},
			[3]={{1,1},{20,42}}
		},
		skill_cost_v={{{1,10},{20,30}}}
	},
	daoxutian={ --Dao Hu Thien 120
		allres_p={{{1,1},{20,10},{21,10}},{{1,-1},{2,-1}}},
		allresmax_p={{{1,1},{20,5},{21,5}},{{1,-1},{2,-1}}},
		lifereplenish_p={{{1,1},{15,30},{20,35},{21,36}},{{1,-1},{2,-1}}},
		ignoreskill_p={{{1,5},{15,79},{20,89},{21,89}},{{1,-1},{2,-1}}},
		skill_skillexp_v={{	{1,17851239},
							{2,19487603},
							{3,22760330},
							{4,27669421},
							{5,34214875},
							{6,42396694},
							{7,52214875},
							{8,63669421},
							{9,76760330},
							{10,91487603},
							{11,107851239},
							{12,135669421},
							{13,174942148},
							{14,225669421},
							{15,274418181},
							{16,344618181},
							{17,425738181},
							{18,517778181},
							{19,620738181},
							{20,620738181},
							}},	
	},
	daotianwang150={ --Hao hung tram 150
		physicsenhance_p={{{1,45},{15,380},{20,605},{23,875},{26,995}}},
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		deadlystrike_p={{{1,5},{20,30},{23,37},{26,41}}},
		attackrating_p={{{1,35},{20,215},{23,271},{26,300}}},
		missle_speed_v={{{1,36},{20,36}}},
		missle_lifetime_v={{{1,8},{20,8}}},
		skill_attackradius={{{1,280},{20,280}}},
		skill_cost_v={{{1,20},{20,35},{23,39}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		skill_collideevent={
			[1]={{1,0},{15,0},{15,1},{20,1}},
			[3]={{1,1086},{20,1086}}
		},
		skill_showevent={{{1,0},{10,0},{10,5},{20,5}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,90000},
												{21,120000},
												{22,150000},
												{23,200000},
												{24,250000},
												{25,300000},
												}},	
	},
	qiangtianwang150={ --Ba vuong Tam kim 150
		physicsenhance_p={{{1,45},{15,380},{20,605},{23,875},{26,995}}},
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		attackrating_p={{{1,95},{20,360},{23,443},{26,485}}},
		deadlystrike_p={{{1,5},{20,30},{23,37},{26,41}}},
		missle_speed_v={{{1,36},{20,36}}},
		missle_lifetime_v={{{1,3},{20,3}}},
		skill_attackradius={{{1,108},{20,108}}},
		skill_cost_v={{{1,12},{20,80},{23,101}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,90000},
												{21,120000},
												{22,150000},
												{23,200000},
												{24,250000},
												{25,300000},
												}},	
	},
	chuitianwang150={ --Tung hoanh bat hoang 150
		physicsenhance_p={{{1,45},{15,380},{20,605},{23,875},{26,995}}},
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		ignoredefense_p={{{1,12},{20,90},{21,94},{22,98},{23,99},{24,99}}},
		--colddamage_v={
		--	[1]={{1,1},{20,60},{23,78},{26,87}},
		--	[3]={{1,10},{20,300},{23,391},{26,439}}
		--},
		deadlystrike_p={{{1,5},{20,50},{23,64},{26,71}}},
		missle_speed_v={{{1,32},{20,32}}},
		missle_lifetime_v={{{1,4},{20,4}}},
		skill_attackradius={{{1,108},{20,108}}},
		skill_cost_v={{{1,12},{20,36},{23,43}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,90000},
												{21,120000},
												{22,150000},
												{23,200000},
												{24,250000},
												{25,300000},
												}},	
	},
}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--根据2个点，求线形函数f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--当x2=x1, 有x=c,该直线是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--根据2个点，求2次形函数f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--当x1或者x2 < 0 ,y =0
--当x2=x1, 有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--根据2个点，求-2次形函数f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--当x2或者x1<0, y=0,
--当x1=x2,有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--描绘连接线:Link(x,points)
--根据points提供的一系列点，用相邻的两个点描绘曲线
--return y值
--x 输入值
--points 点集合
--形如：points是形如{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}的映射
function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

------------------------------------------------------
--技能设定格式如下：
--SKILLS={
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	。。。。。
--}
--如：
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--魔法属性physicsenhance_p参数1，1级时为35，20级时为335，曲线不填，默认线形
--			[2]={{1,0},{20,0}},
--		},--没有[3]，表示魔法属性physicsenhance_p参数2，默认为任何时候都是0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--以上描述技能“三环套月”的魔法属性和数值
-----------------------------------------------------------
--函数GetSkillLevelData(levelname, data, level)
--levelname：魔法属性名称
--data：技能名称
--level：技能等级
--return：当技能名称为data，技能等级为level
--			时的魔法属性levelname所需求的三个参数的具体值
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;


function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;

