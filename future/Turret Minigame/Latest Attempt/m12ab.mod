MOD V1.0                   @  |   w   џџџџ                                                                                                                    a_roomanim          к  a_roomanim         й  custom002          ѓ  k_421_eboheart     к  k_421_ebohit       к  k_421_ebohit       й  k_421_enemydead2   к  k_421_enemydead2   й  k_421_enemydead3   к  k_421_enemydead3	   й  k_421_enemydead4
   к  k_421_enemydead4   й  k_421_enemydead5   к  k_421_enemydead5   й  k_421_enemydead6   к  k_421_enemydead6   й  k_421_enemydead7   к  k_421_enemydead7   й  k_421_enemygo      к  k_421_enemygo      й  k_421_modheart     к  k_421_modheart     й  k_421_modload      к  k_421_modload      й  m12ab              м  m12ab              ч  m12ab              Л  module             о     I  i  Ћ  	  У  з  l  C    G  н  $  ќ   $    %1  ќ  !:    &G  ќ  "P    ']  ќ  #f    (s  ќ  $|    )  ќ  %    *  o     y      ј  
Љ  ї  Ж    З  v  И  /  ш  Д  вя     ^№  n  NCS V1.0B  I       K_TURRET_SKYBOX Dџџџј  џџџќџџџќ         A,                	m12ab_01a т  >LЬЭ     Йџџџќ    
     {,                	m12ab_01a т  >LЬЭ  ,           %џџџџџџџџ  ѓ      ?Р       .џџџќ         {,                	m12ab_01a т  >LЬЭ  ,           %џџџџџџџџ  ѓ      ?Р        Ѓ,                	m12ab_01a т  >LЬЭ   K_HK47_SIMULATION B        F,           %џџџџџџџџ  ѓ      ?Р         џџџќ  void main() {
	int nGlobal = GetGlobalNumber("K_TURRET_SKYBOX");
	if ((nGlobal == 5)) {
		DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 1));
	}
	else {
		if ((nGlobal == 10)) {
			DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 2));
			DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
		}
		else {
			if ((nGlobal == 15)) {
				DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 3));
				DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
			}
			else {
				DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 4));
				if ((GetGlobalBoolean("K_HK47_SIMULATION") != 1)) {
					DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
				}
			}
		}
	}
}

UTS V3.28      P           (  /   W  d   Л     џџџџ                 
                                                                                                 	     ?   
      A        ?                                                                                                                     !              
      +   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            Alarm01   .­      	custom002	mgs_alarm                                	   
                                                   NCS V1.0B  l        !     чџџџј  џџџќџџџј   цCД  !џџџј  џџџќџџџј   чџџџј  џџџќџџџј џџџј   ц!CД  !  чџџџ№  џџџќџџџє          *  hџџџ№  џџџ№  џџџќ    џџџ№   \џџџј  џџџќ  џџџј  џџџќџџџј   ;        1 	HudRot_00џџџє #џџџј  џџџќ    џџџј   ;        0 HudRot_0џџџє #џџџј  џџџќ    џџџј   ;        / HudRot_џџџє #џџџј  џџџќ               џџџ№  c  J     e oџџџш  џџџє K_LAST_LOCATION Д                  з2   е M12AB_START_SYNC D       '           
SithLoop02 c  J           
SithLoop03 c  J           
SithLoop04 c  J           
SithLoop05 c  J           
SithLoop06 c  J           
SithLoop07 c  J    M12AB_START_SYNC E     M12AB_START_SYNC D         `џџџє  K_LAST_LOCATION Д  п$     +    M12AB_START_SYNC E                џџџ№   з K_LAST_LOCATION Е џџџр  NCS V1.0B                     hit c  J M12AB_END_SYNC B        Ћ     h  а    N ]      h  а       ш     џџџј  џџџќџџџќ    	     a Health0џџџє   \#џџџј  џџџќ           џџџ№      J џџџќ    Z Healthџџџє   \#џџџј  џџџќ           џџџ№      J џџџќџџџќ         '     Alarm01  Ш      џџџќ   D    M12AB_END_SYNC C d џџџј  џџџќ   џџџє  џџџќџџџј џџџј      8  аџџџє  e \џџџј $џџџє џџџќ џџџМ     Alarm01  Ш             Health00     J,           G         	Invisible  Ш  е      Л  Д      и        ,           5          е      Л  Д      и  @                 ?  @@   а ў  K_HK47_SIMULATION B        Qџџџџџџџџ  A    ,               4  @        'џџџџ     k_ren_turret   џџџј      void main() {
	SWMG_PlayAnimation(SWMG_GetPlayer(), "hit", 0, 0, 0);
	if ((GetGlobalBoolean("M12AB_END_SYNC") == 0)) {
		if ((SWMG_GetHitPoints(OBJECT_SELF) >= 2000)) {
			SWMG_OnDamage();
			int int3 = ((((SWMG_GetHitPoints(OBJECT_SELF) - 2000) * 12) / 1000) + 1);
			if ((int3 <= 9)) {
				string string1 = ("Health0" + IntToString(int3));
				SWMG_PlayAnimation(OBJECT_SELF, string1, 1, 0, 0);
			}
			else {
				string string3 = ("Health" + IntToString(int3));
				SWMG_PlayAnimation(OBJECT_SELF, string3, 1, 0, 0);
			}
			if ((int3 == 3)) {
				SoundObjectPlay(GetObjectByTag("Alarm01", 0));
			}
		}
		else {
			SetGlobalBoolean("M12AB_END_SYNC", 1);
			int int5;
			int int6 = SWMG_GetEnemyCount();
			int5 = 1;
			while ((int5 <= int6)) {
				SWMG_SetFollowerHitPoints(SWMG_GetEnemy(int5), 2000);
				(int5++);
			}
			SoundObjectStop(GetObjectByTag("Alarm01", 0));
			SWMG_PlayAnimation(OBJECT_SELF, "Health00", 1, 0, 0);
			DelayCommand(0.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(GetObjectByTag("Invisible", 0)), 0.0));
			DelayCommand(2.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(OBJECT_SELF), 0.0));
			SetGlobalFadeOut(3.0, 1.0, 0.0, 0.0, 0.0);
			DisableVideoEffect();
			if ((GetGlobalBoolean("K_HK47_SIMULATION") != 1)) {
				BarkString(OBJECT_INVALID, 38465);
				DelayCommand(4.0, EndGame(1));
			}
			else {
				ExecuteScript("k_ren_turret", OBJECT_SELF, 0xFFFFFFFF);
			}
		}
	}
}

NCS V1.0B  ќ       V            SithLoop02d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop02d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B  ќ       V            SithLoop03d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop03d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B  ќ       V            SithLoop04d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop04d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B  ќ       V            SithLoop05d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop05d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B  ќ       V            SithLoop06d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop06d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B  ќ       V            SithLoop07d c  J ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters Eџџџќ          s    ebo_turret_done C?         
Last Death    7,               a  @          џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	SWMG_OnDeath();
	SWMG_PlayAnimation(SWMG_GetPlayer(), "SithLoop07d", 1, 0, 1);
	int int1 = (GetGlobalNumber("ebo_num_fighters") - 1);
	SetGlobalNumber("ebo_num_fighters", int1);
	if ((int1 <= 0)) {
		SetGlobalBoolean("ebo_turret_done", 1);
		sub1("Last Death", 5, 13, 1.0);
		DelayCommand(2.0, sub2());
	}
}

NCS V1.0B   o       ebo_num_fighters D    џџџј  џџџќџџџќ  ebo_num_fighters E џџџќ  void main() {
	int int1 = (GetGlobalNumber("ebo_num_fighters") + 1);
	SetGlobalNumber("ebo_num_fighters", int1);
}

NCS V1.0B  ј       ebo_turret_done Bџџџј  џџџќ?         	Heartbeat Fџџџќ     ­Bp         DelayCommand    ,               З  ?     ў     џџџј  џџџќ     ebo_num_fighters E     ebo_turret_done C     џџџќ   љ "    1џџџ№ џџџ№ џџџ№ џџџ№  F     џџџ№    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP Dџџџј  џџџќ K_KOTOR_MASTER Dџџџј  џџџќ K_HK47_SIMULATION Bџџџј  џџџќ K_RANDOM_MINI_GAME Bџџџј  џџџќ Firing Play Post Turret џџџє   \#   Дџџџј         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa §   іџџџќ              K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa § K_FUTURE_PLANET D K_CURRENT_PLANET E   Sџџџ№      џџџќ     џџџ№    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa §    Еџџџ№    ( џџџќ     џџџ№          =           11b   	ebo_m40ad §    Hџџџ№    2 џџџќ     џџџ№    (         љ     џџџ№   &RENDER/STUNT Debug ****************** џџџј #   џџџќ  @     
   
 &RENDER/STUNT Debug ****************** џџџь # F џџџќ   K_FUTURE_PLANET Dџџџј  џџџќџџџќ         / 05_2aџџџє  џџџј   њ џџџќ   Цџџџќ         / 05_4aџџџє  џџџј   Л џџџќ   џџџќ         / 05_5aџџџє  џџџј   | џџџќ   Hџџџќ         / 05_7aџџџє  џџџј   = џџџќ   	џџџќ    #     / 05_3aџџџє  џџџј   ў џџџќ   Ъџџџќ    (     . NULLџџџє  џџџј   Р џџџќ   џџџќ    7     1 LIVE_1aџџџє  џџџј    џџџќ   Kџџџќ    <     1 LIVE_2aџџџє  џџџј   > џџџќ   
џџџќ    A     1 LIVE_3aџџџє  џџџј    § џџџќ    Щџџџќ    F     1 LIVE_4aџџџє  џџџј    М џџџќ    џџџќ    K     1 LIVE_5aџџџє  џџџј    { џџџќ    Gџџџќ    P     1 LIVE_6aџџџє  џџџј    : џџџќ     NULLџџџє  џџџј     џџџќ џџџќ             07_2   STUNT_35 §  // Prototypes
void sub6();
string sub5();
void sub4(string stringParam1);
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub6() {
	StartNewModule("STUNT_35", "", "07_2", "", "", "", "", "");
}

string sub5() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 55)) {
								return "LIVE_1a";
							}
							else {
								if ((nGlobal == 60)) {
									return "LIVE_2a";
								}
								else {
									if ((nGlobal == 65)) {
										return "LIVE_3a";
									}
									else {
										if ((nGlobal == 70)) {
											return "LIVE_4a";
										}
										else {
											if ((nGlobal == 75)) {
												return "LIVE_5a";
											}
											else {
												if ((nGlobal == 80)) {
													return "LIVE_6a";
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

void sub4(string stringParam1) {
	AurPostString(("RENDER/STUNT Debug ****************** " + stringParam1), 10, 10, 4.0);
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	sub3(" Start: ST_PlayPostTurret()");
	SetGlobalNumber("K_TURRET_SKYBOX", (-1));
	int nGlobal = GetGlobalNumber("K_STAR_MAP");
	int int3 = GetGlobalNumber("K_KOTOR_MASTER");
	int int5 = GetGlobalBoolean("K_HK47_SIMULATION");
	int int7 = GetGlobalBoolean("K_RANDOM_MINI_GAME");
	sub4(("Firing Play Post Turret " + IntToString(int5)));
	if ((int5 == 1)) {
		SetGlobalBoolean("K_HK47_SIMULATION", 0);
		StartNewModule("ebo_m12aa", "K_MINI_GAME", "", "", "", "", "", "");
	}
	else {
		if ((int7 == 1)) {
			SetGlobalBoolean("K_RANDOM_MINI_GAME", 0);
			StartNewModule("ebo_m12aa", "", "11b", sub5(), "", "", "", "");
			SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
		}
		else {
			if (((nGlobal == 0) && (int3 == 10))) {
				SetGlobalBoolean("K_SPACE_SKYBOX_ON", 1);
				StartNewModule("ebo_m12aa", "K_TARIS_DESTROYED", "11b", "", "", "", "", "");
			}
			else {
				if (((nGlobal == 40) && (int3 == 20))) {
					StartNewModule("ebo_m40ad", "", "11b", "", "", "", "", "");
				}
				else {
					if (((nGlobal == 50) && (int3 == 40))) {
						sub6();
					}
				}
			}
		}
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1 = GetGlobalBoolean("ebo_turret_done");
	AurPostString("Heartbeat", 5, 11, 1.0);
	if (int1) {
		sub1("DelayCommand", 5, 12, 60.0);
		DelayCommand(1.0, sub2());
		DisableVideoEffect();
		int1 = 0;
		SetGlobalNumber("ebo_num_fighters", 0);
		SetGlobalBoolean("ebo_turret_done", 0);
	}
}

NCS V1.0B             ebo_num_fighters E     ebo_turret_done C     M12AB_END_SYNC C     M12AB_START_SYNC E                  зџџџј  џџџќџџџќ  K_LAST_LOCATION Е K_HK47_SIMULATION B            ќ     џџџќ  void main() {
	SetGlobalNumber("ebo_num_fighters", 0);
	SetGlobalBoolean("ebo_turret_done", 0);
	SetGlobalBoolean("M12AB_END_SYNC", 0);
	SetGlobalNumber("M12AB_START_SYNC", 0);
	location location1 = Location([0.0,0.0,0.0], 0.0);
	SetGlobalLocation("K_LAST_LOCATION", location1);
	if ((GetGlobalBoolean("K_HK47_SIMULATION") == 1)) {
		EnableVideoEffect(1);
	}
}

ARE V3.28   7   Ь  Щ  8  Ћ   ш"  Ы  Г'  $  з.  Д   џџџџ    K       ,         X         l         Ј         И         ,         <         X         h                  И         Р         Ш         а         и         р         ш                            (         \         |                  Ш         а         и                  ,         H         x                           М         м         ј         (         0         8         l                  Ј         и         р         ш                  <         X                                    Ь         ь                                                  3   
                   
                                         	          
                                                                                                                          ЭЬL>                                                                                      >         >   !     >   "     >   #          $           %          &     ЦB   '     ШB   (           )          *          +           ,          -     ЦB   .     ШB   /           0          1           2           3           4   Э       5          6          7          8          9          :           ;          <           =           >           ?           @           A          B          C          D          E          F          G          H          I          J          K          L          M          N          O          P      
   Q         R   	      S     ?   T           U          V   +      W   6      X   7      Y   8      Z         [         \   ЭЬЬ=   ]    @F   ^     B   _          `           a          b         c     ШB   d     D   e   9      f         g         h          i           j          k         l   
з#<   m          n   H       o         p         q          r   U      s   `      t         u         v     @@   w   n      x   >   y   {      z     C   {         q         r         s         t   	      u         v     @@   w   Ё      x   >   y   Џ      z     C   {         |   И     }          ~   И                            џџџџ      
         М      X   Н         Ь         й         к         л         м         н         о         п         р         с         т                  у         ф            B        р@                                                 Р      х         ё            @        4B                           <Ц        <F   Ё         Ђ   §       Ѓ         Ђ         Ѓ         Ђ         Ѓ          Ђ   "      Ѓ         Ђ   ,      Ѓ         Є   0         6        џџџџ         A   }          |   d      ~   d      m                      B        P     Ё   L      Ђ   ^      Ѓ                     n     X   |        }        ~                                                                              Ѕ          p   T      q          r        s   Ё     t         u         v      @   w   Џ     x     ?   y   П     z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B      Ь        џџџџ         A   }          |   d      ~   d      m                      и        ц     Ё   \      Ђ   є      Ѓ                          X                           %        &        '        (        )        *        +        ,        -      Ѕ          p   d      q          r   .     s   7     t         u         v      @   w   E     x     ?   y   U     z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B      b        џџџџ         A   }          |   d      ~   d      m                      n        |     Ё   l      Ђ         Ѓ                           X   Ј        Љ        Њ        Л        М        Н        О        П        Р        С        Т        У      Ѕ          p   t      q          r   Ф     s   Э     t   "      u         v      @   w   л     x     ?   y   ы     z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B      ј        џџџџ         A   }          |   d      ~   d      m             $                      Ё   |      Ђ          Ѓ            &         0     X   >        ?        @        Q        R        S        T        U        V        W        X        Y      Ѕ          p         q          r   Z     s   c     t   (      u         v      @   w   q     x     ?   y        z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B              џџџџ         A   }          |   d      ~   d      m             *                 Ј     Ё         Ђ   Ж      Ѓ            ,         Ц     X   д        е        ж        ч        ш        щ        ъ        ы        ь        э        ю        я      Ѕ          p         q          r   №     s   љ     t   .      u         v      @   w        x     ?   y        z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B      $        џџџџ         A   }          |   d      ~   d      m             0         0        >     Ё         Ђ   L      Ѓ            2         \     X   j        k        l        }        ~                                                              Ѕ          p   Є      q          r        s        t   4      u         v      @   w        x     ?   y   ­     z     HC   {         І   
з#<   Ї     ШB   Ј     B   Љ     B   Њ   Ќ         К        6         Ц        Ч     X   Ш        Щ        Ъ  ID              Creator_ID      Version         Tag             Name            Comments        Map             MapResX         NorthAxis       WorldPt1X       WorldPt1Y       WorldPt2X       WorldPt2Y       MapPt1X         MapPt1Y         MapPt2X         MapPt2Y         MapZoom         Expansion_List  Flags           ModSpotCheck    ModListenCheck  AlphaTest       CameraStyle     DefaultEnvMap   Grass_TexName   Grass_Density   Grass_QuadSize  Grass_Ambient   Grass_Diffuse   Grass_Emissive  Grass_Prob_LL   Grass_Prob_LR   Grass_Prob_UL   Grass_Prob_UR   MoonAmbientColorMoonDiffuseColorMoonFogOn       MoonFogNear     MoonFogFar      MoonFogColor    MoonShadows     SunAmbientColor SunDiffuseColor SunFogOn        SunFogNear      SunFogFar       SunFogColor     SunShadows      DynAmbientColor IsNight         LightingScheme  ShadowOpacity   DayNightCycle   ChanceRain      ChanceSnow      ChanceLightning WindPower       LoadScreenID    PlayerVsPlayer  NoRest          NoHangBack      PlayerOnly      Unescapable     DisableTransit  StealthXPEnabledStealthXPLoss   StealthXPMax    DirtyARGBOne    DirtySizeOne    DirtyFormulaOne DirtyFuncOne    DirtyARGBTwo    DirtySizeTwo    DirtyFormulaTwo DirtyFuncTwo    DirtyARGBThree  DirtySizeThree  DirtyFormulaThreDirtyFuncThree  Rooms           RoomName        EnvAudio        AmbientScale    ForceRating     DisableWeather  OnEnter         OnExit          OnHeartbeat     OnUserDefined   MiniGame        Type            Near_Clip       Far_Clip        CameraViewAngle Bump_Plane      UseInertia      DoBumping       DOF             MovementPerSec  LateralAccel    Music           Mouse           AxisX           AxisY           FlipAxisX       FlipAxisY       Player          Accel_Secs      Bump_Damage     Camera          CameraRotate    Gun_Banks       BankID          Gun_Model       Fire_Sound      Bullet          Damage          Lifespan        Bullet_Model    Rate_Of_Fire    Collision_Sound Speed           Target_Type     Hit_Points      Invince_Period  Max_HPs         Maximum_Speed   Minimum_Speed   Num_Loops       Scripts         OnCreate        OnDamage        OnDeath         OnFire          OnHitBullet     OnHitFollower   OnHitObstacle   OnTrackLoop     OnAnimEvent     OnAccelerate    OnBrake         OnHitWorld      Sounds          Death           Engine          Sphere_Radius   Start_Offset_X  Start_Offset_Y  Start_Offset_Z  Target_Offset_X Target_Offset_Y Target_Offset_Z Track           TunnelInfinite  TunnelXNeg      TunnelXPos      TunnelYNeg      TunnelYPos      TunnelZNeg      TunnelZPos      Models          Model           RotatingModel   Enemies         Trigger         Inaccuracy      Sensing_Radius  Horiz_Spread    Vert_Spread     Obstacles          Untitled   L           	   m12ab_01a
a_roomanim   mus_bat_sithbsm12ab_camera
mgg_turretmgs_ebon_firemgb_ebonleftmgs_sith_hit
mgg_turretmgs_ebon_firemgb_ebonrightmgs_sith_hit k_421_eboheartk_421_ebohit            m12ab_mgt01          ?
mgf_turretmgf_turretwkmgf_ebonhawk	mgf_hud01	mgf_hud02m12ab_mgt02mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead2         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgt03mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead3         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgt04mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead4         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgt05mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead5         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgt06mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead6         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgt07mgs_sith_explmgs_engine_01mgf_sithfighterk_421_enemygo  k_421_enemydead7         mgg_nullmgs_sith_firemgb_sithfightermgs_sith_hitm12ab_mgo01                                                                         !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   V   W   X   Y   Z         	   
                        Q   R   S   T   U   [   \   ]   ^   _   `   a   b   c   d   e   f   k   И   С  g   h   i   j   l   m   n   o   p                                     Ё   Ђ   Ѓ   Є   Ѕ   І   Ї   Ј   Љ   Њ   Ћ   Ќ   ­   q   r   s   t   u   v   w   x   y   z   {   |   }   ~                                                                        Ў   Џ   А   Б   В   Г   Д   Е   Ж   З   Й   К   Л   М   Н   О   П   Р   У   Ц   д   е   С   Т   Ф   Х   Ч   Ш   Щ   Ъ   Ы   Ь   Э   Ю   Я   а   б   в   г   ж   з   и   й   с   т   у   ф   к   л   м   н   о   п   р   х   ц   ч   ш   щ   ъ   ы   ь   я   ђ        э   ю   №   ё   ѓ   є   ѕ   і   ї   ј   љ   њ   ћ   ќ   §   ў   џ                         	  
                          ,  -               !  "  #  $  %  &  '  (  )  *  +  .  /  0  1  9  :  ;  <  2  3  4  5  6  7  8  =  >  ?  @  A  B  C  D  G  J  X  Y  E  F  H  I  K  L  M  N  O  P  Q  R  S  T  U  V  W  Z  [  \  ]  e  f  g  h  ^  _  `  a  b  c  d  i  j  k  l  m  n  o  p  s  v      q  r  t  u  w  x  y  z  {  |  }  ~                                                            Ђ  А  Б         Ё  Ѓ  Є  Ѕ  І  Ї  Ј  Љ  Њ  Ћ  Ќ  ­  Ў  Џ  В  Г  Д  Е  Н  О  П  Р  Ж  З  И  Й  К  Л  М  Т  У  Ф  Х  Ц  Ч  Ш                                                   #   )   /                                    !      %      '      +      -      1      3      5   GIT V3.28      Ш   G        М     H    d  P   џџџџ       d   0   	   	   T      	   h      	   |      	         	   Є      	   И      	   Ь      	   р      	   є      	                        *         *                                     0         0         0      	          
                                                                                                $                    §?      1л@       >eЛ                        @UК@      т{@      @Ј(М                         јІП      <I@       
;               *          LЗ?      фП       ї%Л               8         Ее@      РcО       _AМ               F         m@      P-П      зЛ               T          ИЋО       =        :               b          мМП      еД@       *;               p          т@      сxт@       mћЛ               ~         |т@      Оп@      яLМ         AreaProperties  AmbientSndDay   AmbientSndNight AmbientSndDayVolAmbientSndNitVolEnvAudio        MusicBattle     MusicDay        MusicNight      MusicDelay      CameraList      Creature List   Door List       Encounter List  List            SoundList       StoreList       TriggerList     UseTemplates    WaypointList    Placeable List  TemplateResRef  X               Y               Z               Bearing         plc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisible    
                                                         	                                        !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F                                       
                        	   
      PTH V3.28      D      \      |       |            џџџџ                           Path_Points     Path_Conections                IFO V3.28      P   ,   `  ,         Ў  Ќ   Z     џџџџ    +      +                                   
                            
      $   
      H         L       	          
   X         eЊA      eЊЮ@      }Ўю?                  ?                                                                            \         
         ^         m         {         |         }         ~                         !         "         #         $         %         &         '         (         )         *         +      Mod_ID          Mod_Creator_ID  Mod_Version     Mod_VO_ID       Expansion_Pack  Mod_Name        Mod_Tag         Mod_Hak         Mod_Description Mod_IsSaveGame  Mod_Entry_Area  Mod_Entry_X     Mod_Entry_Y     Mod_Entry_Z     Mod_Entry_Dir_X Mod_Entry_Dir_Y Mod_Expan_List  Mod_DawnHour    Mod_DuskHour    Mod_MinPerHour  Mod_StartMonth  Mod_StartDay    Mod_StartHour   Mod_StartYear   Mod_XPScale     Mod_OnHeartbeat Mod_OnModLoad   Mod_OnModStart  Mod_OnClientEntrMod_OnClientLeavMod_OnActvtItem Mod_OnAcquirItemMod_OnUsrDefinedMod_OnUnAqreItemMod_OnPlrDeath  Mod_OnPlrDying  Mod_OnPlrLvlUp  Mod_OnSpawnBtnDnMod_OnPlrRest   Mod_StartMovie  Mod_CutSceneListMod_GVar_List   Mod_Area_list   Area_Name          uцwgqђЖ6ЙФ       Б^         ImTraskUlgoensignwiththeRepublic       џџџџ    m12abk_421_modheartk_421_modload             m12ab                            	   
                                                                      !   "   #   $   %   &   '   (   )   *                     