MOD V1.0        4   �   �   �  |   q                                                                                                                           computerbeeps       �  ebo40_carthtlk     �  electroniccon001   �  enginehum          �  k_con_joleejoin    �  k_con_joleejoin    �  k_con_juhanilive   �  k_con_juhanilive   �  k_ebo_hkavail      �  k_ebo_hkavail   	   �  k_ebo_zalavi    
   �  k_ebo_zalavi       �  k_pebn_pophawk     �  k_pebn_pophawk     �  k_pebo_40aa_en     �  k_pebo_40aa_en     �  k_pebo_carthtlk    �  k_pebo_carthtlk    �  k_pebo_jumplev2    �  k_pebo_jumplev2    �  k_plev_escplot1    �  k_plev_escplot1    �  k_plev_escplot2    �  k_plev_escplot2    �  k_plev_escplot3    �  k_plev_escplot3    �  k_plev_escplot4    �  k_plev_escplot4    �  k_plev_escplot5    �  k_plev_escplot5    �  k_plev_escplot6    �  k_plev_escplot6    �  k_plev_escsetup     �  k_plev_escsetup !   �  k_plev_fadein   "   �  k_plev_fadein   #   �  k_plev_fadeout  $   �  k_plev_fadeout  %   �  k_ptar_joleechk &   �  k_ptar_joleechk '   �  k_ptar_jumplev  (   �  k_ptar_jumplev  )   �  lev40_bastila001*   �  lev40_carth     +   �  lev40_carth001  ,   �  m12aa           -   �  m12aa           .   �  m12aa           /   �  metalstrain     0   �  module          1   �  radiochatter    2   �  sc16_converse   3   �     �  �  �  �  �  �  �  i  o   �  h   @  q   �  i     d   ~  ]   �  �   h  �   �  �  �8  �,  Ie  �  3r  �  ��  ;  �  m  _�  s   ҍ  s   E�  0   u�  8   ��  0   ݎ  8   �  0   E�  8   }�  0   ��  8   �  0   �  8   M�  0   }�  8   ��  �  ��  W  �  O   6�  �   ĥ  �   ��  �   y�  \   է  V   +�  �  �    �    �  �� ��   �� �  _� �  A� �   �� �  Q� �  �� H  .� �4  UTS V3.28      �            �  �   5  d   �     ����                                                                   
                                                                                              	     �?   
     pA        @@                          �a        �        �z�>                                     8                             +         <         M         ^         o         �             
      �   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            ComputerBeeps   ݙ      computerbeepsas_el_cnsbeep_01as_el_cnsbeep_02as_el_cnsbeep_03as_el_cnsbeep_04as_el_cnsbeep_05as_el_cnsbeep_06                                	   
                                                                  UTT V3.28      D      �     8  K   �  l   �      ����       
                          !                                            
      -                	          
                                                                                       1         2         3         4         5         E         F             
      G   Tag             TemplateResRef  LocalizedName   AutoRemoveKey   Faction         Cursor          HighlightHeight KeyName         LoadScreenID    PortraitId      Type            TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        OnDisarm        OnTrapTriggered OnClick         ScriptHeartbeat ScriptOnEnter   ScriptOnExit    ScriptUserDefinePaletteID       Comment            ebo40_carthtlkebo40_carthtlk   �&              k_pebo_carthtlk                                  	   
                                                   UTS V3.28      P      �     (  H   p  d   �     ����                 
                          "                                                                     	     �?   
      A        �?                                                                                       M                              3             
      D   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            ElectronicConsole2   ߙ      electroniccon001al_el_consolebed                                	   
                                                   UTS V3.28      P      �     (  5   ]  d   �     ����                 
                                                                                               	     �?   
     �A        �@                                                                                       _                              #             
      1   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment         	   EngineHum   �      	enginehumal_me_engnbay                                	   
                                                   NCS V1.0B   o       G_JoleeJoined B    ����  �������� ����  ����     ���� ����  int StartingConditional() {
	int int1 = (GetGlobalBoolean("G_JoleeJoined") == 1);
	return int1;
}

NCS V1.0B   q       Dan_Juhani_Plot D    ����  �������� ����  ����     ���� ����  int StartingConditional() {
	int int1 = (GetGlobalNumber("Dan_Juhani_Plot") != 2);
	return int1;
}

NCS V1.0B   d          �    ����  �������� ����  ����     ���� ����  int StartingConditional() {
	int int1 = (IsAvailableCreature(3) == 1);
	return int1;
}

NCS V1.0B   �          �����     ) tat_ZaalbarTaken B      ����  �������� ����  ����     ���� ����  int StartingConditional() {
	int int1 = (IsAvailableCreature(8) && (GetGlobalBoolean("tat_ZaalbarTaken") == 0));
	return int1;
}

NCS V1.0B  �        �         	� Run enter script   	�    ����  ����,              	�  ?        ,              l  >L��      K_AT_EBON_HAWK C     �����     , DAN_BASTILA_AT_JEDI B          �     bastila  �����  ���� pebn_bastila  �����  ��������   �����  ��������   *    e,           ����        �  ?     ,                �  @                 �    �     cand  �����  ���� pebn_canderous  �����  ��������   �����  ��������   *    e,           ����       �  ?     ,               �  @                 �����     * DAN_CARTH_AT_JEDI B          �     carth  �����  ���� 
pebn_carth  �����  ��������   �����  ��������   *    e,           ����       �  ?     ,               �  @                 �    �     hk47  �����  ���� 	pebn_hk47  �����  ��������   �����  ��������   *    e,           ����       �  ?     ,               �  @                 �    �     jolee  �����  ���� 
pebn_jolee  �����  ��������   �����  ��������   *    e,           ����         ?     ,               �  @                 �    �     juhani  �����  ���� pebn_juhani  �����  ��������   �����  ��������   *    _,           ����         ?     ,            �   ?�                �    �     mission  �����  ���� pebn_mission  �����  ��������   �����  ��������   *    e,           ����       5  ?     ,               �  @                 �    �     t3m4  �����  ���� 	pebn_t3m4  �����  ��������   �����  ��������   *    e,           ����       
P  ?     ,               �  @                 �����     ) tat_ZaalbarTaken B          �     zaalbar  �����  ���� pebn_zaalbar  �����  ��������   �����  ��������   *    e,           ����       	4  ?     ,               �  @             ,              	  ?�       �     K_SWG_BASTILA_LEVEL E     K_SWG_JOLEE_LEVEL E     K_SWG_CARTH_LEVEL E ����       � "    ����        ����   K_CURRENT_PLANET D����  ���� K_SPACE_SKYBOX_ON B        f Firing Anim 09 for Space   �   	 	m12aa_01q �     K_SPACE_SKYBOX_ON C   V����         J Firing Anim 02 for Dantooine   "    	m12aa_01q �   �����         I Firing Anim 01 for Kashyyyk   �    	m12aa_01q �   �����         G Firing Anim 06 for Manaan   r    	m12aa_01q �   L����         I Firing Anim 05 for Korriban       	m12aa_01q �   �����    #     I Firing Anim 04 for Tatooine   �    	m12aa_01q �   �����    (     J Firing Anim 08 for Leviathan   f    	m12aa_01q �   @����    -     N  Firing Anim 07 for Unknown World       	m12aa_01q �    �����    2     K Firing Anim 03 for Star Forge    �    	m12aa_01q �    �����    2     Y +Firing Anim 10 for all live content planets    D   
 	m12aa_01q �       	 	m12aa_01q � ����   &RENDER/STUNT Debug ****************** ���� #   ����  ����  ��������         L����  �    ����  ? ����    ���� $���� ���� ���� ����       bastila  �����  ��������   *    1                ����   �         cand  �����  ��������   *    1                ����   �         carth  �����  ��������   *    1                ����   �         hk47  �����  ��������   *    1                ����   �         jolee  �����  ��������   *    1                ����   �         juhani  �����  ��������   *    1                ����   �         mission  �����  ��������   *    1                ����   �         t3m4  �����  ��������   *    1                ����   �         zaalbar  �����  ��������   *    1                ����   �     ����  ���� ����  �����  ���� ���� ����       bastila  �����  ����     carth  �����  ����     cand  �����  ����     hk47  �����  ����     jolee  �����  ����     juhani  �����  ����     mission  �����  ����     t3m4  �����  ����     zaalbar  �����  ����   ����  ��������    	    	����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����    	     "���� ����  ����    ����   *    ����     9    ���� $���� ���� ���� $      ����      ����   �  N      �    ����   � u      � ����      ����  ��������  gizka  �  *    �,           ;                ����  gizka  �  �  >L��  ���� $���� ����?�         Destroy Gizka ����   \#    ���B    ����  ���� EBO_GIZKA_PLOT D       � GizkaMultiplier D     GizkaMultiplier E GizkaMultiplier D        ����  ��������             ����  ����    ���� ����     #?�         Spawn Gizka ����   \#   ����� $���� ��������    
     M     	wp_Gizka_ 0#����   \#  �  �����  ����    @     	wp_Gizka_����   \#  �  �����  ����    ����  
g_gizka016     � ���� ���� ����    ,           9                     Sasha  �  �  >L��  ,           ;                     LurArka  �  �  >L��   Ebo_Sasha_State D   ( ����     ( Ebo_Sasha_State D   c      \,           ;     
SashaSpawn  �  � Sasha      �  ?          EBO_LURARKA D        �,           =     
SashaSpawn  �  � LurArka      y  ?     ,           �,           X    ��������                               $   �       LurArka  �    ?��       EBO_MYSTERY_BOX D����  ����     EBO_MysteryBox  �����  ��������     ����     ����   *"     � EBO_MYSTERY_SPAWN  �����  ��������   �����  ����,           .����  g_pebn_mystery   @    �  ?      ����    d����    c ����     ����   *     1                ����   �     ����   � "    1���� ���� ���� ����  F     ����      ���� ���� ����   �����  ���� ���� ����  // Globals
/*
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;
*/
// Prototypes
void sub11(int intParam1, string stringParam2, location locationParam3);
void sub10(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub9();
void sub8(object objectParam1);
void sub7();
void sub6(int intParam1, location locationParam2);
void sub5();
void sub4();
void sub3(string stringParam1);
void sub2();
void sub1(string stringParam1);

void sub11(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub10(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub9() {
	int int1 = 0;
	while (GetIsObjectValid(GetObjectByTag("gizka", int1))) {
		DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", int1), 0.0, 0, 0.0));
		(int1++);
		sub10(("Destroy Gizka " + IntToString(int1)), 5, 5, 1.0);
	}
	int int3;
	int int4 = 0;
	if ((GetGlobalNumber("EBO_GIZKA_PLOT") == 1)) {
		SetGlobalNumber("GizkaMultiplier", (GetGlobalNumber("GizkaMultiplier") + 1));
		int3 = ((GetGlobalNumber("GizkaMultiplier") + 1) * 3);
		if ((int3 >= 15)) {
			int3 = 15;
		}
		while ((int4 <= int3)) {
			sub10(("Spawn Gizka " + IntToString(int3)), 7, 7, 1.0);
			(int4++);
			{
				location location1;
				if ((int1 < 10)) {
				location1 = GetLocation(GetObjectByTag((("wp_Gizka_" + "0") + IntToString(int4)), 0));
				}
				else {
				location1 = GetLocation(GetObjectByTag(("wp_Gizka_" + IntToString(int4)), 0));
				}
				CreateObject(1, "g_gizka016", location1, 0);
			}
		}
	}
	DelayCommand(0.2, DestroyObject(GetObjectByTag("Sasha", 0), 0.0, 0, 0.0));
	DelayCommand(0.2, DestroyObject(GetObjectByTag("LurArka", 0), 0.0, 0, 0.0));
	if (((GetGlobalNumber("Ebo_Sasha_State") >= 40) && (GetGlobalNumber("Ebo_Sasha_State") < 99))) {
		DelayCommand(0.5, sub11(1, "Sasha", GetLocation(GetObjectByTag("SashaSpawn", 0))));
	}
	if ((GetGlobalNumber("EBO_LURARKA") == 4)) {
		DelayCommand(0.5, sub11(1, "LurArka", GetLocation(GetObjectByTag("SashaSpawn", 0))));
		DelayCommand(0.6, AssignCommand(GetObjectByTag("LurArka", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "")));
	}
	int nGlobal = GetGlobalNumber("EBO_MYSTERY_BOX");
	object oEBO_MysteryBox = GetObjectByTag("EBO_MysteryBox", 0);
	if (((nGlobal == 5) && (!GetIsObjectValid(oEBO_MysteryBox)))) {
		object oEBO_MYSTERY_SPAWN = GetWaypointByTag("EBO_MYSTERY_SPAWN");
		location location6 = GetLocation(oEBO_MYSTERY_SPAWN);
		DelayCommand(0.5, sub11(64, "g_pebn_mystery", location6));
	}
	else {
		if (((nGlobal == 99) && GetIsObjectValid(oEBO_MysteryBox))) {
			DestroyObject(oEBO_MysteryBox, 0.0, 0, 0.0);
		}
	}
}

void sub8(object objectParam1) {
	ApplyEffectToObject(0, EffectHeal(500), objectParam1, 0.0);
	ApplyEffectToObject(0, EffectHealForcePoints(500), objectParam1, 0.0);
}

void sub7() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oCand = GetObjectByTag("cand", 0);
	object oHk47 = GetObjectByTag("hk47", 0);
	object oJolee = GetObjectByTag("jolee", 0);
	object oJuhani = GetObjectByTag("juhani", 0);
	object oMission = GetObjectByTag("mission", 0);
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	object object19;
	int int1 = 1;
	while ((int1 <= 9)) {
		if ((int1 == 1)) {
			object19 = oBastila;
		}
		if ((int1 == 2)) {
			object19 = oCarth;
		}
		if ((int1 == 3)) {
			object19 = oCand;
		}
		if ((int1 == 4)) {
			object19 = oHk47;
		}
		if ((int1 == 5)) {
			object19 = oJolee;
		}
		if ((int1 == 6)) {
			object19 = oJuhani;
		}
		if ((int1 == 7)) {
			object19 = oMission;
		}
		if ((int1 == 8)) {
			object19 = oT3m4;
		}
		if ((int1 == 9)) {
			object19 = oZaalbar;
		}
		if (GetIsObjectValid(object19)) {
			sub8(object19);
		}
		(int1++);
	}
	sub8(GetFirstPC());
}

void sub6(int intParam1, location locationParam2) {
	object object1 = SpawnAvailableNPC(intParam1, locationParam2);
}

void sub5() {
	object oZaalbar = GetObjectByTag("bastila", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("cand", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("carth", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("hk47", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("jolee", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("juhani", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("mission", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("t3m4", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("zaalbar", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
}

void sub4() {
	int int1;
	int1;
	while ((int1 <= 8)) {
		if (IsNPCPartyMember(int1)) {
			RemovePartyMember(int1);
		}
		(int1++);
	}
}

void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub2() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((GetGlobalBoolean("K_SPACE_SKYBOX_ON") == 1)) {
		sub3("Firing Anim 09 for Space");
		PlayRoomAnimation("m12aa_01q", 9);
		SetGlobalBoolean("K_SPACE_SKYBOX_ON", 0);
	}
	else {
		if ((nGlobal == 15)) {
			sub3("Firing Anim 02 for Dantooine");
			PlayRoomAnimation("m12aa_01q", 2);
		}
		else {
			if ((nGlobal == 20)) {
				sub3("Firing Anim 01 for Kashyyyk");
				PlayRoomAnimation("m12aa_01q", 1);
			}
			else {
				if ((nGlobal == 25)) {
					sub3("Firing Anim 06 for Manaan");
					PlayRoomAnimation("m12aa_01q", 6);
				}
				else {
					if ((nGlobal == 30)) {
						sub3("Firing Anim 05 for Korriban");
						PlayRoomAnimation("m12aa_01q", 5);
					}
					else {
						if ((nGlobal == 35)) {
							sub3("Firing Anim 04 for Tatooine");
							PlayRoomAnimation("m12aa_01q", 4);
						}
						else {
							if ((nGlobal == 40)) {
								sub3("Firing Anim 08 for Leviathan");
								PlayRoomAnimation("m12aa_01q", 8);
							}
							else {
								if ((nGlobal == 45)) {
									sub3("Firing Anim 07 for Unknown World");
									PlayRoomAnimation("m12aa_01q", 7);
								}
								else {
									if ((nGlobal == 50)) {
										sub3("Firing Anim 03 for Star Forge");
										PlayRoomAnimation("m12aa_01q", 3);
									}
									else {
										if ((nGlobal > 50)) {
											sub3("Firing Anim 10 for all live content planets");
											PlayRoomAnimation("m12aa_01q", 10);
										}
										else {
											PlayRoomAnimation("m12aa_01q", 9);
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

void sub1(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}

void main() {
	if ((GetLoadFromSaveGame() == 0)) {
		sub1("Run enter script");
		location location1;
		object oPebn_zaalbar;
		object oZaalbar;
		int int2 = 0;
		DelayCommand(0.5, sub2());
		sub4();
		DelayCommand(0.2, sub5());
		SetGlobalBoolean("K_AT_EBON_HAWK", 1);
		if ((IsAvailableCreature(0) && (GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == 0))) {
			oZaalbar = GetObjectByTag("bastila", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_bastila");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(0, location1));
				DelayCommand(2.0, SaveNPCState(0));
			}
		}
		if (IsAvailableCreature(1)) {
			oZaalbar = GetObjectByTag("cand", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_canderous");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(1, location1));
				DelayCommand(2.0, SaveNPCState(1));
			}
		}
		if ((IsAvailableCreature(2) && (GetGlobalBoolean("DAN_CARTH_AT_JEDI") == 0))) {
			oZaalbar = GetObjectByTag("carth", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_carth");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(2, location1));
				DelayCommand(2.0, SaveNPCState(2));
			}
		}
		if (IsAvailableCreature(3)) {
			oZaalbar = GetObjectByTag("hk47", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_hk47");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(3, location1));
				DelayCommand(2.0, SaveNPCState(3));
			}
		}
		if (IsAvailableCreature(4)) {
			oZaalbar = GetObjectByTag("jolee", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_jolee");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(4, location1));
				DelayCommand(2.0, SaveNPCState(4));
			}
		}
		if (IsAvailableCreature(5)) {
			oZaalbar = GetObjectByTag("juhani", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_juhani");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(5, location1));
				DelayCommand(1.0, ClearAllEffects());
			}
		}
		if (IsAvailableCreature(6)) {
			oZaalbar = GetObjectByTag("mission", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_mission");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(6, location1));
				DelayCommand(2.0, SaveNPCState(6));
			}
		}
		if (IsAvailableCreature(7)) {
			oZaalbar = GetObjectByTag("t3m4", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_t3m4");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(7, location1));
				DelayCommand(2.0, SaveNPCState(7));
			}
		}
		if ((IsAvailableCreature(8) && (GetGlobalBoolean("tat_ZaalbarTaken") == 0))) {
			oZaalbar = GetObjectByTag("zaalbar", 0);
			oPebn_zaalbar = GetWaypointByTag("pebn_zaalbar");
			location1 = GetLocation(oPebn_zaalbar);
			if (GetIsObjectValid(oPebn_zaalbar)) {
				DelayCommand(0.5, sub6(8, location1));
				DelayCommand(2.0, SaveNPCState(8));
			}
		}
		DelayCommand(1.0, sub7());
		sub9();
		SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
		SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
		SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
	}
}

NCS V1.0B  �          ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   	����  ����   
����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����  L����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����    ����  ����*     +  ����      ����  ����   	�    K_AT_EBON_HAWK C     �����     ����     ����          �     bastila  �����  ���� pebn_bastila  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����        	  ?                 �����     ����     ����          �     carth  �����  ���� 
pebn_carth  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     cand  �����  ���� pebn_canderous  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     hk47  �����  ���� 	pebn_hk47  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     jolee  �����  ���� 
pebn_jolee  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     juhani  �����  ���� pebn_juhani  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     mission  �����  ���� pebn_mission  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     t3m4  �����  ���� 	pebn_t3m4  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����       �  ?                 �����     ����     ����          �     zaalbar  �����  ���� pebn_zaalbar  �����  ��������   �����  ��������   *����     ����   *"     =,   l       ����        �  ?              ����  ����  ��������         L����  �    ����  ? ����    ���� $���� ���� ���� ����  ���� ����  �����  ���� ���� ����  // Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub2(int intParam1, location locationParam2);
void sub1();

void sub2(int intParam1, location locationParam2) {
	object object1 = SpawnAvailableNPC(intParam1, locationParam2);
}

void sub1() {
	int int1;
	int1;
	while ((int1 <= 8)) {
		if (IsNPCPartyMember(int1)) {
			RemovePartyMember(int1);
		}
		(int1++);
	}
}

void main() {
	location location1;
	object oPebn_zaalbar;
	object oZaalbar;
	int int1 = 0;
	sub1();
	SetGlobalBoolean("K_AT_EBON_HAWK", 1);
	if ((IsAvailableCreature(0) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("bastila", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_bastila");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(0, location1));
		}
	}
	if ((IsAvailableCreature(2) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("carth", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_carth");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(2, location1));
		}
	}
	if ((IsAvailableCreature(1) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("cand", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_canderous");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(1, location1));
		}
	}
	if ((IsAvailableCreature(3) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("hk47", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_hk47");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(3, location1));
		}
	}
	if ((IsAvailableCreature(4) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("jolee", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_jolee");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(4, location1));
		}
	}
	if ((IsAvailableCreature(5) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("juhani", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_juhani");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(5, location1));
		}
	}
	if ((IsAvailableCreature(6) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("mission", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_mission");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(6, location1));
		}
	}
	if ((IsAvailableCreature(7) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("t3m4", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_t3m4");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(7, location1));
		}
	}
	if ((IsAvailableCreature(8) || (int1 == 1))) {
		oZaalbar = GetObjectByTag("zaalbar", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_zaalbar");
		location1 = GetLocation(oPebn_zaalbar);
		if ((GetIsObjectValid(oPebn_zaalbar) && (!GetIsObjectValid(oZaalbar)))) {
			DelayCommand(0.5, sub2(8, location1));
		}
	}
}

NCS V1.0B  ;          ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   	����  ����   
����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����  L����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����    ����  ����*     +  ����     ����  ����     bastila  �����  ����     carth  �����  ��������   �����            "     � �           �                     �?��� �,   l       �,   l       c    ��������                            lev40_carth $   �       carth  �    ?�         ����  ����   *    k'���� ����  �����  ��������          ,   ����  ����    > ����            ����  ����     ���� ���� ����  ����   *    s����     ����     ����     ����           )���� '���� ����  �         ����  // Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oEntering = GetEnteringObject();
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	if ((GetIsPC(oEntering) && (!sub1(OBJECT_SELF)))) {
		HoldWorldFadeInForDialog();
		sub2(OBJECT_SELF, 1);
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		NoClicksFor(1.2);
		DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(GetFirstPC(), "lev40_carth", 0, 0, 1, "", "", "", "", "", "", 0)));
	}
}

NCS V1.0B   s      ,            G             lev40_wptorturecs 	lev_m40aa �  >L��    void main() {
	DelayCommand(0.2, StartNewModule("lev_m40aa", "lev40_wptorturecs", "", "", "", "", "", ""));
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 1);
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 2);
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 3);
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 4);
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 5);
}

NCS V1.0B   0          
Lev_Escape E  void main() {
	SetGlobalNumber("Lev_Escape", 6);
}

NCS V1.0B  �          ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   	����  ����   
����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����  L����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����    ����  ����*     +  ����   
Lev_Escape D����  ����   ����      �?�         MISSION PLOT   �,   l       1         lev40_spmission  �  �       mission  �      �,   l       5         lev40_spmissioncell  �  �       mission  �                       LevGuard401  �  �   ����      \,   l       .         lev40_spt3m4  �  �       t3m4  �      Z,   l       2         lev40_spt3m4cell  �  �       t3m4  �     ����      ^,   l       /         lev40_spjolee  �  �       jolee  �      �,   l       3         lev40_spjoleecell  �  �       jolee  �                       LevGuard403  �  �   ����      \,   l       .         lev40_spcand  �  �       cand  �      Z,   l       2         lev40_spcandcell  �  �       cand  �     ����      `,   l       0         lev40_spjuhani  �  �       juhani  �      ^,   l       4         lev40_spjuhanicell  �  �       juhani  �     ����      \,   l       .         lev40_sphk47  �  �       hk47  �      Z,   l       2         lev40_sphk47cell  �  �       hk47  �  ,   l       5         lev40_spzaalbarcell  �  �       zaalbar  �                       carth  �  �                     bastilla  �  � ����   � "    1���� ���� ���� ����  F     ����  // Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int nGlobal = GetGlobalNumber("Lev_Escape");
	if ((1 == nGlobal)) {
		sub1("MISSION PLOT", 5, 5, 1.0);
		AssignCommand(GetObjectByTag("mission", 0), ActionJumpToObject(GetObjectByTag("lev40_spmission", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("mission", 0), ActionJumpToObject(GetObjectByTag("lev40_spmissioncell", 0), 0));
		DestroyObject(GetObjectByTag("LevGuard401", 0), 0.0, 0, 0.0);
	}
	if ((2 == nGlobal)) {
		AssignCommand(GetObjectByTag("t3m4", 0), ActionJumpToObject(GetObjectByTag("lev40_spt3m4", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("t3m4", 0), ActionJumpToObject(GetObjectByTag("lev40_spt3m4cell", 0), 0));
	}
	if ((3 == nGlobal)) {
		AssignCommand(GetObjectByTag("jolee", 0), ActionJumpToObject(GetObjectByTag("lev40_spjolee", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("jolee", 0), ActionJumpToObject(GetObjectByTag("lev40_spjoleecell", 0), 0));
		DestroyObject(GetObjectByTag("LevGuard403", 0), 0.0, 0, 0.0);
	}
	if ((4 == nGlobal)) {
		AssignCommand(GetObjectByTag("cand", 0), ActionJumpToObject(GetObjectByTag("lev40_spcand", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("cand", 0), ActionJumpToObject(GetObjectByTag("lev40_spcandcell", 0), 0));
	}
	if ((5 == nGlobal)) {
		AssignCommand(GetObjectByTag("juhani", 0), ActionJumpToObject(GetObjectByTag("lev40_spjuhani", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("juhani", 0), ActionJumpToObject(GetObjectByTag("lev40_spjuhanicell", 0), 0));
	}
	if ((6 == nGlobal)) {
		AssignCommand(GetObjectByTag("hk47", 0), ActionJumpToObject(GetObjectByTag("lev40_sphk47", 0), 0));
	}
	else {
		AssignCommand(GetObjectByTag("hk47", 0), ActionJumpToObject(GetObjectByTag("lev40_sphk47cell", 0), 0));
	}
	AssignCommand(GetObjectByTag("zaalbar", 0), ActionJumpToObject(GetObjectByTag("lev40_spzaalbarcell", 0), 0));
	DestroyObject(GetObjectByTag("carth", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("bastilla", 0), 0.0, 0, 0.0);
}

NCS V1.0B   O                  ?�       �  � ?���  �  �   void main() {
	SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionWait(1.2);
	ActionResumeConversation();
}

NCS V1.0B   �                  ?�       �,            �,            c    ��������                            lev40_carth $   �       carth  �    ?�      void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, AssignCommand(GetObjectByTag("carth", 0), ActionStartConversation(GetFirstPC(), "lev40_carth", 0, 0, 1, "", "", "", "", "", "")));
}

NCS V1.0B   \          �����  �������� ����  ����     ���� ����  int StartingConditional() {
	int int1 = IsAvailableCreature(4);
	return int1;
}

NCS V1.0B  �          ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   	����  ����   
����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����  L����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����    ����  ����*     +  ����    �             ?        �?     �  �   // Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

void main() {
	ActionPauseConversation();
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	ActionWait(0.5);
	ActionResumeConversation();
}

UTC V3.28   
   �   R   �  K   8	  g   �	  (  �
  @   ����    G       ;          <          =          >          ?          @          A          B                                                                                                 )   
   	   5      
   A                                 
      M   
      Q         ��                                                                                                       
          
                                                        !         "         #          $          %          &          '           (   2       )          *   ���>    +         ,   U      -   V      .   W      /   X      0   Y      1   Z      2   [      3   \      4   ]      5   ^      6   _      7   `      8   a      9   b      :           ;           ;          ;           ;           ;           ;          ;           ;          <   $      =   (      >   ,      ?   0      @         A         B   8      C   <       D      
   E   c      F     �B    G           H           I          J       TemplateResRef  Race            FirstName       LastName        Appearance_Type Gender          Phenotype       PortraitId      Description     Tag             Conversation    IsPC            FactionID       Disarmable      Subrace         Deity           SoundSetFile    Plot            Interruptable   NoPermDeath     BodyBag         BodyVariation   TextureVar      Min1HP          Str             Dex             Con             Int             Wis             Cha             WalkRate        NaturalAC       HitPoints       CurrentHitPointsMaxHitPoints    ForcePoints     CurrentForce    refbonus        willbonus       fortbonus       GoodEvil        LawfulChaotic   ChallengeRating PerceptionRange ScriptHeartbeat ScriptOnNotice  ScriptSpellAt   ScriptAttacked  ScriptDamaged   ScriptDisturbed ScriptEndRound  ScriptEndDialoguScriptDialogue  ScriptSpawn     ScriptRested    ScriptDeath     ScriptUserDefineScriptOnBlocked SkillList       Rank            FeatList        TemplateList    SpecAbilityList ClassList       Class           ClassLevel      KnownList0      Equip_ItemList  PaletteID       Comment         BlindSpot       Hologram        IgnoreCrePath   MultiplierSet   WillNotRender   lev40_bastila001   zA         ����       ����       Bastillalev40_carth                                                      	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   C   D   E   F   J   K   L   M   N   O   P   Q   G   H   I                                             	           DLG V3.28   �   �  B  �R X   4X �   y m  � �  ����           T   +                P  ,                P  ,                P        �        �  ,       �        �  ,       �        �  ,       �        �  ,       �        �  ,       �        �  ,       �	        �	        @
        �
     	   �
  ,       �        �        0        �        �                 p     
   �  ,       p        �                l        �                h  ,               h  ,               h        �  ,       h        �                d        �                `        �  ,       `        �  ,       `        �           ,       �                X        �                 T        �        �  ,       �        �  ,       �        �        H  ,       �        H  ,       �        L        �        �        H         �         �         @!  ,       �!        @"  ,       �"        @#        �#  ,       @$        �$        �$        <%        �%        �%        8&        �&  -       <'        �'  ,       <(        �(  ,       <)        �)        �)  ,       �*        �*        4+        �+        �+        0,        �,        �,  ,       �-        �-  ,       �.        �.  +       �/        �/        (0  -       �0         ,1  ,       �1        ,2     !   |2  -       03     "   �3  ,       04     #   �4  +       ,5     $   |5  ,       ,6        �6        �6        (7        |7        �7        $8     %   t8  ,       $9         t9  (       :        d:  )       ;        X;  )       �;        L<  )       �<        D=  )       �=        8>  )       �>        ,?  )       �?         @  )       �@        A  )       �A     	   B  )       �B     
   �B  )       �C        �C  )       �D        �D  )       �E        �E  *       �F        �F  )       xG        �G  *       pH        �H  )       hI        �I  )       \J        �J  *       TK        �K  )       LL        �L  *       DM        �M  )       <N        �N  )       0O        �O  *       (P        xP  )       Q        pQ  )       R        dR  *       S        `S  )       T        TT  )       �T        HU  *       �U        DV  )       �V        8W  *       �W         4X  )       �X     !   (Y  )       �Y     "   Z  )       �Z     #   [  *       �[     $   \  )       �\     %    ]  *       �]     &   �]  )       �^     '   �^  )       �_     (   �_  )       �`        �`     )   (a  )       �a     *   b  )       �b     +   c  )       �c     ,   d  )       �d     -   �d  (   .   �e  )       <f     /   �f  )       0g     0   �g  )       (h     1   |h  )        i     2   ti  )       j     3   hj  )       k     4   `k  )       l         Xl  ,                              �                                                  
            	           
                                                                     
               �                  +         ,             
      :         >   
      ?         ����        �?
      C                                               !          "   �      #          $   G       %          &   H      '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   I   
   5   M      6          7          8          9          :          ;          <          =          >          ?          @       
   A   Q   
   B   U      C          D   ����   E          F          G         H          I          J          K          L          M   Y       N       
      Z         �         c         o         �         ����
      �         �  
      �        ����        �?
      �                                              !          "   �      #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
                                                    !          "   �      #   4      $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   	  
   5        #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5   !      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   %  
   B   )     C          D   ����   E          F          G         H         I          J          K          L          M   -      N       
      .        �         9        E        V        ����
      W        [  
      \        ����        �?
      `                                              !          "   �      #         $   d      %          &   e     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   f  
   5   j      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   n  
   B   r     C          D   ����   E          F          G         H         I          J          K          L          M   v      N       
      w        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �      #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �      #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N       
              �                         -        ����
      .        2  
      3        ����        �?
      7                                              !          "   �      #         $   ;      %          &   <     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   =  
   5   A      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   E  
   B   I     C          D   ����   E          F          G         H         I          J          K          L          M   M      N       
      N        �         Y        e        v        ����
      w        {  
      |        ����        �?
      �                                              !          "         #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �                �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "        #   2      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   1      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   0      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   	      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N       
                                       .        ����
      /        3  
      4        ����        �?
      8                                              !          "   $     #   &      $   <      %          &   =     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   >  
   5   B     #          $   F      %          &   G     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   H  
   5   L     #         $   P      %          &   `     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   a  
   5   e     #         $   i      %          &   j     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   k  
   5   o     #         $   s      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   
      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   	      I          J          K          L          M   �      N       
      �        D        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   H     #   &      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5        #          $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #         $         %      
   P   %     &   )     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   *  
   5   .     #         $   2      %      
   P   3     &   7     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   8  
   5   <     #         $   @      %      
   P   N     &   R     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   S  
   5   W     #         $   [      %      
   P   l     &   p     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   q  
   5   u      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   y  
   B   }     C          D   ����   E          F          G         H   
      I          J          K          L          M   �      N       
      �        d        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   h     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        p        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   t     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5        #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O         6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N       
              �                 ,        =        ����
      >        B  
      C        ����        �?
      G                                              !          "   �     #   
      $   K      %      
   P   X     &   \     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   ]  
   5   a     #         $   e      %      
   P   v     &   z     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   {  
   5        #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #          $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   &      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        �        �        �                ����
              	  
      
        ����        �?
                                                    !          "   �     #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O         6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B         C          D   ����   E          F          G         H         I          J          K          L          M   $      N       
      %        �        /        ;        L        ����
      M        Q  
      R        ����        �?
      V                                              !          "   �     #         $   Z      %          &   [     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   \  
   5   `     #         $   d      %          &   e     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   f  
   5   j      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   n  
   B   r     C          D   ����   E          F          G         H         I          J          K          L          M   v      N       
      w        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   
      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #          $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #   &      $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4      
   5   $     #         $   (      %          &   )     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   *  
   5   .      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   2  
   B   6     C          D   ����   E          F          G         H         I          J          K          L          M   :      N       
      ;        �        C        O        `        ����
      a        e  
      f        ����        �?
      j                                              !          "   �     #         $   n      %          &   o     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   p  
   5   t      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   x  
   B   |     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �                 �        �        �        ����
      	        .	  
      /	        ����        �?
      3	                                              !          "        #         $   7	      %          &   8	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   9	  
   5   =	      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   A	  
   B   E	     C          D   ����   E          F          G         H         I          J          K          L          M   I	      N       
      J	                R	        ^	        o	        ����
      p	        t	  
      u	        ����        �?
      y	                                              !          "        #   
      $   }	      %      
   P   �	     &   �	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �	  
   5   �	     #         $   �	      %      
   P   �	     &   �	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �	  
   5   �	     #         $   �	      %      
   P   �	     &   �	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �	  
   5   �	     #         $   �	      %      
   P   �	     &   �	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �	  
   5   �	     #          $   �	      %      
   P   �	     &   �	     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �	  
   5   �	     #   &      $   �	      %      
   P   �	     &    
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   
  
   5   
     #         $   	
      %          &   

     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   
  
   5   
      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   
  
   B   
     C          D   ����   E          F          G         H         I          J          K          L          M   
      N       
      
        0        %
        1
        B
        ����
      C
        G
  
      H
        ����        �?
      L
                                              !          "   4     #         $   P
      %          &   Q
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   R
  
   5   V
      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   Z
  
   B   ^
     C          D   ����   E          F          G         H         I          J          K          L          M   b
      N       
      c
        <        l
        x
        �
        ����
      �
        �
  
      �
        ����        �?
      �
                                              !          "   @     #         $   �
      %          &   �
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �
  
   5   �
     #         $   �
      %          &   �
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �
  
   5   �
      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �
  
   B   �
     C          D   ����   E          F          G         H         I          J          K          L          M   �
      N       
      �
        L        �
        �
        �
        ����
      �
        �
  
      �
        ����        �?
      �
                                              !          "   P     #   
      $   �
      %      
   P   �
     &   �
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �
  
   5   �
     #         $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #         $          %      
   P   .     &   2     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   3  
   5   7     #         $   ;      %      
   P   <     &   @     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   A  
   5   E     #          $   I      %      
   P   J     &   N     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   O  
   5   S     #   &      $   W      %      
   P   X     &   \     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   ]  
   5   a     #         $   e      %          &   f     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   g  
   5   k      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   o  
   B   s     C          D   ����   E          F          G         H         I          J          K          L          M   w      N       
      x        p        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   t     #   !      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N          Q       
      �        |        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   "      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4      
   5         O         6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N       
              �                &        7        ����
      8        <  
      =        ����        �?
      A                                              !          "   �     #   $      $   E      %          &   F     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   G  
   5   K     #   #      $   O      %          &   P     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   Q  
   5   U      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   Y  
   B   ]     C          D   ����   E          F          G         H         I          J          K          L          M   a      N       
      b        �        k        w        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   &      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4      
   5        #   
      $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        #   %      $   "      %          &   #     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   $  
   5   (      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   ,  
   B   0     C          D   ����   E          F          G         H         I          J          K          L          M   4      N       
      5        �        @        L        ]        ����
      ^        b  
      c        ����        �?
      g                                              !          "   �     #   '      $   k      %          &   l     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   m  
   5   q      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   u  
   B   y     C          D   ����   E          F          G         H         I          J          K          L          M   }      N       
      ~        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   (      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   .      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   *      $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   	  
   5        6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N       
              �        %        1        ?        ����
      @        T  
      b        ����        �?
      f                                              !          "   �     #   )      $   j      %          &   k     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   l  
   5   p      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   t  
   B   x     C          D   ����   E          F          G         H         I          J          K          L          M   |      N          Q       
      }        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                                              !          "   �     #   .      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   *      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H          I          J          K          L          M   �      N       
      �                 �        �        �        ����
                
           R            ����        �?
                                                    !          "        #   +      $   !      %          &   "     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   #  
   5   '      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   +  
   B   /     C          D   ����   E          F          G         H   !      I          J          K          L          M   3      N       
      4                =        I        Z        ����
      [        �  
      �        ����        �?
      �                                              !          "        #   ,      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   "      I          J          K          L          M   �      N       
      �                �        �        �        ����
                
              ����        �?
                                                    !          "        #   -      $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5        6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B   #     C          D   ����   E          F          G         H   #      I          J          K          L          M   '      N       
      (        $        3        ?        P        ����
      Q        U  
      V        ����        �?
      Z                                              !          "   (     #          $   ^      %      
   P   _     &   c     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   d  
   5   h     #         $   l      %      
   P   |     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #         $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   
      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �     #   /      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   $      I          J          K          L          M   �      N       
      �        H                        %        ����
      &        *  
      +        ����        �?
      /                                              !          "   L     #   3      $   8      %          &   9     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   :  
   5   >      O         6          7          8          9          :          ;          <          =          >          ?          @       
   A   B  
   B   F     C          D   ����   E          F          G         H   %      I          J          K          L          M   J      N          S   T        ,        K        _        `        ����
      a        e  
      f        ����        �?
      j                          !          T   0     #         $   n      %          &   o     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   p  
   5   t     6          7          8          9          :          ;          <          =          >          ?          @       
   A   x  
   B   |     C          D   ����   E          F          G         H          I          J          K          L          M   �      N             8        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   <     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             D        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   H     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B         C          D   ����   E          F          G         H         I          J          K          L          M         N             P                        *        ����
      +        /  
      0        ����        �?
      4                          !          T   T     #         $   8      %      
   P   9     &   =     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   >  
   5   B      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   F  
   B   J     C          D   ����   E          F          G         H         I          J          K          L          M   N      N             \        O        [        l        ����
      m        q  
      r        ����        �?
      v                          !          T   `     #         $   z      %          &   {     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   |  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             h        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   l     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             t        �        �        �        ����
      �        �  
      �        ����        �?
                                !          T   x     #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N             �                -        >        ����
      ?        C  
      D        ����        �?
      H                          !          T   �     #         $   L      %          &   M     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   N  
   5   R      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   V  
   B   Z     C          D   ����   E          F          G         H         I          J          K          L          M   ^      N             �        _        s        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #   	      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   	      I          J          K          L          M   �      N             �        �        �                 ����
                
              ����        �?
                                !          T   �     #   
      $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4      
   5   $      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   (  
   B   ,     C          D   ����   E          F          G         H   
      I          J          K          L          M   0      N             �        1        =        N        ����
      O        a  
      b        ����        �?
      f                          !          T   �     #         $   j      %          &   k     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   l  
   5   p      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   t  
   B   x     C          D   ����   E          F          G         H         I          J          K          L          M   |      N             �        }        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �     R            ����        �?
                                !          T   �     #   "      $   	      %      
   P   
     &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N             �                 ,        =        ����
      >        B  
      C        ����        �?
      G                          !          T   �     #         $   K      %          &   L     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   M  
   5   Q      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   U  
   B   Y     C          D   ����   E          F          G         H         I          J          K          L          M   ]      N             �        ^        j        {        ����
      �        �  
      �     R            ����        �?
      �                          !          T   �     #   "      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N             �                        -        ����
      .        2  
      3        ����        �?
      7                          !          T   �     #         $   ;      %          &   <     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   =  
   5   A      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   E  
   B   I     C          D   ����   E          F          G         H         I          J          K          L          M   M      N                     N        Z        k        ����
      {        �  
      �     R            ����        �?
      �                          !          T        #   "      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N                     �        �        �        ����
      �           
              ����        �?
                                !          T        #         $   	      %          &   
     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H         I          J          K          L          M         N                             (        9        ����
      I        M  
      N     R            ����        �?
      ^                          !          T         #   "      $   b      %      
   P   c     &   g     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   h  
   5   l      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   p  
   B   t     C          D   ����   E          F          G         H         I          J          K          L          M   x      N             (        y        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   ,     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             4        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   8     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B   
     C          D   ����   E          F          G         H         I          J          K          L          M         N             @                        ,        ����
      -        1  
      2     R            ����        �?
      B                          !          T   D     #         $   F      %          &   G     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   H  
   5   L      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   P  
   B   T     C          D   ����   E          F          G         H         I          J          K          L          M   X      N             L        Y        m        ~        ����
              �  
      �        ����        �?
      �                          !          T   P     #   "      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             X        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   \     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             d        �        �        �        ����
                
           R            ����        �?
      #                          !          T   h     #   "      $   '      %      
   P   (     &   ,     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   -  
   5   1      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   5  
   B   9     C          D   ����   E          F          G         H         I          J          K          L          M   =      N             p        >        J        [        ����
      \        n  
      o        ����        �?
      s                          !          T   t     #         $   w      %          &   x     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   y  
   5   }      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             |        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             �        �        �        �        ����
      �          
           R            ����        �?
                                !          T   �     #   "      $         %      
   P        &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5          O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   $  
   B   (     C          D   ����   E          F          G         H         I          J          K          L          M   ,      N             �        -        9        J        ����
      K        O  
      P        ����        �?
      T                          !          T   �     #         $   X      %          &   Y     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   Z  
   5   ^      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   b  
   B   f     C          D   ����   E          F          G         H         I          J          K          L          M   j      N             �        k        w        �        ����
      �        �  
      �     R            ����        �?
      �                          !          T   �     #   "      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H         I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4      
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A     
   B        C          D   ����   E          F          G         H          I          J          K          L          M         N             �                %        6        ����
      7        ;  
      <        ����        �?
      @                          !          T   �     #         $   D      %          &   E     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   F  
   5   J      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   N  
   B   R     C          D   ����   E          F          G         H   !      I          J          K          L          M   V      N             �        W        k        |        ����
      }        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   "      I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �     R            ����        �?
      �                          !          T   �     #   "      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   #      I          J          K          L          M   �      N             �        �                        ����
                
              ����        �?
      !                          !          T   �     #         $   %      %          &   &     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   '  
   5   +      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   /  
   B   3     C          D   ����   E          F          G         H   $      I          J          K          L          M   7      N             �        8        D        U        ����
      e        i  
      j     R            ����        �?
      z                          !          T   �     #   "      $   ~      %      
   P        &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   %      I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #         $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   &      I          J          K          L          M   �      N                      �        �                ����
      	          
              ����        �?
                                !          T        #         $         %          &        '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4     
   5         O          6          7          8          9          :          ;          <          =          >          ?          @       
   A      
   B   $     C          D   ����   E          F          G         H   '      I          J          K          L          M   (      N                     )        =        N        ����
      O        S  
      T        ����        �?
      X                          !          T        #         $   \      %          &   ]     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   ^  
   5   b     #         $   f      %          &   g     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   h  
   5   l      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   p  
   B   t     C          D   ����   E          F          G         H   (      I          J          K          L          M   x      N                     y        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T         #          $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   )      I          J          K          L          M   �      N             (        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   ,     #   !      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   *      I          J          K          L          M   �      N             4        �                "        ����
      #        '  
      (        ����        �?
      ,                          !          T   8     #   "      $   0      %          &   1     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   2  
   5   6      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   :  
   B   >     C          D   ����   E          F          G         H   +      I          J          K          L          M   B      N             @        C        W        h        ����
      i        m  
      n        ����        �?
      r                          !          T   D     #   #      $   v      %          &   w     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   x  
   5   |      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   ,      I          J          K          L          M   �      N             L        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   P     6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   -      I          J          K          L          M   �      N             T        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   X     #   $      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   .      I          J          K          L          M         N             `                                ����
               $  
      %        ����        �?
      )                          !          T   d     #   !      $   -      %      
   P   .     &   2     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   3  
   5   7      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   ;  
   B   ?     C          D   ����   E          F          G         H   /      I          J          K          L          M   C      N             l        D        P        a        ����
      b        f  
      g        ����        �?
      k                          !          T   p     #   %      $   o      %      
   P   p     &   t     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   u  
   5   y      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   }  
   B   �     C          D   ����   E          F          G         H   0      I          J          K          L          M   �      N             x        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   |     #   %      $   �      %      
   P   �     &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B   �     C          D   ����   E          F          G         H   1      I          J          K          L          M   �      N             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                          !          T   �     #   %      $   �      %          &   �     '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �  
   5   �      O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �  
   B         C          D   ����   E          F          G         H   2      I          J          K          L          M          N             �                          +         ����
      ,         0   
      1         ����        �?
      5                           !          T   �     #   	      $   9       %      
   P   :      &   >      '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   ?   
   5   C       O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   G   
   B   K      C          D   ����   E          F          G         H   3      I          J          K          L          M   O       N             �        P         \         m         ����
      n         r   
      s         ����        �?
      w                           !          T   �     #         $   {       %      
   P   |      &   �      '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �   
   5   �       O          6          7          8          9          :          ;          <          =          >          ?          @       
   A   �   
   B   �      C          D   ����   E          F          G         H   4      I          J          K          L          M   �       N          U   �     #          $   �      6          7          8          9          :          ;          <          =          >          ?          @       
   A   �   
   B   �      C          D   ����   E          F          G         H          I          J          K          L          M   �       N          &   �      '           (           )          *          +          ,          -          .          /          0          1          2          3          2       
   4   �   
   5   �   
   V   �      W   &   DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       CameraModel     VO_ID           ConversationTypeComputerType    OldHitCheck     AmbientTrack    UnequipItems    AnimatedCut     UnequipHItem    EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CamHeightOffset TarHeightOffset FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   SoundExists     LinkComment     FacialAnim      QuestEntry      ReplyList       EntriesList     StartingList    EditorInfo      NextNodeID            cart05    Carth   ����            k_plev_fadein                                   Carth   @      nm40aacart05000_ 2  This dialog runs when the player enters hyperspace and they have 4 of the 5 sections of the star map. Takes place in the Ebon Hawk cockpit.

Only scripting:

Canderous must walk to the back of the ship if player selects his choice

Juhani fades out of view if her choice is selected

(Both nodes commented)                               Carth   �@      nm40aacart05002_                                                        Bastila   �@      nm40aacart05084_                                    Carth   �@      nm40aacart05005_                                    Bastila   �@      nm40aacart05007_                                    Carth   �@      nm40aacart05009_                                    Bastila   �@      nm40aacart05011_             Carth                      Bastila   �@      nm40aacart05013_             Carth                                                    Carth   �@      nm40aacart05020_                                  k_ptar_joleechk                   k_con_juhanilive         k_ebo_hkavail         k_ebo_zalavi                     Bastila   �@      nm40aacart05082_                                          k_ptar_joleechk                           k_ebo_hkavail             k_con_juhanilive                         HK47   �@      nm40aacart05074_                                    HK47   �@      nm40aacart05076_                                              HK47   �@      nm40aacart05078_              k_ebo_zalavi             k_con_juhanilive                           k_ptar_joleechk                                                               Juhani   �@      nm40aacart05066_                                    Juhani   �@      nm40aacart05068_                                              Juhani   �@      nm40aacart05070_              k_ebo_zalavi             k_ebo_hkavail             k_ptar_joleechk                                                                             Cand   �@      nm40aacart05056_                                    Cand   �@      nm40aacart05058_                                              Cand   �@      nm40aacart05063_k_plev_escplot4$   Canderous walks to back of Ebon Hawk                               Cand   �@      nm40aacart05060_              k_ebo_zalavi             k_con_juhanilive             k_ebo_hkavail             k_ptar_joleechk                                                               Jolee   �@      nm40aacart05048_                                    Jolee   �@      nm40aacart05050_                                              Jolee   �@      nm40aacart05052_              k_ebo_zalavi             k_con_juhanilive             k_ebo_hkavail                                                                             T3M4   �@      n_gendro_coms3     n_gendro_coms3                              Carth   �@      nm40aacart05040_                                    Carth   �@      nm40aacart05042_                                              Carth   �@      nm40aacart05044_                            k_ptar_joleechk                           k_ebo_hkavail             k_con_juhanilive             k_ebo_zalavi                                   Mission   �@      nm40aacart05022_                                    Mission   �@      nm40aacart05024_                                    Mission   ����                                                                  Zaalbar   �@      n_gwwook_scrs    Zaalbar in partyn_gwwook_scrs                              Mission   �@      nm40aacart05028_                                              Mission   �@      nm40aacart05033_k_plev_escplot1        lev_captured                          Carth   �@      nm40aacart05035_ e   only if plans is at 2, run cut scene of ship entering Leviathan and guards rushing up to surround it.                                   ����            k_ptar_jumplev                                   Mission   �@      nm40aacart05030_                            k_ptar_joleechk                           k_ebo_hkavail             k_con_juhanilive             k_ebo_zalavi                                   Bastila   �@      nm40aacart05015_             Carth                      ����                                                ����           _m40aacart05001_                                    �@      _m40aacart05083_                                    ����           _m40aacart05085_                                        �@      _m40aacart05004_                                    ����           _m40aacart05006_                                    ����           _m40aacart05008_                                    ����           _m40aacart05010_                                    ����           _m40aacart05012_                                    �@      _m40aacart05019_                                    �@      _m40aacart05081_    zaalbar in party                               �@      _m40aacart05073_    Hk-47 in party                               ����           _m40aacart05075_                                    �@      _m40aacart05080_k_plev_escplot6        lev_captured                              �@      _m40aacart05077_                                    �@      _m40aacart05079_k_plev_escplot6        lev_captured                              �@      _m40aacart05065_    Juhani in party                               ����           _m40aacart05067_                                    �@      _m40aacart05072_k_plev_escplot53   Juhani goes stealth (camoflage) and fades from view    lev_captured                              �@      _m40aacart05069_                                    �@      _m40aacart05071_k_plev_escplot5        lev_captured                              �@      _m40aacart05055_    Canderous in party                               ����           _m40aacart05057_                                    �@      _m40aacart05062_         lev_captured                          ����           _m40aacart05064_                                        �@      _m40aacart05059_                                    �@      _m40aacart05061_k_plev_escplot4        lev_captured                              �@      _m40aacart05047_    Jolee in party                               ����           _m40aacart05049_                                    �@      _m40aacart05054_k_plev_escplot3        lev_captured                              �@      _m40aacart05051_                                    �@      _m40aacart05053_k_plev_escplot3        lev_captured                              �@      _m40aacart05037_    T3 in party                               ����           _m40aacart05039_                                    ����           _m40aacart05041_                                    �@      _m40aacart05046_k_plev_escplot2        lev_captured                              �@      _m40aacart05043_                                    �@      _m40aacart05045_k_plev_escplot2        lev_captured                              �@      _m40aacart05021_    Mission in party                               ����           _m40aacart05023_                                    ����           _m40aacart05025_                                              ����           _m40aacart05027_                                    �@      _m40aacart05032_                                    ����           _m40aacart05034_                                    ����           _m40aacart05036_                                    ����            k_pebo_jumplev2                         �@      _m40aacart05029_                                    �@      _m40aacart05031_                                        �@      _m40aacart05018_                                        �@      _m40aacart05017_                                        �@      _m40aacart05014_                                    ����           _m40aacart05016_                                        �@      _m40aacart05003_                                                        0   v2.3.2 Apr 30, 2008 LastEdit: 27-May-21 21:45:43                            	   
                     Y    @  A                                                   !   "   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	         !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  
                                        8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	         !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  
                                        8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  �  �  �  �                     	  
                        ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                         !  "  #  $  %  &  '  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
        �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                         !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
    4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M                                             !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �  �  �  �  �  �  �  �  �  �  �  �  �  �   	  	  	  	  	  	  	  	  	  		  
	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	   	  !	  "	  #	  $	  %	  &	  '	  (	  )	  *	  +	  ,	  -	  .	  /	  0	  1	  2	  3	  4	  5	  6	  7	  8	  9	  :	  ;	  <	  =	  >	  ?	  @	  A	  B	  C	  D	  E	  F	  G	  H	  I	  J	  K	  L	  M	  N	  O	  P	  Q	  R	  S	  T	  U	  V	  W	  X	  Y	  Z	  [	  \	  ]	  ^	  _	  `	  a	  b	  c	  d	  e	  f	  g	  h	  i	  j	  k	  l	  m	  n	  o	  p	  q	  r	  s	  t	  u	  v	  w	  x	  y	  z	  {	  |	  }	  ~	  	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  
  
  
  
  	
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	   
  
  
  
  
  
   
  !
  "
  #
  $
  %
  &
  '
  (
  )
  *
  +
  ,
  -
  .
  /
  0
  Y
  Z
  [
  \
  ]
  ^
  _
  `
  a
  b
  c
  d
  e
  f
  g
  h
  i
  j
  k
  l
  m
  n
  o
  p
  q
  r
  1
  2
  3
  4
  5
  6
  7
  8
  9
  :
  ;
  <
  =
  >
  ?
  @
  A
  B
  C
  D
  E
  F
  G
  H
  I
  J
  K
  L
  M
  N
  O
  P
  Q
  R
  S
  T
  U
  V
  W
  X
  s
  t
  u
  v
  w
  x
  y
  z
  {
  |
  }
  ~
  
  �
  �
  �
  �
  �
                       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
  �
                     	  
                          1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �               �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        	  
                            ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F                     !  "  #  $  %  &  '  (  )  *  +  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                	  
                                    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  !  "  #  $  %  &  '  (  )  *  +  ,  -  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  �                     	  
                              m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                   !  "  #  $  %  &  '  (  )  *  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �             �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �          	  
                    (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A                             !  "  #  $  %  &  '  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                              !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5    	  
                                    6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                             !  "  #  $  %  &  '  (  )  *  +  ,  -  �                     	  
                    .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
                                               !  "  #  �  �  �  �  �  �  �  �  �  �                     	  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  	  
                                  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  !  "  #  $  %  &  '  (  )  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                 5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
                              -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F                   !  "  #  $  %  &  '  (  )  *  +  ,  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
          #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <                                       !  "  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �             -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F          	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
      !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :                                           ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                	  
                                    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  !  "  #  $  %  &  '  (  )  *  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                             !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?      &            	                         '   )   ,   4   6   9   A   C   F   H   P   R   U   ]   _   a   d   l   n   p   s   u   x   z   |   ~   �                                              
                                                                                                 !   "   #   $   %   &          (          *   +          -   .   /   0   1   2   3          5          7   8          :   ;   <   =   >   ?   @          B          D   E          G          I   J   K   L   M   N   O          Q          S   T          V   W   X   Y   Z   [   \          ^          `          b   c          e   f   g   h   i   j   k          m          o          q   r          t          v   w          y          {          }             �   �   �   �   �   �          �   5   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �   �          �          �          �          �                  �          �          �          �          �          �          �      �   UTC V3.28   
   �   R   �  K   8	  b   �	  (  �
  @   ����    G       ;          <          =          >          ?          @          A          B                                                                                                 '   
   	   3      
   <                                 
      H   
      L         ��                                                                                                       
          
                                                        !         "         #          $          %          &          '           (   2       )          *   ���>    +         ,   P      -   Q      .   R      /   S      0   T      1   U      2   V      3   W      4   X      5   Y      6   Z      7   [      8   \      9   ]      :           ;           ;          ;           ;           ;           ;          ;           ;          <   $      =   (      >   ,      ?   0      @          A         B   8      C   <       D      
   E   ^      F     �B    G           H           I          J       TemplateResRef  Race            FirstName       LastName        Appearance_Type Gender          Phenotype       PortraitId      Description     Tag             Conversation    IsPC            FactionID       Disarmable      Subrace         Deity           SoundSetFile    Plot            Interruptable   NoPermDeath     BodyBag         BodyVariation   TextureVar      Min1HP          Str             Dex             Con             Int             Wis             Cha             WalkRate        NaturalAC       HitPoints       CurrentHitPointsMaxHitPoints    ForcePoints     CurrentForce    refbonus        willbonus       fortbonus       GoodEvil        LawfulChaotic   ChallengeRating PerceptionRange ScriptHeartbeat ScriptOnNotice  ScriptSpellAt   ScriptAttacked  ScriptDamaged   ScriptDisturbed ScriptEndRound  ScriptEndDialoguScriptDialogue  ScriptSpawn     ScriptRested    ScriptDeath     ScriptUserDefineScriptOnBlocked SkillList       Rank            FeatList        TemplateList    SpecAbilityList ClassList       Class           ClassLevel      KnownList0      Equip_ItemList  PaletteID       Comment         BlindSpot       Hologram        IgnoreCrePath   MultiplierSet   WillNotRender   lev40_carth001   }A         ����       ����       Carthlev40_carth                                                      	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   C   D   E   F   J   K   L   M   N   O   P   Q   G   H   I                                             	           ARE V3.28        z   �  J   t  �   s  �  [  L   ����    <      �                   (         4         @         L         X         d         p         |         �         �         �         �         �         �         �         �                                   
                   
                                         	          
                                                                                                                          ��L>                                                                           �>        �>         �>   !     �>   "          #           $          %     �B   &     �B   '           (          )          *           +          ,     �B   -     �B   .           /          0   KA<     1           2           3   �       4          5          6          7          8          9           :          ;           <           =           >           ?          @          A          B      
   C         D          E     �?
   C   +      D          E     �?
   C   8      D          E     �?
   C   E      D          E     �?
   C   R      D          E     �?
   C   _      D          E     �?
   C   l      D          E     �?
   C   y      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?
   C   �      D          E     �?   F   �      G   �      H   �      I   �   ID              Creator_ID      Version         Tag             Name            Comments        Map             MapResX         NorthAxis       WorldPt1X       WorldPt1Y       WorldPt2X       WorldPt2Y       MapPt1X         MapPt1Y         MapPt2X         MapPt2Y         MapZoom         Expansion_List  Flags           ModSpotCheck    ModListenCheck  AlphaTest       CameraStyle     DefaultEnvMap   Grass_TexName   Grass_Density   Grass_QuadSize  Grass_Ambient   Grass_Diffuse   Grass_Prob_LL   Grass_Prob_LR   Grass_Prob_UL   Grass_Prob_UR   MoonAmbientColorMoonDiffuseColorMoonFogOn       MoonFogNear     MoonFogFar      MoonFogColor    MoonShadows     SunAmbientColor SunDiffuseColor SunFogOn        SunFogNear      SunFogFar       SunFogColor     SunShadows      DynAmbientColor IsNight         LightingScheme  ShadowOpacity   DayNightCycle   ChanceRain      ChanceSnow      ChanceLightning WindPower       LoadScreenID    PlayerVsPlayer  NoRest          NoHangBack      PlayerOnly      Unescapable     StealthXPEnabledStealthXPLoss   StealthXPMax    Rooms           RoomName        EnvAudio        AmbientScale    OnEnter         OnExit          OnHeartbeat     OnUserDefined      Untitled   "�            	   m12aa_01a	   m12aa_01l	   m12aa_01i	   m12aa_01c	   m12aa_01g	   m12aa_01p	   m12aa_01d	   m12aa_01h	   m12aa_01j	   m12aa_01b	   m12aa_01e	   m12aa_01k	   m12aa_01o	   m12aa_01n	   m12aa_01m	   m12aa_01f	   m12aa_01q                                                                        !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   v   w   x   y         	   
                        C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u                               	   
                           GIT V3.28      @  �   |
  0   |  �  R    f  |   ����          0   	      T         h         |         �         �         �         �         �         �         �                  8        p        �        �                P        �        �        �                                                 I         I                            A      	   A      
   ��                                                                         ��HB      �	:B      �/V@                         �IB      �78B      h؅@                         ��HB      .";B      �Q�@      )                   �\IB      ,1B      `�3@      $         (         5         4�BB      $�QB      ff�?                                    0          �      �:�      M��<      �)@      `��      M3�<      @�'@       b>      M��<       b=       ��=      M��<                          M��<      H             
       D         H   
   !   W      "   g      #   s       $          %          &            ��WB      �EB      `f�?      =�T�      �9�          
       �         �   
   !   �      "   �      #   �       $          %   �       &            M 7B      rnEB      Pf�?      5?      �5�          
       �         �   
   !   �      "   �      #         $          %         &            �r1B      
9B      �(�?        �?      6          
                 
   !   ,     "   :     #   F      $          %   R      &            �8B      �,B      df�?      �T?      :?          
       ^        b  
   !   q     "   �     #   �      $          %   �      &            �GB      J�%B      hf�?                  �?          
       �        �  
   !   �     "   �     #   �      $          %   �      &            ��VB       (:B      ���?        ��      6          
       �        �  
   !   �     "        #         $          %   &      &            �=aB      ��=B       f�?      ��l�       �þ          
       2        6  
   !   E     "   R     #   ^      $          %   j      &            mHgB      ?�,B      �o�?      W�l�      :��>          
       v        z  
   !   �     "   �     #   �      $          %   �      &            �l\B      ��$B      ff�?                  �?   '   p      (   t      )         *   �     +     �B   ,          -   �     .      @   /     �BUseTemplates    AreaProperties  AmbientSndDay   AmbientSndNight AmbientSndDayVolAmbientSndNitVolEnvAudio        MusicBattle     MusicDay        MusicNight      MusicDelay      Creature List   Door List       Encounter List  List            SoundList       TemplateResRef  GeneratedType   XPosition       YPosition       ZPosition       StoreList       TriggerList     XOrientation    YOrientation    ZOrientation    Geometry        PointX          PointY          PointZ          WaypointList    Appearance      LinkedTo        Tag             LocalizedName   Description     HasMapNote      MapNote         MapNoteEnabled  Placeable List  CameraList      CameraID        Position        Pitch           MicRange        Orientation     Height          FieldOfView     electroniccon001computerbeeps	enginehummetalstrainebo40_carthtlk    sw_waypoint001   pebn_bastila   \         ����       ����        sw_waypoint001
   pebn_carth   \         ����       ����        sw_waypoint001   pebn_canderous   \         ����       ����        sw_waypoint001
   pebn_jolee   \         ����       ����        sw_waypoint001   pebn_juhani   \         ����       ����        sw_waypoint001   pebn_mission   \         ����       ����        sw_waypoint001   pebn_zaalbar   \         ����       ����        sw_waypoint001	   pebn_hk47   \         ����       ����        sw_waypoint001	   pebn_t3m4   \         ����       ����    9�'B��*B g�?��W?        x�	�                      $   %   =   �   �                        	   
                                                       !   "   #   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                                                     	   
      	                                        PTH V3.28      D      \      |       |      �      ����                           Path_Points     Path_Conections                UTS V3.28      �      �     �  �     d   l     ����                                                         
                                                                                               	     �?   
      A        �?                          �:        �        ���>                                     1                              '         8         I         Z         k             
      |   Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            MetalStrain   ��      metalstrainas_me_metstrn_01as_me_metstrn_07as_me_metstrn_08as_me_metstrn_09as_me_metstrn_10                                	   
                                                               IFO V3.28      P   ,   `  ,      �   �  �   �     ����    +      +                                   
                            
      5   
      Y         ]       	          
   i         V�GB      s�MB      ff�?      i!"�        ��                                                                            \         
         o         p                  �         �         �         �          �      !   �      "   �      #   �      $   �      %   �      &   �      '   �      (         )         *         +   �   Mod_ID          Mod_Creator_ID  Mod_Version     Mod_VO_ID       Expansion_Pack  Mod_Name        Mod_Tag         Mod_Hak         Mod_Description Mod_IsSaveGame  Mod_Entry_Area  Mod_Entry_X     Mod_Entry_Y     Mod_Entry_Z     Mod_Entry_Dir_X Mod_Entry_Dir_Y Mod_Expan_List  Mod_DawnHour    Mod_DuskHour    Mod_MinPerHour  Mod_StartMonth  Mod_StartDay    Mod_StartHour   Mod_StartYear   Mod_XPScale     Mod_OnHeartbeat Mod_OnModLoad   Mod_OnModStart  Mod_OnClientEntrMod_OnClientLeavMod_OnActvtItem Mod_OnAcquirItemMod_OnUsrDefinedMod_OnUnAqreItemMod_OnPlrDeath  Mod_OnPlrDying  Mod_OnPlrLvlUp  Mod_OnSpawnBtnDnMod_OnPlrRest   Mod_StartMovie  Mod_CutSceneListMod_GVar_List   Mod_Area_list   Area_Name          ���sq��s	�       ����       	   ebo_m40aa    ImTraskUlgoensignwiththeRepublic       ����    m12aa k_pebn_pophawk       nw_o0_deathnw_o0_dying nw_o0_respawn  m12aa                            	   
                                                                      !   "   #   $   %   &   '   (   )   *                     UTS V3.28      �   (   �     x  ,  �  d     @   ����                                                                                                                !          "          #          $          %      
                                                                                              	     �?   
      A        �?                          �:        '        ���=                                     )                              )         :         K         \         m         ~         �         �         �         �         �         �         �                             
      (  Tag             LocName         TemplateResRef  Active          Continuous      Looping         Positional      RandomPosition  Random          Elevation       MaxDistance     MinDistance     RandomRangeX    RandomRangeY    Interval        IntervalVrtn    PitchVariation  Priority        Hours           Times           Volume          VolumeVrtn      Sounds          Sound           PaletteID       Comment            RadioChatter   �      radiochatteras_pl_rmilwal_01as_pl_rmilwal_02as_pl_rmilwal_03as_pl_rmilwal_04as_pl_rmilwal_05as_pl_rmilwal_06as_pl_rmilwal_07as_pl_rmilwal_08as_pl_rmilwal_09as_pl_rmilwal_10as_pl_rmilwal_11as_pl_rmilwal_12as_pl_rmilwal_13as_pl_rmilwal_14as_pl_rmilwal_15                                	   
                                       &   '                              	   
                  DLG V3.28   !   �  �  ,!  P   ,&    <)  x
  �3  �   ����           4          <          D   +       �          �                   P  ,                                  `  ,                                  p  ,                 (         0        �  ,       0         8         @         �  &       (        x  &               `  &       �        H  &       �        0	  &       �	  ,                              '                                           
                  
               '      	   8   
   
   F            
      P         $   
      T         �  
      _         �        h         t         u         ����
      �         �   
      �         ����        �?
      �                             
B      �                   0                    �       !          "   �      #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   �   
   1   �      2          3          4          5          6          7          8          9          :          ;          <       
   =   �   
   >   �      ?          @   ����   A          B          C         D          E          F          G          H          I   �       J       
      �         8   
      �         �  
      �         �        �         �         �         ����
      �         �   
      �         ����        �?
      �                             �A      �                   D                   �       !          "   �      #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   �   
   1   �       K         2          3          4          5          6          7          8          9          :          ;          <       
   =   �   
   >   �      ?          @   ����   A          B          C         D         E          F          G          H          I   �       J       
               L   
      	        �  
              �                )        :        ����
      ;        ?  
      @        ����        �?
      D                            �A      �                   X                   H      !          "   I     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   J  
   1   N      K         2          3          4          5          6          7          8          9          :          ;          <       
   =   R  
   >   V     ?          @   ����   A          B          C         D         E          F          G          H          I   Z      J       
      [        `   
      f        �  
      q        �        z        �        �        ����
      �        �  
      �        ����        �?
      �                            �A      �                   l                   �      !          "   �     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   �  
   1   �      K         2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J       
      �        t   
      �        �  
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                            .B      �                   �                          !          "        #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0     
   1         K         2          3          4          5          6          7          8          9          :          ;          <       
   =   
  
   >        ?          @   ����   A          B          C         D         E          F          G          H          I         J          L   �         �                                  ����
      !        %  
      &  
      *                                    M   �                   .      !          "   /     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   0  
   1   4     2          3          4          5          6          7          8          9          :          ;          <       
   =   8  
   >   <     ?          @   ����   A          B          C         D          E          F          G          H          I   @      J             �         A        M        N        ����
      O        S  
      T  
      X                                    M   �                   \      !          "   ]     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   ^  
   1   b     2          3          4          5          6          7          8          9          :          ;          <       
   =   f  
   >   j     ?          @   ����   A          B          C         D         E          F          G          H          I   n      J             �         o        {        |        ����
      }        �  
      �  
      �                                    M   �                   �      !          "   �     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   �  
   1   �     2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J             �         �        �        �        ����
      �        �  
      �  
      �                                    M   �                   �      !          "   �     #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0   �  
   1   �     2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J             �         �        �        �        ����
      �        �  
      �  
      �                                    M   �      2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J          N   �                    �     2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >        ?          @   ����   A          B          C         D          E          F          G          H          I         J          "        #           $           %          &          '          (          )          *          +          ,          -          .          /          .       
   0     
   1        O      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       Participant     StuntModel      CameraModel     VO_ID           EntryList       Speaker         AnimList        Animation       Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CamFieldOfView  CameraAnimation FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   SoundExists     ReplyList       EntriesList     StartingList    NextNodeID           Bastilam12aa_c02_char01   Carthm12aa_c02_char02m12aa_c02_cam   c02001       Bastila   Carth   ����     k_plev_fadein                                   Bastila   Bastila   Carth   $�      nm12aac02001000_                                    Carth   Bastila   Carth   %�      nm12aac02001001_                                    Bastila   Bastila   Carth   &�      nm12aac02001002_                                    Carth   Bastila   Carth   '�      nm12aac02001003_                                    ����                                         ����                                         ����                                         ����                                         ����     k_plev_fadeout                                                                        a  p  �        	   
                                                 !   "   #   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P               $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   Q   R   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   S   T   U   V   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �               	  
                                      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �              #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `       !  "  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  b  c  d  e  f  g  h  i  j  k  l  m  n  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                            1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I           !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                                  	      
                                                                                                                         