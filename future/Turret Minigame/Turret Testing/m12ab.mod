MOD V1.0           �   �   @  x   �                                                                                                                           custom002           �  k_heartbeat        �  k_pebo_hawkhit     �  k_pebo_hawkhit     �  k_pebo_mgheart     �  k_pebo_mgheart     �  k_pebo_mgload      �  k_pebo_mgload      �  k_pebo_skybox      �  k_pebo_skybox   	   �  k_pebo_sthcreate
   �  k_pebo_sthcreate   �  k_pebo_sthdeath2   �  k_pebo_sthdeath2   �  k_pebo_sthdeath3   �  k_pebo_sthdeath3   �  k_pebo_sthdeath4   �  k_pebo_sthdeath4   �  k_pebo_sthdeath5   �  k_pebo_sthdeath5   �  k_pebo_sthdeath6   �  k_pebo_sthdeath6   �  k_pebo_sthdeath7   �  k_pebo_sthdeath7   �  m12ab              �  m12ab              �  m12ab              �  module             �     �  �  l  O  �  $  �  �  �  �  �  �+    �,  v  J.  %  o0  �  3  o   �3  y   4  �  �<    J  �  �R    `  �   i    v  �      �  �  �    �  �  �    �  �+  ��  ^  �  �   ��  y  UTS V3.28      P      �     (  /   W  d   �     ����                 
                                                                                                 	     �?   
      A        �?                                                                                                                     !              
      +   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            Alarm01   .�      	custom002	mgs_alarm                                	   
                                                   NCS V1.0B  l       � !     �����  ��������   �C�  !����  ��������   �����  �������� ����   �!C�  !  �����  ��������          *  h����  ����  ����    ����   \����  ����  ����  ��������   ;        1 	HudRot_00���� #����  ����    ����   ;        0 HudRot_0���� #����  ����    ����   ;        / HudRot_���� #����  ����               ����  c  J     e o����  ���� K_LAST_LOCATION �                  �2   � M12AB_START_SYNC D       '           
SithLoop02 c  J           
SithLoop03 c  J           
SithLoop04 c  J           
SithLoop05 c  J           
SithLoop06 c  J           
SithLoop07 c  J    M12AB_START_SYNC E     M12AB_START_SYNC D         `����  K_LAST_LOCATION �  �$     +    M12AB_START_SYNC E                ����   � K_LAST_LOCATION � ����  NCS V1.0B  �       M12AB_END_SYNC B        �     h  �    N ]      h  �       �     ����  ��������    	     a Health0����   \#����  ����           ����      J ����    Z Health����   \#����  ����           ����      J ��������         '     Alarm01  � �     ����   8    M12AB_END_SYNC C d ����  ����   ����  �������� ����      8  �����  e \���� $���� ���� ����     Alarm01  � �            Health00     J,           G         	Invisible  �  �      �  �      �        ,           5          �      �  �      �  @                 ?�  @@   � �  K_HK47_SIMULATION B        E  �A    �,               4  @�        '����     k_ren_turret   ����      void main() {
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

NCS V1.0B  �       ebo_turret_done B����  ����?�         	Heartbeat F����     �Bp         DelayCommand    �,               �  ?�     �     ����  ����     ebo_num_fighters E     ebo_turret_done C     ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B             ebo_num_fighters E     ebo_turret_done C     M12AB_END_SYNC C     M12AB_START_SYNC E                  �����  ��������  K_LAST_LOCATION � K_HK47_SIMULATION B            �     ����  void main() {
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

NCS V1.0B  %       K_TURRET_SKYBOX D����  ��������         A,                	m12ab_01a �  >L��     �����    
     o,                	m12ab_01a �  >L��  ,             ��    �  ?�       ����         o,                	m12ab_01a �  >L��  ,             ��    �  ?�        �,                	m12ab_01a �  >L��   K_HK47_SIMULATION B        :,             ��    �  ?�         ����  void main() {
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

NCS V1.0B   o       ebo_num_fighters D    ����  ��������  ebo_num_fighters E ����  void main() {
	int int1 = (GetGlobalNumber("ebo_num_fighters") + 1);
	SetGlobalNumber("ebo_num_fighters", int1);
}

NCS V1.0B  �       V            SithLoop02d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B  �       V            SithLoop03d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B  �       V            SithLoop04d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B  �       V            SithLoop05d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B  �       V            SithLoop06d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

NCS V1.0B  �       V            SithLoop07d c  J ebo_num_fighters D    ����  ��������  ebo_num_fighters E����          s    ebo_turret_done C?�         
Last Death    7,               a  @          ����   � "    1���� ���� ���� ����  F     ����    Start: ST_PlayPostTurret()   c    K_TURRET_SKYBOX E 
K_STAR_MAP D����  ���� K_KOTOR_MASTER D����  ���� K_HK47_SIMULATION B����  ���� K_RANDOM_MINI_GAME B����  ���� Firing Play Post Turret ����   \#   �����         e     K_HK47_SIMULATION C             K_MINI_GAME 	ebo_m12aa �   �����         �     K_RANDOM_MINI_GAME C           C 11b   	ebo_m12aa � K_FUTURE_PLANET D K_CURRENT_PLANET E   S����      ����     ����    
      n    K_SPACE_SKYBOX_ON C           11b K_TARIS_DESTROYED 	ebo_m12aa �    �����    ( ����     ����          =           11b   	ebo_m40ad �    H����    2 ����     ����    (         �     ����   &RENDER/STUNT Debug ****************** ���� #   ����  @�     
   
 &RENDER/STUNT Debug ****************** ���� # F ����   K_FUTURE_PLANET D����  ��������         / 05_2a����  ����   � ����   �����         / 05_4a����  ����   � ����   �����         / 05_5a����  ����   | ����   H����         / 05_7a����  ����   = ����   	����    #     / 05_3a����  ����   � ����   �����    (     . NULL����  ����   � ����   �����    7     1 LIVE_1a����  ����    ����   K����    <     1 LIVE_2a����  ����   > ����   
����    A     1 LIVE_3a����  ����    � ����    �����    F     1 LIVE_4a����  ����    � ����    �����    K     1 LIVE_5a����  ����    { ����    G����    P     1 LIVE_6a����  ����    : ����     NULL����  ����     ���� ����             07_2   STUNT_35 �  // Prototypes
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

ARE V3.28   7   �  �  |  �   �  m  i$  �  �*  �   ����    =       �                    ,         h         x         �         �         �                                      
       D         T         p         �         �         �         �         �  
                $         @         p         x         �  
       �         �         �                           $  
       L         l         �         �         �         �  
       �                  ,         \         d         l  
       �         �         �                              
       8         X         t         |                                1   
                   
                                         	          
                                                                                                                                                                                                         �>        �>         �>   !     �>   "          #           $          %     �B   &     �B   '           (          )          *           +          ,     �B   -     zD   .           /          0           1           2           3   2       4          5          6          7          8          9           :           ;           <           =           >           ?          @          A          B      
   C         D          E     �?   F   *      G   8      H   9      I   :      J         K         L   ���=   M     �D   N     �B   O          P           Q          R         S     �B   T     �D   U   ;      V         W         X          Y           Z          [         \   J      ]   ����   ^      B   _          `   �     a   �     b          c         d   V      e   W      f         g   X       h         g   c       h         g   p       h          g   }       h         g   �       h         i         j   �      H   �      k   �      l   �      m   �      n   �      o   �      p   �      q   �      r   �      s   �       t         u          v          w   
�#<   x     �@   y          z          {   �      |     4B   }          ~    <F         @   �          �    <�   �          �          �     ��   �   $      �          �   �      �   �      �         �         �     @@   �   �      �   ���>   �   �      �     �C   �         �         �         �        �         �         �     @@   �        �   ���>   �        �     �C   �         �   0      \   &     ]   ����   ^     �A   _          `   d      a   d      b          c         d   2     e   @     f   L      g   A      h         i         j   Q     H   b     k   c     l   d     m   u     n   v     o   w     p   x     q   y     r   z      �          �   T      �          �   {     �   �     �         �   
      �      @   �   �     �   ���>   �   �     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   \   �     ]   ����   ^     �A   _          `   d      a   d      b          c         d   �     e   �     f   \      g   �      h         i         j   �     H   �     k   �     l   �     m   �     n   �     o         p        q        r         �          �   d      �          �        �        �         �   
      �      @   �        �   ���>   �   +     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   \   8     ]   ����   ^     �A   _          `   d      a   d      b          c         d   D     e   R     f   l      g   S      h         i          j   c     H   t     k   u     l   v     m   �     n   �     o   �     p   �     q   �     r   �      �          �   t      �          �   �     �   �     �   "      �   
      �      @   �   �     �   ���>   �   �     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   \   �     ]   ����   ^     �A   _          `   d      a   d      b          c   $      d   �     e   �     f   |      g   �      h         i   &      j   �     H   �     k   �     l   �     m        n        o        p        q        r         �          �   �      �          �        �        �   (      �   
      �      @   �   -     �   ���>   �   =     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   \   J     ]   ����   ^     �A   _          `   d      a   d      b          c   *      d   V     e   d     f   �      g   e      h         i   ,      j   u     H   �     k   �     l   �     m   �     n   �     o   �     p   �     q   �     r   �      �          �   �      �          �   �     �   �     �   .      �   
      �      @   �   �     �   ���>   �   �     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   \   �     ]   ����   ^     �A   _          `   d      a   d      b          c   0      d   �     e   �     f   �      g   �      h         i   2      j   �     H        k        l        m   "     n   #     o   $     p   %     q   &     r   '      �          �   �      �          �   (     �   1     �   4      �   
      �      @   �   ?     �   ���>   �   O     �     HC   �         �   
�#<   �     HC   �     �B   �     �B   �   �         \     i   6      r   h     j   i     H   j     o   k     n   l  ID              Creator_ID      Version         Tag             Name            Comments        Map             MapResX         NorthAxis       WorldPt1X       WorldPt1Y       WorldPt2X       WorldPt2Y       MapPt1X         MapPt1Y         MapPt2X         MapPt2Y         MapZoom         Expansion_List  Flags           ModSpotCheck    ModListenCheck  AlphaTest       CameraStyle     DefaultEnvMap   Grass_TexName   Grass_Density   Grass_QuadSize  Grass_Ambient   Grass_Diffuse   Grass_Prob_LL   Grass_Prob_LR   Grass_Prob_UL   Grass_Prob_UR   MoonAmbientColorMoonDiffuseColorMoonFogOn       MoonFogNear     MoonFogFar      MoonFogColor    MoonShadows     SunAmbientColor SunDiffuseColor SunFogOn        SunFogNear      SunFogFar       SunFogColor     SunShadows      DynAmbientColor IsNight         LightingScheme  ShadowOpacity   DayNightCycle   ChanceRain      ChanceSnow      ChanceLightning WindPower       LoadScreenID    PlayerVsPlayer  NoRest          NoHangBack      PlayerOnly      Unescapable     StealthXPEnabledStealthXPLoss   StealthXPMax    Rooms           RoomName        EnvAudio        AmbientScale    OnEnter         OnExit          OnHeartbeat     OnUserDefined   MiniGame        Type            Near_Clip       Far_Clip        CameraViewAngle Bump_Plane      UseInertia      DoBumping       DOF             MovementPerSec  LateralAccel    Music           Mouse           AxisX           AxisY           FlipAxisX       FlipAxisY       Player          Track           Num_Loops       Sphere_Radius   Invince_Period  Hit_Points      Max_HPs         Bump_Damage     Sounds          Death           Engine          Models          Model           RotatingModel   Scripts         OnCreate        OnDamage        OnDeath         OnFire          OnHitBullet     OnHitFollower   OnHitObstacle   OnTrackLoop     OnAnimEvent     Camera          CameraRotate    Minimum_Speed   Maximum_Speed   Accel_Secs      Start_Offset_X  Start_Offset_Y  Start_Offset_Z  TunnelInfinite  TunnelXPos      TunnelYPos      TunnelZPos      TunnelXNeg      TunnelYNeg      TunnelZNeg      Target_Offset_X Target_Offset_Y Target_Offset_Z Gun_Banks       BankID          Gun_Model       Fire_Sound      Bullet          Damage          Lifespan        Bullet_Model    Rate_Of_Fire    Collision_Sound Speed           Target_Type     Enemies         Trigger         Inaccuracy      Sensing_Radius  Horiz_Spread    Vert_Spread     Obstacles          Area001   |�            	   m12ab_01ak_pebo_skybox   mus_bat_sithbsm12ab_mgt01  
mgf_turretmgf_turretwkmgf_ebonhawk	mgf_hud01	mgf_hud02 k_heartbeatk_pebo_hawkhit       m12ab_camera          �?
mgg_turretmgs_ebon_firemgb_ebonleftmgs_sith_hit
mgg_turret mgb_ebonleftmgs_sith_hitm12ab_mgt02mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath2      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgt03mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath3      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgt04mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath4      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgt05mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath5      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgt06mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath6      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgt07mgs_sith_expl mgf_sithfighterk_pebo_sthcreate  k_pebo_sthdeath7      mgg_nullmgs_sith_firemgb_sithfightermgs_ebon_hitm12ab_mgo01                                                                         !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   F   G   H   I   J         	   
                        C   D   E   K   L   M   N   O   P   Q   R   S   T   U   V   [   �   �  W   X   Y   Z   \   ]   ^   _   `   a   b   c   f   q   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   d   e   g   h   i   j   k   l   m   n   o   p   r   s   t   u   v   w   x   y   z   {   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                          	  
                                           !  "  #  $  %  &  '  (  +  .  9  :  )  *  ,  -  /  0  1  2  3  4  5  6  7  8  ;  <  =  >  F  G  H  I  ?  @  A  B  C  D  E  J  K  L  M  N  O  P  Q  T  W  b  c  R  S  U  V  X  Y  Z  [  \  ]  ^  _  `  a  d  e  f  g  o  p  q  r  h  i  j  k  l  m  n  s  t  u  v  w  x  y  z  }  �  �  �  {  |  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	   
                           #   )   /                                    !      %      '      +      -      1      3      5   GIT V3.28      �   L   d     D  �   �  0  
  T   ����       d   0   	      T      	   h      	   |      	   �      	   �      	   �      	   �      	   �      	   �      	        	                                                                                                   	          
                                                                               @o�@      &�A@      ��}?                                  $         
          �?      1�@       >e�         �               @U�@      �{�@      @�(�         �      &          ���      <I@       
;         �      4          L�?      ��       �%�         �      B         ���@      �c�       _A�         �      P         ��m@      P�-�      �׻         �      ^          ���       ��=        :         �      l          ܼ�      �մ@       �*;         �      z          �@      �x�@       m��         �      �         �|�@      ��@      ��L�         �      P   UseTemplates    AreaProperties  AmbientSndDay   AmbientSndNight AmbientSndDayVolAmbientSndNitVolEnvAudio        MusicBattle     MusicDay        MusicNight      MusicDelay      Creature List   Door List       Encounter List  List            SoundList       TemplateResRef  GeneratedType   XPosition       YPosition       ZPosition       StoreList       TriggerList     WaypointList    Placeable List  X               Y               Z               Bearing         CameraList      	custom002plc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisibleplc_invisible                                  K                        	   
                                           !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J                                     
                     	   
             PTH V3.28      D      \      |       |      �      ����                           Path_Points     Path_Conections                IFO V3.28      P   ,   `  ,      �   �  �   e     ����    +      +                                   
                            
      <   
      F         J       	          
   V           @@        @@                            �?                                                                                       
         \         k         y         z         �         �         �          �      !   �      "   �      #   �      $   �      %   �      &   �      '   �      (         )         *         +   �   Mod_ID          Mod_Creator_ID  Mod_Version     Mod_VO_ID       Expansion_Pack  Mod_Name        Mod_Tag         Mod_Hak         Mod_Description Mod_IsSaveGame  Mod_Entry_Area  Mod_Entry_X     Mod_Entry_Y     Mod_Entry_Z     Mod_Entry_Dir_X Mod_Entry_Dir_Y Mod_Expan_List  Mod_DawnHour    Mod_DuskHour    Mod_MinPerHour  Mod_StartMonth  Mod_StartDay    Mod_StartHour   Mod_StartYear   Mod_XPScale     Mod_OnHeartbeat Mod_OnModLoad   Mod_OnModStart  Mod_OnClientEntrMod_OnClientLeavMod_OnActvtItem Mod_OnAcquirItemMod_OnUsrDefinedMod_OnUnAqreItemMod_OnPlrDeath  Mod_OnPlrDying  Mod_OnPlrLvlUp  Mod_OnSpawnBtnDnMod_OnPlrRest   Mod_StartMovie  Mod_CutSceneListMod_GVar_List   Mod_Area_list   Area_Name          1111111111111111        ����          Ebon Hawk Turret   MODULE       ����    m12abk_pebo_mgheartk_pebo_mgload k_pebo_skybox           m12ab                            	   
                                                                      !   "   #   $   %   &   '   (   )   *                     