MOD V1.0        G   �   �   H  |   q                                                                                                                           footlker001         �  k_con_bastcon      �  k_con_bastcon      �  k_pebn_pophawk     �  k_pebn_pophawk     �  k_pend_bedmed      �  k_pend_bedmed      �  k_pend_bedsml      �  k_pend_bedsml      �  k_pend_bedtal   	   �  k_pend_bedtal   
   �  k_pend_bedtiny     �  k_pend_bedtiny     �  k_ptar_02af_en     �  k_ptar_02af_en     �  k_ptar_02af_ex     �  k_ptar_02af_ex     �  k_ptar_addcarth    �  k_ptar_addcarth    �  k_ptar_carbas_en   �  k_ptar_carbas_en   �  k_ptar_carstcs0    �  k_ptar_carstcs0    �  k_ptar_carstr_en   �  k_ptar_carstr_en   �  k_ptar_carth00     �  k_ptar_carth00     �  k_ptar_carth01     �  k_ptar_carth01     �  k_ptar_carth01x    �  k_ptar_carth01x    �  k_ptar_carth02x    �  k_ptar_carth02x     �  k_ptar_cspause  !   �  k_ptar_cspause  "   �  k_ptar_exitapt  #   �  k_ptar_exitapt  $   �  k_ptar_extapt   %   �  k_ptar_extapt   &   �  k_ptar_fadein   '   �  k_ptar_fadein   (   �  k_ptar_fadeout  )   �  k_ptar_fadeout  *   �  k_ptar_firstexit+   �  k_ptar_firstexit,   �  k_ptar_getsaber -   �  k_ptar_getsaber .   �  k_ptar_playdream/   �  k_ptar_playdream0   �  k_ptar_startcon 1   �  k_ptar_startcon 2   �  k_ptar_starttab 3   �  k_ptar_starttab 4   �  k_ptar_workbench5   �  m02af           6   �  m02af           7   �  m02af           8   �  module          9   �  p_mapnote       :   
  reptab002       ;   �  sw_door_taris004<   �  tar02_aptdoor   =   �  tar02_bastvision>   �  tar02_carbas    ?   �  tar02_carbast   @   �  tar02_carstr    A   �  tar02_carth     B   �  tar02_carth022  C   �  tar02_doordlg   D   �  tar02_start     E   �  tar02_swplayerapF   
  �	  a	  �  �   �  �   s  �    �,  J  �   �J  �   �K  �   �L  �   ZM  �   �M  �   jN  �   �N  �   zO  �  -Q  7  dS  2   �S  I   �S  �   �T  G  V  �  �Z    �a     b  �   �b  �   sc   
  sm     �m  v   hn     �n  r   Yo  �   �o  �   �p  /   �p  7   "q     9q  h   �q  Q   �q  [   Mr    it  Q  �w     �w  B   x     *x  �  �z  �   �{    �|  t   }  �   �}  N   �}  �  �  �   π  #  �  �   ~�  }   ��  .  �  �
  ��  �  Q�  �  ��  w  \�  Y  ��  �  M�    k�  8  ��  �j  ]f �  Ij ��  >
 �  * 
  4  � T� %  y Q  �. I  UTP V3.28      �   G   �  ;   �  �   -    I	     ����    8       �         �         �                      
                                   +                               7                          	          
                                                                                                                                     
      8                   '                                                                      <      !   =      "   >      #   ?      $   @      %   A      &   B      '   C      (   D      )   E      *   F      +   G       ,          -          .           /           0           1         2   H      3   I      4   J      5          6   K      7          8          6   [      7         8          6   k      7         8          6   {      7         8          6   �      7         8           9      
   :   �   Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   HasInventory    PartyInteract   BodyBag         Static          Type            Useable         OnEndDialogue   OnInvDisturbed  OnUsed          ItemList        InventoryRes    Repos_PosX      Repos_Posy      PaletteID       Comment            tar02_playerbin   �y         ����    footlker001                    g_i_medeqpmnt01g_i_medeqpmnt01g_i_medeqpmnt01g_i_progspike01g_i_progspike01
   Footlocker                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   E   F   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D                     NCS V1.0B   �      >��� �,            �,            h    ��������                             tar02_bastvision $   �       Bastila  �    =���    void main() {
	NoClicksFor(0.3);
	DelayCommand(0.1, AssignCommand(GetObjectByTag("Bastila", 0), ActionStartConversation(GetFirstPC(), "tar02_bastvision", 0, 0, 0, "", "", "", "", "", "")));
}

NCS V1.0B  �         +,              �  >L��       �    �     bastila  �����  ���� pebn_bastila  �����  ��������   �����  ��������   *    e,           ����        a  ?     ,                �  @                 �    �     mission  �����  ���� pebn_mission  �����  ��������   �����  ��������   *    e,           ����       v  ?     ,               �  @                 �    �     t3m4  �����  ���� 	pebn_t3m4  �����  ��������   �����  ��������   *    e,           ����       �  ?     ,               �  @                 �����     ) tat_ZaalbarTaken B          �     zaalbar  �����  ���� pebn_zaalbar  �����  ��������   �����  ��������   *    e,           ����       u  ?     ,               �  @             ,              Q  ?�     ����  ����  ��������         L����  �    ����  ? ����    ���� $���� ���� ���� ����       bastila  �����  ��������   *    1                ����   �         mission  �����  ��������   *    1                ����   �         t3m4  �����  ��������   *    1                ����   �         zaalbar  �����  ��������   *    1                ����   �     ����  ���� ����  �����  ���� ���� ����       bastila  �����  ����     mission  �����  ����     t3m4  �����  ����     zaalbar  �����  ����   ����  ��������    	    ����         "���� ����  ����    ����         "���� ����  ����    ����         "���� ����  ����    ����    	     "���� ����  ����    ����   *    ����     9    ���� $���� ���� ���� $      ����      ����   �  N      �    ����   � u      � ����  // Globals
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
//void sub11(int intParam1, string stringParam2, location locationParam3);
//void sub10(string stringParam1, int intParam2, int intParam3, float floatParam4);
//void sub9();
void sub8(object objectParam1);
void sub7();
void sub6(int intParam1, location locationParam2);
void sub5();
void sub4();
//void sub3(string stringParam1);
//void sub2();
void sub1(string stringParam1);

//void sub11(int intParam1, string stringParam2, location locationParam3) {
//	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
//}
/*
void sub10(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
/*
void sub9() {
	int int1 = 0;
	while (GetIsObjectValid(GetObjectByTag("gizka", int1))) {
		DelayCommand(0.2, DestroyObject(GetObjectByTag("gizka", int1), 0.0, 0, 0.0));
		(int1++);
		//sub10(("Destroy Gizka " + IntToString(int1)), 5, 5, 1.0);
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
			//sub10(("Spawn Gizka " + IntToString(int3)), 7, 7, 1.0);
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
*/
void sub8(object objectParam1) {
	ApplyEffectToObject(0, EffectHeal(500), objectParam1, 0.0);
	ApplyEffectToObject(0, EffectHealForcePoints(500), objectParam1, 0.0);
}

void sub7() {
	object oBastila = GetObjectByTag("bastila", 0);/*
	object oCarth = GetObjectByTag("carth", 0);
	object oCand = GetObjectByTag("cand", 0);
	object oHk47 = GetObjectByTag("hk47", 0);
	object oJolee = GetObjectByTag("jolee", 0);
	object oJuhani = GetObjectByTag("juhani", 0);*/
	object oMission = GetObjectByTag("mission", 0);
	object oT3m4 = GetObjectByTag("t3m4", 0);
	object oZaalbar = GetObjectByTag("zaalbar", 0);
	object object19;
	int int1 = 1;
	while ((int1 <= 9)) {
		if ((int1 == 1)) {
			object19 = oBastila;
		}/*
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
		}*/
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
	}/*
	oZaalbar = GetObjectByTag("cand", 0);
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
	}
	oZaalbar = GetObjectByTag("carth", 0);
	if (GetIsObjectValid(oZaalbar)) {
		if (GetGlobalBoolean("TAR_STARTED")) {
			DestroyObject(oZaalbar, 0.0, 0, 0.0);
		}
		else {
			SetGlobalBoolean("TAR_STARTED", 1);
		}
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
	}*/
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
/*
void sub3(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}
*/
/*
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
*/
/*
void sub1(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}
*/
void main() {
	//sub1("Run enter script");
	location location1;
	object oPebn_zaalbar;
	object oZaalbar;
	//int int1 = 0;
	//DelayCommand(0.5, sub2());
	sub4();
	DelayCommand(0.2, sub5());
	//SetGlobalBoolean("K_AT_EBON_HAWK", 1);
	if ((IsAvailableCreature(0)/* && (GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == 0)*/)) {
		oZaalbar = GetObjectByTag("bastila", 0);
		oPebn_zaalbar = GetWaypointByTag("pebn_bastila");
		location1 = GetLocation(oPebn_zaalbar);
		if (GetIsObjectValid(oPebn_zaalbar)) {
			DelayCommand(0.5, sub6(0, location1));
			DelayCommand(2.0, SaveNPCState(0));
		}
	}/*
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
	}*/
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
	//SetGlobalNumber("K_SWG_BASTILA_LEVEL", 0);
	//SetGlobalNumber("K_SWG_JOLEE_LEVEL", 0);
	//SetGlobalNumber("K_SWG_CARTH_LEVEL", 0);
	//if ((GetLoadFromSaveGame() == 0)) {
		//sub9();
	//}
}

NCS V1.0B   �       $ ����  ��������     W     ����     ����  f      ����     ����     F����      W     ����     ����  f      ����  ����     ���� ����  int StartingConditional() {
	object oPC = GetFirstPC();
	return (((GetLevelByClass(1, oPC) > 0) && (GetGender(oPC) == 0)) || ((GetLevelByClass(0, oPC) > 0) && (GetGender(oPC) == 1)));
}

NCS V1.0B   �       $ ����  ��������     W     ����     ����  f      ����     ����     F����     W     ����     ����  f      ����  ����     ���� ����  int StartingConditional() {
	object oPC = GetFirstPC();
	return (((GetLevelByClass(2, oPC) > 0) && (GetGender(oPC) == 0)) || ((GetLevelByClass(1, oPC) > 0) && (GetGender(oPC) == 1)));
}

NCS V1.0B   �       $ ����  ��������      W     ����     ����  f      ����  ����     ���� ����  int StartingConditional() {
	object oPC = GetFirstPC();
	return ((GetLevelByClass(0, oPC) > 0) && (GetGender(oPC) == 0));
}

NCS V1.0B   �       $ ����  ��������     W     ����     ����  f     ����  ����     ���� ����  int StartingConditional() {
	object oPC = GetFirstPC();
	return ((GetLevelByClass(2, oPC) > 0) && (GetGender(oPC) == 1));
}

NCS V1.0B  �           �   �     tar02_aptdoor  �����  ����,           ����   ,  ����    	Tar_Carth D                             Carth  �����  ����,             	   ����       	Tar_Carth E,           i    ��������                            tar02_carth022����   �   $    ����     ����      void main() {
  if (GetIsPC(GetEnteringObject())) {
    object oTar02_aptdoor = GetObjectByTag("tar02_aptdoor", 0);
    AssignCommand(oTar02_aptdoor, ActionCloseDoor(oTar02_aptdoor));
    if(GetGlobalNumber("Tar_Carth") == 0) {
      RevealMap([0.0,0.0,0.0],-1);
      object oCarth = GetObjectByTag("Carth");
      AssignCommand(oCarth, ClearAllActions());
      SetGlobalNumber("Tar_Carth",1);
      AssignCommand(GetFirstPC(), ActionStartConversation(oCarth, "tar02_carth022", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
    }
	}
}NCS V1.0B   2          ��������   �  void main() {
	ShowPartySelectionGUI("", 0xFFFFFFFF, 0xFFFFFFFF);
}

NCS V1.0B   �          ����  ���� p_carth    � ����?�           
pebn_carth  �  ,           2     tar02_swplayerapt  �    �   &,           ����      �   &          � ����  void main() {
	object object1 = OBJECT_SELF;
	AddAvailableNPCByTemplate(2, "p_carth");
	ActionMoveToObject(GetObjectByTag("pebn_carth", 0), 0, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("tar02_swplayerapt", 0))));
	ActionDoCommand(SetCommandable(1, object1));
	SetCommandable(0, OBJECT_SELF);
}

NCS V1.0B  �          ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   	����  ����   
����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����  L����  ����   ����  ����   ����  ����   ����  ����   ����  ����   ����  ����    ����  ����*     +  ����       �����         � ����             �"     �          h@�� �,   l        �,   l        e    ��������                             tar02_carbast $   �       bastila  �    @           ����   *    k'���� ����  �����  ��������          ,   ����  ����    > ����            ����  ����     ���� ���� ����  ����   *    s����     ����     ����     ����           )���� '���� ����  �         ����  // Globals
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
void sub3(object objectParam1, int intParam2);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
int sub1(object objectParam1);

void sub3(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
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
	if (((IsAvailableCreature(0) && IsAvailableCreature(2)) && (!sub1(OBJECT_SELF)))) {
		//sub2("SPAWNING CARTH AND BASTILA", 5, 5, 5.0);
		sub3(OBJECT_SELF, 1);
		NoClicksFor(2.2);
		//HoldWorldFadeInForDialog();
		DelayCommand(2.0, AssignCommand(GetObjectByTag("bastila", 0), ActionStartConversation(GetFirstPC(), "tar02_carbast", 0, 0, 0, "", "", "", "", "", "")));
	}
}

NCS V1.0B           void main() {
	//SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	//ActionPauseConversation();
	//ActionWait(8.0);
	//ActionResumeConversation();
}

NCS V1.0B   �         ����  ����     Carth02  �����  ��������   �����      	Tar_Carth D"     B      }�      �   
 K_CURRENT_PLANET E     ����  // Globals
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
*/
	//int intGLOB_11 = 10;
/*
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
//void sub3();
//void sub2(object objectParam1, int intParam2);
//int sub1(object objectParam1);
/*
void sub3() {
	object oCarth = GetObjectByTag("carth", 0);
	SetCommandable(1, oCarth);
	AssignCommand(oCarth, ActionStartConversation(GetFirstPC(), "tar02_carth022", 0, 0, 1, "", "", "", "", "", ""));
}
*/
/*
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
*/
void main() {
	object oEntering = GetEnteringObject();
	object oCarth = GetObjectByTag("Carth02", 0);
	//if ((GetIsPC(oEntering) && (!sub1(OBJECT_SELF)))) {
	if ((GetIsPC(oEntering)) && (!GetGlobalNumber("Tar_Carth"))) {
		//sub2(OBJECT_SELF, 1);
		//SetCommandable(0, oCarth);
		SetReturnStrref(0, 32228, 0);
		SetGlobalNumber("K_CURRENT_PLANET", 10);
		//SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		//sub3();
    //AssignCommand(oCarth, ActionStartConversation(GetFirstPC(), "tar02_carth022", 0, 0, 1, "", "", "", "", "", ""));
    //AssignCommand(GetFirstPC(), ActionStartConversation(oCarth, "tar02_carth022", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
    //ActionStartConversation(GetFirstPC(), "tar02_carth022", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
    //SetCommandable(1, oCarth);
    //AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("Carth02"), "tar02_carth022", 0, 0, 1, "", "", "", "", "", ""));
    //AssignCommand(GetFirstPC(), ActionStartConversation(oCarth, "tar02_carth022", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
  }
}

NCS V1.0B          	Tar_Carth D         ,   ����  ����    2 ����    &    ����  ����     ����  int StartingConditional() {
	if(GetGlobalNumber("Tar_Carth") == 0)
	{return TRUE;}
  else
  {return FALSE;}
}

NCS V1.0B          	Tar_Carth D        ,   ����  ����    2 ����    &    ����  ����     ����  int StartingConditional() {
	if(GetGlobalNumber("Tar_Carth") == 1)
	{return TRUE;}
else
{return FALSE;}
}

NCS V1.0B   �         
 K_CURRENT_PLANET E    	Tar_Carth E            ?�       �  � ?�    �  �   void main() {
	SetGlobalNumber("K_CURRENT_PLANET", 10);
	SetGlobalNumber("Tar_Carth", 1);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}

NCS V1.0B   /          	Tar_Carth E  void main() {
	SetGlobalNumber("Tar_Carth", 2);
}

NCS V1.0B           void main() {
	//ActionPauseConversation();
	//ActionWait(4.0);
	//ActionResumeConversation();
}

NCS V1.0B   Q                   tar02_sw02af 	tar_m02aa �  void main() {
	StartNewModule("tar_m02aa", "tar02_sw02af", "", "", "", "", "", "");
}

NCS V1.0B           
����  ����*     +  ����          �"    t          5    ��������                               $   �    5        �������� k_ptar_exitapt �  ����   *    k'���� ����  �����  ��������          ,   ����  ����    > ����            ����  ����     ���� ���� ����  ����   *    s����     ����     ����     ����           )���� '���� ����  �         ����  // Globals
	int intGLOB_11 = 10;

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
	if ((!sub1(OBJECT_SELF))) {//check door talked to flag
		sub2(OBJECT_SELF, 1);//set door talked to flag
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
		return;
	}
	ShowPartySelectionGUI("k_ptar_exitapt", 0xFFFFFFFF, 0xFFFFFFFF);
}

NCS V1.0B           void main() {
	//SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
}

NCS V1.0B           // Globals
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
void main() {
	//SetGlobalFadeOut(3.0, 2.0, 0.0, 0.0, 0.0);
}

NCS V1.0B   �              k_rapidtransit o        $  taris_armband   ����,            1    ����    k_ptar_exitapt �  ?       void main() {
  AddJournalQuestEntry("k_rapidtransit", 1, 0);
  CreateItemOnObject("taris_armband",GetFirstPC(),1,0);
	//DestroyObject(GetObjectByTag("carth", 0), 0.0, 1, 0.0);
	DelayCommand(0.5, ShowPartySelectionGUI("k_ptar_exitapt", 2, 0xFFFFFFFF));
}

NCS V1.0B   t       G_W_DBLSBR006 $   ����  ����    ����         ����     ����  void main() {
	object object1 = GetItemPossessedBy(GetFirstPC(), "G_W_DBLSBR006");
	GiveItem(object1, OBJECT_SELF);
	ActionEquipItem(object1, 4, 0);
}

NCS V1.0B   N         
 K_CURRENT_PLANET E    	Tar_Carth E  // Prototypes
/*
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
void main() {
	//SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	//sub1("PLAYING MOVIE...", 5, 5, 5.0);
	SetGlobalNumber("K_CURRENT_PLANET", 10);
	SetGlobalNumber("Tar_Carth", 1);
}

NCS V1.0B   �         
     �         s      
     �    ��������                               $   �    ^    ��������                             workbnch $   �  void main() {
	if(GetLocalBoolean(OBJECT_SELF, 10) == 0) {
    SetLocalBoolean(OBJECT_SELF, 10, 1);
		ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "");
	}
	else {
		ActionStartConversation(GetFirstPC(), "workbnch", 0, 0, 0, "", "", "", "", "", "");
	}
}

NCS V1.0B   �      ,            `    ��������                             workbnch $   �  =���    void main() {
  DelayCommand(0.1,ActionStartConversation(GetFirstPC(), "workbnch", 0, 0, 0, "", "", "", "", "", ""));
}

DLG V3.28        Q  �  P   �!  ?  '$  D	  k-  �   ����           D   ,       �         D  *       �        <        �  ,       <        �  ,       <         �  &       $        t  &               \  &      �  *       �        �  *       �  ,                              ;                                                   
            	          
                          
                                                   ����
                $   
      %         ����        �?
      )                                                                   -                  !   .      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   /   
   0   3      1          2          3          4          5          6          7          8          9          :          ;       
   <   7   
   =   ;      >          ?   ����             @          A         B          C          D          E          F          G   ?       H           I          J       
      @         $         D         P         Q         ����
      R         V   
      W         ����        �?
      [                                                (                  _                  !   `      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   a   
   0   e                  i                  !   j      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   k   
   0   o      1          2          3          4          5          6          7          8          9          :          ;       
   <   s   
   =   w      >          ?   ����             @          A         B         C          D          E          F          G   {       H       
      |         4         �         �         �         ����
      �         �   
      �         ����        �?
      �                                                8                  �                  !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����             @          A         B         C          D          E          F          G   �       H           I          J       
      �         @         �         �         �         ����
      �         �   
      �         ����        �?
      �                                                D                  �                  !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����             @          A         B         C          D          E          F          G   �       H           I          J          K   L         d         �                         ����
              
  
        
                                          L   h                                   !        "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /     
   0        1          2          3          4          5          6          7          8          9          :          ;       
   <     
   =   !     >          ?   ����             @          A         B          C          D          E          F          G   %      H             p         &        2        3        ����
      4        8  
      9  
      =                                   L   t                  A                 !   B     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   C  
   0   G     1          2          3          4          5          6          7          8          9          :          ;       
   <   K  
   =   O     >          ?   ����             @          A         B         C          D          E          F          G   S      H             |         T        h        i        ����
      j        n  
      o  
      s                                    L   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   w  
   =   {     >          ?   ����             @          A         B         C          D          E          F          G         H             �         �        �        �        ����
      �        �  
      �  
      �                                   L   �                  �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �     1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����             @          A         B         C          D          E          F          G   �      H           I             ����        �?   J             �         �        �        �        ����
      �        �  
      �  
      �                                    L   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����             @          A         B         C          D          E          F          G   �      H           I             ����        �?   J          M   �                   �     1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����             @          A         B          C          D          E          F          G         H          !        "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /     
   0     
   N        O      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       CameraModel     VO_ID           ConversationTypeAmbientTrack    UnequipItems    EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CameraID        FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   SoundExists     FacialAnim      ReplyList       EntriesList     StartingList    EditorInfo      NextNodeID            benc99        T�                                               U�                                                         ����                                                    ����                                                ����                                                V�                                           ����                                      W�       k_ptar_startcon                                   ����            k_ptar_starttab                                         0   v2.3.2 Apr 30, 2008 LastEdit: 27-May-21 15:18:39                            	   
           "  O  P                                                     2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L             !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �             	  
                                          �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �               !  "  #  $  %  &  '  (  )  *  +  ,  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N                                                             	      
                                                                   ARE V3.28      h   Q   4  L   �  J   >	  D  �
     ����    <      �                   0                                2   
                   
                                        	     �B   
     C      ff�B      3�C      9��>      V�>      �� ?      |aB?                                                       ��L>                                                                            �>        �>         �>   !     �>   "          #           $          %     �B   &     �B   '           (          )          *           +          ,     �B   -     �B   .           /          0   EP_     1           2           3   �       4          5          6          7          8          9           :          ;           <           =           >          ?          @          A          B         C     �?    D          E      
   F         G       
   F   +      E         C     �?    D          G          H   8      I   G      J   H      K   I   ID              Creator_ID      Version         Tag             Name            Comments        Map             MapResX         NorthAxis       WorldPt1X       WorldPt1Y       WorldPt2X       WorldPt2Y       MapPt1X         MapPt1Y         MapPt2X         MapPt2Y         MapZoom         Expansion_List  Flags           ModSpotCheck    ModListenCheck  AlphaTest       CameraStyle     DefaultEnvMap   Grass_TexName   Grass_Density   Grass_QuadSize  Grass_Ambient   Grass_Diffuse   Grass_Prob_LL   Grass_Prob_LR   Grass_Prob_UL   Grass_Prob_UR   MoonAmbientColorMoonDiffuseColorMoonFogOn       MoonFogNear     MoonFogFar      MoonFogColor    MoonShadows     SunAmbientColor SunDiffuseColor SunFogOn        SunFogNear      SunFogFar       SunFogColor     SunShadows      DynAmbientColor IsNight         LightingScheme  ShadowOpacity   DayNightCycle   ChanceRain      ChanceSnow      ChanceLightning WindPower       LoadScreenID    PlayerVsPlayer  NoRest          NoHangBack      PlayerOnly      Unescapable     StealthXPEnabledStealthXPLoss   StealthXPMax    Rooms           AmbientScale    DisableWeather  EnvAudio        RoomName        ForceRating     OnEnter         OnExit          OnHeartbeat     OnUserDefined      Untitled   3�            	   m02af_01a	   m02af_02ak_ptar_02af_en                                                                       !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   M   N   O   P         	   
                        C   D   E   F   G   H   I   J   K   L                GIT V3.28   $   �  '  �  6     I  e  �    �   ����          0   	      T         l   
      �   
      �         �         �         �                                  8        D        P        \        h        t        �        �                T        �        �        �        4        l        �     	   �     	   �     	        	           ,        H        d        �                                                 &         '                  \         E      	   E      
   �                  8ӯB      +�C                �{?      y�G�                            
               '   
      (                    ,         j�B      ��C                �I?      8   
      F         W   
      a                    q         /}�B      �AC                �I?                                            $         }         Z*�B      B�
C        �3                       !          "   0      #   ��3�   $    B>   %   ���<   #    �b�   $    \ǿ   %   ���<   #    ��=   $    �Z�   %   ���<   #          $          %   ���<   #    ��   $   �_�?   %   ���<      �         �u�B      ��C        �3                       !          "   H      #   ����   $    ���   %   ���<   #    � =   $    8�   %   ���<   #   ��?   $    �}�   %   ���<   #    ��=   $     �:   %   ���<   #          $          %   ���<   &   `       '      
      �         �   
      �      (   �      )   �       *          +   �       ,            ��B      )�C        �5      5?      �5�    '      
      �         �   
      �      (        )         *          +         ,            #�B      ^/C        ��                  �?    '      
      *        .  
      =     (   M     )   Y      *          +   e      ,            �V�B      ��	C         5      ��T?      J9�    '      
      q        u  
      �     (   �     )   �      *          +   �      ,            cJ�B      5�C                5�      �5�    '      
      �        �  
      �     (   �     )   �      *          +   �      ,            7�B      �^C        ��      ��þ      Ƃl�    '      
      �           
           (        )   +      *          +   7      ,            ���B      �)
C        ��      �5�      �5?    '      
      C        G  
      V     (   f     )   r      *          +   ~      ,            ذB      r5C         �      �5�      �5?    '      
      �        �  
      �     (   �     )   �      *          +   �      ,            {ɤB      f�
C      X��=      �9�      4�T�    '      
      �        �  
      �     (   �     )         *         +         ,            4��B      ғC                            �?    '      
                
      -     (   B     )   N      *          +   Z      ,            ;�B      �C       �      �5�      �5?    '      
      f        j  
      y     (   �     )   �      *          +   �      ,            ̆�B      ,�
C        �6      C:�      ��T�   -   �         �        Xi�B      �fC        ��      �I?      �        mڦB      v�C                ��@      �        *4�B      e�C         5      ��@      �        d:�B      lC                �I�   .   �      /         0   �     1     �B   2          3   �     4     �?   5     \B   /         0   �     1     �B   2          3        4     �?   5     \B   /         0        1    �B   2          3        4   23�?   5     �B   /         0   -     1     �B   2          3   9     4      @   5     \BUseTemplates    AreaProperties  AmbientSndDay   AmbientSndNight AmbientSndDayVolAmbientSndNitVolEnvAudio        MusicBattle     MusicDay        MusicNight      MusicDelay      Creature List   XPosition       YPosition       ZPosition       XOrientation    YOrientation    TemplateResRef  Door List       Tag             LinkedToModule  LinkedTo        LinkedToFlags   TransitionDestinX               Y               Z               Bearing         Encounter List  List            SoundList       StoreList       TriggerList     ZOrientation    Geometry        PointX          PointY          PointZ          WaypointList    Appearance      LocalizedName   Description     HasMapNote      MapNote         MapNoteEnabled  Placeable List  CameraList      CameraID        Position        Pitch           MicRange        Orientation     Height          FieldOfView     p_carthsw_door_taris004
   TarisDoor3        ����    tar02_aptdoor   tar02_aptdoor	tar_m02aa   tar02_sw02af   ����    tar02_carbastar02_carstr    tar02_swplayerap   tar02_swplayerapt    U         ����       ����        sw_waypoint001
   pebn_carth   \         ����       ����        sw_waypoint001   pebn_bastila   \         ����       ����        sw_waypoint001	   pebn_t3m4   \         ����       ����        sw_waypoint001   pebn_mission   \         ����       ����        sw_waypoint001   pebn_zaalbar   \         ����       ����        sw_waypoint001   tar02_sw02af   \         ����       ����        sw_waypoint001   tar02_swoopapt   \         ����       ����        sw_mapnote001   SW_MAPNOTE001   ]         ����       t�          sw_waypoint001   K_TARIS_APARTMENT   \         ����       ����        sw_waypoint001   tar02_wpcarbascs   \         ����       ����    	reptab002footlker001plc_bed1plc_bed1j�B}�	C    ��>        ^�l��ҧB��C    ��>        ^�l?��B/�C    `�w?        �}��~	�B� C    m�~?        6�Ƚ             '   (   )   *   +   Z   �   
                       	   
                                                                !   "   #   $   %   &   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	                                               !  "  #  $  %  &                                                      	   
                                                                               !   "   #   PTH V3.28      @  ,   P     �      �  x   8  \   ����                                                       	         (                           8                           H                           X                   !         h         &         '                                                                      ڞB      "�C                                           �B      ��C                                           _ݦB      �gC                                          ��B      �C                                          �y�B      cBC                                 
         7�B      �C                                          4`�B      _�CPath_Points     Path_Conections Destination     Conections      First_Conection X               Y                                  
                                                "   #   $   %   (   )   *   +               
                              	                           IFO V3.28      P   ,   `  ,      �   �  �   c     ����    +      +                                   
                            
      :   
      ^         b       	          
   n         To�B      ?�C                �5�      �5�                                                                            \         
         t         u         �         �         �         �         �          �      !   �      "   �      #   �      $   �      %   �      &   �      '   �      (         )         *         +   �   Mod_ID          Mod_Creator_ID  Mod_Version     Mod_VO_ID       Expansion_Pack  Mod_Name        Mod_Tag         Mod_Hak         Mod_Description Mod_IsSaveGame  Mod_Entry_Area  Mod_Entry_X     Mod_Entry_Y     Mod_Entry_Z     Mod_Entry_Dir_X Mod_Entry_Dir_Y Mod_Expan_List  Mod_DawnHour    Mod_DuskHour    Mod_MinPerHour  Mod_StartMonth  Mod_StartDay    Mod_StartHour   Mod_StartYear   Mod_XPScale     Mod_OnHeartbeat Mod_OnModLoad   Mod_OnModStart  Mod_OnClientEntrMod_OnClientLeavMod_OnActvtItem Mod_OnAcquirItemMod_OnUsrDefinedMod_OnUnAqreItemMod_OnPlrDeath  Mod_OnPlrDying  Mod_OnPlrLvlUp  Mod_OnSpawnBtnDnMod_OnPlrRest   Mod_StartMovie  Mod_CutSceneListMod_GVar_List   Mod_Area_list   Area_Name          �N��sq�F¡2��   m02af   ����       	   tar_m02af    ImTraskUlgoensignwiththeRepublic       ����    m02af k_pebn_pophawk             m02af                            	   
                                                                      !   "   #   $   %   &   '   (   )   *                     UTW V3.28      D      �      x  �   -  ,   Y      ����                  
                   
                        '                   3                 	      
   
   ?   Appearance      LinkedTo        TemplateResRef  Tag             LocalizedName   Description     HasMapNote      MapNote         MapNoteEnabled  PaletteID       Comment             	p_mapnote	   p_mapnote   ]         ����       _      r   On the Advanced tab, replace <Place text here> with whatever information you wish to appear on the Map of an area.                            	   
   UTP V3.28      D   7   �  7   H  t   �  �   �      ����    7   
                                   %                               /                          	          
                                                                                                                                     
      @                   �                                                                      D      !   E      "   F      #   G      $   H      %   I      &   J      '   K      (   L      )   M      *   N      +   O       ,           -           .           /           0           1         2   P      3   Q      4   R       5   
   
   6   b   Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   HasInventory    PartyInteract   BodyBag         Static          Type            Useable         OnEndDialogue   OnInvDisturbed  OnUsed          PaletteID       Comment         	   Workbench   �         ����    	reptab002k_ptar_workbench                  k_ptar_startcon   Repair Table 1                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   UTD V3.28      D   4   �  4   �  Z   N  �         ����    4   
                                   &                               7                          	           
                                                                                                                                    
      8                                       <                                                    <      !   =      "   >      #   ?      $   @      %   A      &   B      '   C      (   D      )   E      *   F      +   G      ,           -          .         /   H      0   I       1      
   2   J       3      Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   LoadScreenID    GenericType     Static          OnClick         OnFailToOpen    PaletteID       Comment         NotBlastable    
   TarisDoor3   ��         ����    sw_door_taris004                      Taris Door 3                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   UTD V3.28      D   4   �  4   �  t   h  �   8      ����    4   
                                   )                               7                          	           
                                                                                                                                    
      E                                       <                                                    I      !   J      "   K      #   L      $   M      %   N      &   O      '   P      (   ^      )   _      *   `      +   a      ,           -          .          /   b      0   c       1      
   2   d       3      Tag             LocName         Description     TemplateResRef  AutoRemoveKey   CloseLockDC     Conversation    Interruptable   Faction         Plot            Min1HP          KeyRequired     Lockable        Locked          OpenLockDC      PortraitId      TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        KeyName         AnimationState  Appearance      HP              CurrentHP       Hardness        Fort            Ref             Will            OnClosed        OnDamaged       OnDeath         OnDisarm        OnHeartbeat     OnLock          OnMeleeAttacked OnOpen          OnSpellCastAt   OnTrapTriggered OnUnlock        OnUserDefined   LoadScreenID    GenericType     Static          OnClick         OnFailToOpen    PaletteID       Comment         NotBlastable       tar02_aptdoor   5�         ����    tar02_aptdoortar02_doordlg           k_ptar_extapt         Taris Door 3                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   DLG V3.28   1   �  �  �G  Q   �L  �  :R     :i  �  ����           D   *       �         <        �  *       4        �  *       ,        |        �  *       x        �          *       �          *       �                X        �  *       P        �  *       H	        �	  *       @
         �
  )       4        �  (      $  )       �          )       �          )       �          )       �        �  (       �        �  )       �        �  )       �     	   �  )       |     
   �  (       l        �  (       \        �  )       P  ,                                                                                 
            	          
                                     
               ,                           /         ����
      0         4   
      5         ����        �?
      9                                        0                  =                  !   >      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   ?   
   0   C                   G                  !   H      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   I   
   0   M       1         2          3          4          5          6          7          8          9          :          ;          <       
   =   Q   
   >   U      ?          @   ����   A          B          C         D          E          F          G          H          I   Y       J       
      Z         <         ^         j         {         ����
      |         �   
      �         ����        �?
      �                                        @                  �                  !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �       1         2          3          4          5          6          7          8          9          :          ;          <       
   =   �   
   >   �      ?          @   ����   A          B          C         D         E          F          G          H          I   �       J       
      �         H         �         �         �         ����
      �         �   
      �         ����        �?
      �                                        L                  �                  !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �                   �              
   K   �      !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �       1         2          3          4          5          6          7          8          9          :          ;          <       
   =   �   
   >   �      ?          @   ����   A          B          C         D         E          F          G          H          I   �       J       
      �         X         �         �                 ����
                
              ����        �?
                                             \                                   !        "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /     
   0   !                 %                 !   &     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   '  
   0   +      1         2          3          4          5          6          7          8          9          :          ;          <       
   =   /  
   >   3     ?          @   ����   A          B          C         D         E          F          G          H          I   7      J       
      8        h         <        H        Y        ����
      Z        ^  
      _        ����        �?
      c                                       l                  g                 !   h     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   i  
   0   m      1         2          3          4          5          6          7          8          9          :          ;          <       
   =   q  
   >   u     ?          @   ����   A          B          C         D         E          F          G          H          I   y      J       
      z        t         ~        �        �        ����
      �        �  
      �        ����        �?
      �                                       x         	         �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �                 �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �                 �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1         2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                       �         
         �                 !         "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /     
   0         1         2          3          4          5          6          7          8          9          :          ;          <       
   =   	  
   >        ?          @   ����   A          B          C         D         E          F          G          H          I         J       
              �                 "        3        ����
      4        8  
      9        ����        �?
      =                                       �                  A                 !   B     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   C  
   0   G      1         2          3          4          5          6          7          8          9          :          ;          <       
   =   K  
   >   O     ?          @   ����   A          B          C         D         E          F          G          H          I   S      J       
      T        �         X        d        u        ����
      v        z  
      {        ����        �?
                                             �                  �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1         2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J          L   �         �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                    M   �                  �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D          E          F          G          H          I   �      J             �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                    M   �      2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >        ?          @   ����   A          B          C         D         E          F          G          H          I         J             �                         $        ����
      %        )  
      *        ����        �?
      .                                    M   �                  2                 !   3     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   4  
   0   8      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   <  
   >   @     ?          @   ����   A          B          C         D         E          F          G          H          I   D      J                     E        Q        b        ����
      c        g  
      h        ����        �?
      l                                    M                    p                 !   q     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   r  
   0   v      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   z  
   >   ~     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J                     �        �        �        ����
      �        �  
      �        ����        �?
      �                                    M                    �             
   K   �     !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J                     �        �        �        ����
      �        �  
      �        ����        �?
      �                                    M                     �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I         J             (                                ����
                
              ����        �?
                                          M   ,                                  !        "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /      
   0   $     2          3          4          5          6          7          8          9          :          ;          <       
   =   (  
   >   ,     ?          @   ����   A          B          C         D         E          F          G          H          I   0      J             4        1        =        N        ����
      O        S  
      T        ����        �?
      X                                    M   8                 \             
   K   ]     !   a     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   b  
   0   f      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   j  
   >   n     ?          @   ����   A          B          C         D         E          F          G          H          I   r      J             @        s                �        ����
      �        �  
      �        ����        �?
      �                                    M   D                 �             
   K   �     !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J             L        �        �        �        ����
      �        �  
      �        ����        �?
      �                                    M   P                 �                 !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �      1          2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D   	      E          F          G          H          I   �      J             X        �        �                 ����
                
              ����        �?
      
                                    M   \                                  !        "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /     
   0        2          3          4          5          6          7          8          9          :          ;          <       
   =     
   >        ?          @   ����   A          B          C         D   
      E          F          G          H          I          J             d        !        -        .        ����
      /        3  
      4        ����        �?
      8                                    M   h                 <                 !   =     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   >  
   0   B     2          3          4          5          6          7          8          9          :          ;          <       
   =   F  
   >   J     ?          @   ����   A          B          C         D         E          F          G          H          I   N      J             p        O        [        \        ����
      l        p  
      q     N            ����        �?
      �                                    M   t     2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D         E          F          G          H          I   �      J          O   x                  �     2          3          4          5          6          7          8          9          :          ;          <       
   =   �  
   >   �     ?          @   ����   A          B          C         D          E          F          G          H          I   �      J          !   �     "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �  
   0   �     P   	   DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       CameraModel     VO_ID           ConversationTypeAmbientTrack    UnequipItems    AnimatedCut     EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       SoundExists     waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   LinkComment     ReplyList       EntriesList     QuestEntry      StartingList    NextNodeID            visi05        X�      nm02afvisi05000_                                                  Y�      nm02afvisi05016_                                        Z�      nm02afvisi05002_                                                      [�      nm02afvisi05004_                                                  \�      nm02afvisi05006_                                        ]�      nm02afvisi05007_                                                            ^�      nm02afvisi05009_                                        _�      nm02afvisi05010_                                        `�      nm02afvisi05011_                                    a�      _m02afvisi05015_                                    ����     k_ptar_getsaber                         b�      _m02afvisi05001_                                    c�      _m02afvisi05003_                                    d�      _m02afvisi05014_                                        e�      _m02afvisi05005_                                    ����                                         f�      _m02afvisi05013_                                        g�      _m02afvisi05012_                                        h�      _m02afvisi05008_                                    ����                                         ����                                         ����     k_ptar_getsaber        k_swg_bastilatalk                                                            	   
            �  �  �                                                  F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _             !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �      )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B                  	  
                                               !  "  #  $  %  &  '  (  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                               !  "  #  $  �  �  �  �  �  �  �  �  �                     	  
  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                        *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C                         !  "  #  $  %  &  '  (  )  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7                                          8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                             !  "  #  $  %  &  '  (  )  *  +  ,                     	  
                    -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �      	            	                                                             
                                                                                !   #   %   '   )   +   -   /                                                           "          $          &          (          *          ,          .              0   UTT V3.28      D      �     8  H   �  l   �      ����       
                                                                      
      )                	          
                                                                                       -         .         /         0         1         B         C             
      D   Tag             TemplateResRef  LocalizedName   AutoRemoveKey   Faction         Cursor          HighlightHeight KeyName         LoadScreenID    PortraitId      Type            TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        OnDisarm        OnTrapTriggered OnClick         ScriptHeartbeat ScriptOnEnter   ScriptOnExit    ScriptUserDefinePaletteID       Comment            tar02_carbastar02_carbas   �T              k_ptar_carbas_en                                  	   
                                                   DLG V3.28   K   �  �  �k  R   �p  
  �z  �"  ��  H  ����           D   *       �         <  +       �        8        �        �  *       �        �  *       x        �  *       p        �  *       h        �  *       `        �  *       X        �        �        H	  *       �	     	   @
  *       �
     
   8  *       �        0  *       �        (  *       �                 p        �  +       l         �  '       X        �  '       D        �  '       0        �  '                t  '               `  '       �        L  '       �        8  '       �        $  '       �     	     '       �     
      '       �        �  '       �        �  '       t        �  *       p        �  '       \        �  '       H        �  '       4        �  '       $         t   '      !  '       �!          "  ,                              �                                                  
            	          
                          
               @                  #         4         ����
      5         9   
      :         ����        �?
      >                                        D                   I                     J      !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   K   
   /   O       0         1          2          3          4          5          6          7          8          9          :          ;       
   <   S   
   =   W      >          ?   ����   @          A          B         C          D          E          F          G          H   [       I       
      \         L         g         s         �         ����
      �         �   
      �      J   c         5             
      �                                        P                  �                     �      !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �   
   /   �                  �                     �      !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �   
   /   �                  �                     �      !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �   
   /   �       0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����   @          A          B         C         D          E          F          G          H   �       I       
      �         `         �         �         �         ����
      �         �   
      �         ����        �?
      �                                        d                  �                     �      !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �   
   /         0         1          2          3          4          5          6          7          8          9          :          ;       
   <     
   =        >          ?   ����   @          A          B         C         D          E          F          G          H         I       
              l                 '        8        ����
      9        =  
      >        ����        �?
      B                                       p                  F                    G     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   H  
   /   L      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   P  
   =   T     >          ?   ����   @          A          B         C         D          E          F          G          H   X      I       
      Y        x         b        n                ����
      �        �  
      �        ����        �?
      �                                       |                  �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                       �                  �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I       
      �        �         �                        ����
                
              ����        �?
      "                                       �                  &                    '     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   (  
   /   ,      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   0  
   =   4     >          ?   ����   @          A          B         C         D          E          F          G          H   8      I       
      9        �         B        N        _        ����
      `        d  
      e        ����        �?
      i                                       �                  m                    n     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   o  
   /   s        
         w                    x     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   y  
   /   }        	         �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                       �                  �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I       
      �        �         �        �        
        ����
                
              ����        �?
                                             �                                           !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .     
   /         0         1          2          3          4          5          6          7          8          9          :          ;       
   <   "  
   =   &     >          ?   ����   @          A          B         C   	      D          E          F          G          H   *      I       
      +        �         6        B        S        ����
      T        X  
      Y        ����        �?
      ]                                       �                  f                    g     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   h  
   /   l      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   p  
   =   t     >          ?   ����   @          A          B         C   
      D          E          F          G          H   x      I       
      y        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                       �                  �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I       
      �        �         �        �        �        ����
      �        �  
      �        ����        �?
      �                                       �                  �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �                                           !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .     
   /                    
                         !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .     
   /         0         1          2          3          4          5          6          7          8          9          :          ;       
   <     
   =        >          ?   ����   @          A          B         C         D          E          F          G          H         I       
              �         (        4        E        ����
      F        J  
      K     J            ����        �?
      Y                                       �                  ]                    ^     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   _  
   /   c      0         1          2          3          4          5          6          7          8          9          :          ;       
   <   g  
   =   k     >          ?   ����   @          A          B         C         D          E          F          G          H   o      I          K            T        p        �        �        ����
      �        �  
      �  
      �                                    L   X                 �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C          D          E          F          G          H   �      I             `        �        �        �        ����
      �        �  
      �  
      �                                    L   d                 �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             l        �                        ����
                
        
      #                                    L   p                 '            
   M   (         ,     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   -  
   /   1      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   5  
   =   9     >          ?   ����   @          A          B         C         D          E          F          G          H   =      I             x        >        J        [        ����
      \        `  
      a  
      e                                    L   |                 i            
   M   j         n     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   o  
   /   s      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   w  
   =   {     >          ?   ����   @          A          B         C         D          E          F          G          H         I             �        �        �        �        ����
      �        �  
      �  
      �                                    L   �                 �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             �        �        �        �        ����
      �        �  
      �  
      �                                    L   �                 �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H         I             �                        )        ����
      *        .  
      /  
      3                                    L   �                 7                    8     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   9  
   /   =      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   A  
   =   E     >          ?   ����   @          A          B         C         D          E          F          G          H   I      I             �        J        ^        o        ����
      p        t  
      u  
      y                                    L   �                 }                    ~     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .     
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             �        �        �        �        ����
      �        �  
      �  
      �                                    L   �                 �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             �        �        �        �        ����
      �        �  
      �  
      �                                    L   �                             
   M                 !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .     
   /         0          1          2          3          4          5          6          7          8          9          :          ;       
   <     
   =        >          ?   ����   @          A          B         C   	      D          E          F          G          H         I             �                $        5        ����
      6        :  
      ;  
      ?                                    L   �                 C                    D     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   E  
   /   I      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   M  
   =   Q     >          ?   ����   @          A          B         C   
      D          E          F          G          H   U      I             �        V        j        {        ����
      |        �  
      �  
      �                                    L   �        	         �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             �        �        �        �        ����
      �        �  
      �  
      �                                    L   �                 �            
   M   �         �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I             �        �        �                ����
                
        
                                          L   �        
                              !     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   "  
   /   &      0          1          2          3          4         5          6          7          8          9          :          ;       
   <   *  
   =   .     >          ?   ����   @          A          B         C         D          E          F          G          H   2      I             ����        �?   N             �        3        G        X        ����
      Y        ]  
      ^  
      b                                    L                     f                    g     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   h  
   /   l      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   p  
   =   t     >          ?   ����   @          A          B         C         D          E          F          G          H   x      I                     y        �        �        ����
      �        �  
      �  
      �                                    L                    �                    �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H   �      I                     �        �        �        ����
      �        �  
      �  
      �                                    L                    �            
   M   �         �     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �  
   /   �      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �  
   =   �     >          ?   ����   @          A          B         C         D          E          F          G          H    	      I                      	        	        	        ����
      	        #	  
      $	  
      (	                                    L   $                 ,	                    -	     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   .	  
   /   2	      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   6	  
   =   :	     >          ?   ����   @          A          B         C         D          E          F          G          H   >	      I             ,        ?	        S	        d	        ����
      r	        v	  
      w	  
      {	                                    L   0      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   	  
   =   �	     >          ?   ����   @          A          B         C         D          E          F          G          H   �	      I             4        �	        �	        �	        ����
      �	        �	  
      �	  
      �	                                    L   8                 �	            
   M   �	         �	     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �	  
   /   �	      0          1          2          3          4          5          6          7          8          9          :          ;       
   <   �	  
   =   �	     >          ?   ����   @          A          B         C         D          E          F          G          H   �	      I          O   @                  �	     1          2          3          4          5          6          7          8          9          :          ;       
   <   �	  
   =   �	     >          ?   ����   @          A          B         C          D          E          F          G          H   �	      I              �	     !           "           #          $          %          &          '          (          )          *          +          ,          -          ,       
   .   �	  
   /   �	  
   P   �	     Q      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       CameraModel     VO_ID           ConversationTypeAmbientTrack    UnequipItems    EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       SoundExists     waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   QuestEntry      ReplyList       EntriesList     LinkComment     FacialAnim      StartingList    EditorInfo      NextNodeID            carb01    Carth   �S      nm02aacarb01000_             Bastila                      Bastila   �S      nm02aacarb01002_         tar_bastsearch                                              Bastila   �S      nm02aacarb01032_                                    Bastila   �S      nm02aacarb01004_                                    Carth   �S      nm02aacarb01006_             Bastila                      Bastila   �S      nm02aacarb01008_                                    Bastila   �S      nm02aacarb01010_                                    Carth   �S      nm02aacarb01012_                                                        Carth   �S      nm02aacarb01025_             Bastila                      Bastila   �S      nm02aacarb01027_                                    Bastila   �S      nm02aacarb01014_             Carth                      Carth   �S      nm02aacarb01016_                                    Bastila   �S      nm02aacarb01018_                                                        Bastila   �S      nm02aacarb01021_      
   tar_escape                          ����           _m02aacarb01001_                                    �S      _m02aacarb01031_                                    ����           _m02aacarb01033_                                        �S      _m02aacarb01030_                                        �S      _m02aacarb01003_                                    ����           _m02aacarb01005_                                    ����           _m02aacarb01007_                                    ����           _m02aacarb01009_                                    ����           _m02aacarb01011_                                    �S      _m02aacarb01029_                                        �S      _m02aacarb01024_                                    ����           _m02aacarb01026_                                    ����           _m02aacarb01028_                                        �S      _m02aacarb01013_a_influence_inc                                   ����           _m02aacarb01015_                                    ����           _m02aacarb01017_                                    �S      _m02aacarb01023_                                        �S      _m02aacarb01020_                                    ����           _m02aacarb01022_k_con_bastcon                         �S      _m02aacarb01019_                                                        0   v2.3.2 Apr 30, 2008 LastEdit: 28-Feb-21 00:55:45                            	   
         �  }  �  �                                                  1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J                !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                              !  "  #  $  %  &  '  (  )  *  +  ,  -                     	  
                    .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    	  
                            ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E                     !  "  #  $  %  &  '  (  )  *  +  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                           !  "  #  $  %  &  �  �  �  �  �  �  �                     	  
      '  (  )  *  +  ,  -  .  /  0  1  2  3  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  b  c  d  e  f  g  h  i  j  k  l  m  n  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                           !  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  	  
        #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <                                         !  "  =  >  ?  @  A  B  C  D  E  F  G  H  I  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                     !  "  #  $  %  &  '  (  )  *  +  ,  �  �  �  �                     	  
            -  .  /  0  1  2  3  4  5  6  7  8  9  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  h  i  j  k  l  m  n  o  p  q  r  s  t  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                 !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  	                              !                                              
                                                                                                                 "      #   %   '   )   +   -   /   1   3   5   7   9   ;   =   ?   A   C   E   G   H          $          &          (          *          ,          .          0          2          4          6          8          :          <          >          @          B          D          F                  I      J   UTT V3.28      D      �     8  H   �  l   �      ����       
                                                                      
      )                	          
                                                                                       -         .         /         0         1         B         C             
      D   Tag             TemplateResRef  LocalizedName   AutoRemoveKey   Faction         Cursor          HighlightHeight KeyName         LoadScreenID    PortraitId      Type            TrapDetectable  TrapDetectDC    TrapDisarmable  DisarmDC        TrapFlag        TrapOneShot     TrapType        OnDisarm        OnTrapTriggered OnClick         ScriptHeartbeat ScriptOnEnter   ScriptOnExit    ScriptUserDefinePaletteID       Comment            tar02_carstrtar02_carstr   �T              k_ptar_carstr_en                                  	   
                                                   UTC V3.28        Y   0  M    
  �   �
  (  �  \   ����    G       ;          <          =          >          ?          @          A          B         D         E         F         G                 O         P          Q                                                                                         $   
   	   0      
   ;                                 
      <   
      @         ��                                                                                                       
          
                                                        !         "         #          $          %          &          '           (   2       )          *   ���>    +         ,   D      -   E      .   F      /   G      0   H      1   I      2   J      3   K      4   L      5   M      6   N      7   O      8   P      9   Q      :           ;           ;          ;           ;           ;           ;          ;           ;          <   $      =         =         =         =   ]      >   8      ?   <      @   @      A          B         C   H      D   L      E   R      E   `      E   q       F      
   G   �      H     �B    I           J           K          L       TemplateResRef  Race            FirstName       LastName        Appearance_Type Gender          Phenotype       PortraitId      Description     Tag             Conversation    IsPC            FactionID       Disarmable      Subrace         Deity           SoundSetFile    Plot            Interruptable   NoPermDeath     BodyBag         BodyVariation   TextureVar      Min1HP          Str             Dex             Con             Int             Wis             Cha             WalkRate        NaturalAC       HitPoints       CurrentHitPointsMaxHitPoints    ForcePoints     CurrentForce    RefBonus        WillBonus       FortBonus       GoodEvil        LawfulChaotic   ChallengeRating PerceptionRange ScriptHeartbeat ScriptOnNotice  ScriptSpellAt   ScriptAttacked  ScriptDamaged   ScriptDisturbed ScriptEndRound  ScriptEndDialoguScriptDialogue  ScriptSpawn     ScriptRested    ScriptDeath     ScriptUserDefineScriptOnBlocked SkillList       Rank            FeatList        Feat            TemplateList    SpecAbilityList ClassList       Class           ClassLevel      KnownList0      Equip_ItemList  EquippedRes     PaletteID       Comment         BlindSpot       Hologram        IgnoreCrePath   MultiplierSet   WillNotRender   tar02_carth   x         ����       ����       Carth02                       g_a_class4001g_w_blstrpstl001g_w_blstrpstl001                                	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   C   H   I   J   N   R   S   T   U   V   W   X   K   L   M                                 	   
                                       DLG V3.28   o  l  W)  � `   � �+  43 \�  �� �
  ����           T          \   ,               \  ,               \  +               X  )       �        L  -                         X  +                        `  -                        l  +                         t  -       (	         0	     	   �	  +       ,
         4
     
   �
  -       <         D        �  +       @         H        �  ,       H        �  *       @        �        �        0        �  *       (        x  *                p  *               h        �          *       �           *       �        �  *       �        �        @  *       �        8  *       �        0  *       �        (        x        �                l  *               d  *               `        �                \  *               T  *       �        P        �        �        L   *       �         D!  *       �!        <"  *       �"        4#  *       �#        ,$        |$  *       $%         t%  *       &     !   l&  *       '     "   d'  *       (        \(        �(        �(     #   L)  *       �)        H*        �*     $   �*  *       �+        �+        8,     %   �,  *       4-     &   �-  *       ,.        �.     '   �.  *       |/     (   �/  *       t0     )   �0  *       l1        �1        2     *   \2  *       3     +   T3  *       �3     ,   L4  *       �4     -   D5  *       �5        <6        �6        �6     .   07  *       �7     /   (8  *       �8        $9        x9     0   �9  *       t:     1   �:  *       l;     2   �;  *       d<     3   �<  +       `=        �=        >        \>     4   �>  *       X?     5   �?  *       P@     6   �@  *       HA        �A        �A        8B        �B     7   �B  *       �C        �C     8   (D  *       �D     9    E  *       �E        F        pF     :   �F  *       lG     ;   �G  *       dH     <   �H  *       \I     =   �I  *       TJ        �J        �J        PK     >   �K  *       LL     ?   �L  *       DM     @   �M  *       <N     A   �N  *       4O        �O        �O        (P     B   |P  *       $Q     C   tQ  *       R     D   lR  *       S     E   dS  +       T     F   `T  *       U         XU  (       �U        HV  +       �V        DW  (      �W  (       �X        �X        $Y        tY        �Y  (       dZ        �Z  (       T[        �[  (       D\        �\  (       4]        �]  (       $^     	   t^  )       _     
   h_  )       `        ``  )       a        Ta  )       �a        Hb  )       �b        <c  )       �c        0d  )       �d        $e  )       �e        f  )       �f        g  )       �g        h  )       �h        �h  )       �i        �i  )       �j        �j  )       �k        �k  )       xl        �l  )       lm        �m  )       `n        �n  )       To        �o  )       Hp        �p  )       <q        �q  )       0r        �r  )       (s        xs  )       t         lt  )       u     !   `u  )       v     "   Tv  )       �v     #   Lw  )       �w     $   @x  )       �x     %   4y  )       �y     &   (z  )       �z     '   {  )       �{     (   |  )       �|     )   }  )       �}     *   �}  )       �~     +   �~  )       �     ,   �  )       ��     -   ܀  )       ��     .   Ё  )       t�     /   Ă  +   0   p�  )       �     1   d�  )       �     2   X�  )       ��     3   L�  )       ��     4   @�  )       �     5   4�  )       ؈     6   (�  )       ̉     7   �  )       ��     8   �  )       ��     9   �  (       ��     :   �  )       ��     ;   �  )       ��     <   �  )       ��     =   ؏  )       |�     >   ̐  )       p�     ?   ��  )       d�     @   ��  )       X�     A   ��  )       L�     B   ��  )       @�     C   ��  )       4�     D   ��  )       (�     E   x�  )       �     F   l�  )       �     G   `�  )       �     H   T�  )       ��     I   H�  )       �     J   <�  )       ��     K   4�  )       ؝     L   ,�  *       Ԟ     M   $�  *       ̟     N    �  )       Ġ     O   �  )       ��     P   �  )       ��     Q   �  )       ��         ��  ,      ��  ,                                                                       
                     	      
   
   +                                         5                                           
      6         (        :         F         G         ����
      H         L   
      ]         ����        �?
      a                          !          "           #          $   ,     %          &   k       '          (   l      )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   m   
   7   q       8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   u   
   E   y      F          G   ����   H          I          J         K          L          M          N          O          P   }       Q       
      ~         4        �         �         �         ����
      �         �   
      �         ����        �?
      �                          !          "           #          $   8     %         &   �       '          (   �      )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �   
   7   �       8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �   
   E   �      F          G   ����   H          I          J         K         L          M          N          O          P   �       Q       
      �         @        �         �         �         ����
      �         �   
      �         ����        �?
      �                          H         G   ����    #          $   D     %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   	  
   7        9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K         L          M          N          O          P         Q       
              L                2        3        ����
      D        H  
      I        ����        �?
      M                           #          $   P     %         &   Q      '          (   R     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   S  
   7   W     9          :          ;          <          =          >          ?          @          A          B          C       
   D   [  
   E   _     F          G   ����   H          I          J         K         L          M          N          O          P   c      Q       
      d        X  
      h     R   �        r        �        �            
      �        �  
      �        ����        �?
      �                        S     
B   T   �      #          $   `     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q           8          U       
      �        h  
      �     R   �        �        �        �        ����
      �        �  
      �        ����        �?
      �                        S     
B   T   �      #          $   p     %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E         F          G   ����   H          I          J         K         L          M          N          O          P         Q       
              x  
      	     R   �                '        (            
      8        <  
      =        ����        �?
      A                        S     
B   T   �      #          $   �     %         &   E      '          (   F     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   G  
   7   K     9          :          ;          <          =          >          ?          @          A          B          C       
   D   O  
   E   S     F          G   ����   H          I          J         K         L          M          N          O          P   W      Q           8          U       
      X        �  
      \     R   �        f        r        s        ����
      �        �  
      �        ����        �?
      �                        S     
B   T   �      #          $   �     %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �  
      �     R   �        �        �        �            
      �        �  
      �        ����        �?
      �                        S     
B   T   �      #          $   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q           8          U       
      �        �  
      �     R   �                                ����
      #        '  
      (        ����        �?
      ,                        S     
B   T   �      #          $   �     %         &   0      '      
   V   1     (   5     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   6  
   7   :     9          :          ;          <          =          >          ?          @          A          B          C       
   D   >  
   E   B     F          G   ����   H          I          J         K   	      L          M          N          O          P   F      Q       
      G        �  
      K     R   �        U        i        j        ����
      z        ~  
              ����        �?
      �                        S     
B   T   �      #          $   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   
      L          M          N          O          P   �      Q           8          U       
      �        �  
      �     R   �        �        �        �        ����
      �        �  
      �        ����        �?
      �                        S     
B   T   �      #          $   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �        �        �                ����
                
              ����        �?
                               !          "           #          $   �     %   	      &   "      '          (   #     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   $  
   7   (      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   ,  
   E   0     F          G   ����   H          I          J         K         L          M          N          O          P   4      Q       
      5        �        9        E        V        ����
      W        [  
      \        ����        �?
      `                           #          $   �     %   P      &   d      '          (   e     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   f  
   7   j     %   O      &   n      '          (   o     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   p  
   7   t     %         &   x      '          (   y     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   z  
   7   ~     %   
      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $         %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �                �        �        �        ����
      �        �  
      �        ����        �?
                                 #          $        %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K         L          M          N          O          P         Q       
                              )        :        ����
      ;        ?  
      @        ����        �?
      D                           #          $        %   N      &   H      '          (   I     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   J  
   7   N     %   L      &   R      '          (   S     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   T  
   7   X     %         &   \      '          (   ]     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ^  
   7   b      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   f  
   E   j     F          G   ����   H          I          J         K         L          M          N          O          P   n      Q       
      o        (        s                �        ����
      �        �  
      �        ����        �?
      �                           #          $   ,     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        4        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   8     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        @        �                        ����
                
              ����        �?
                                 #          $   D     %         &   "      '          (   #     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   $  
   7   (     %         &   ,      '          (   -     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   .  
   7   2      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   6  
   E   :     F          G   ����   H          I          J         K         L          M          N          O          P   >      Q       
      ?        P        C        O        `        ����
      a        e  
      f        ����        �?
      j                           #          $   T     %         &   n      '          (   o     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   p  
   7   t      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   x  
   E   |     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        \        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   `     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        h        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   l     %   C      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7        %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %   )      &         '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6      
   7   $      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   (  
   E   ,     F          G   ����   H          I          J         K         L          M          N          O          P   0      Q       
      1        �        5        A        R        ����
      S        W  
      X        ����        �?
      \                           #          $   �     %         &   `      '          (   a     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   b  
   7   f      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   j  
   E   n     F          G   ����   H          I          J         K         L          M          N          O          P   r      Q       
      s        �        w        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   C      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   K      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �        �        �                ����
              	  
      
        ����        �?
                                 #          $   �     %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E         F          G   ����   H          I          J         K         L          M          N          O          P   $      Q       
      %        �        )        5        F        ����
      G        K  
      L        ����        �?
      P                           #          $   �     %   C      &   T      '      
   V   U     (   Y     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   Z  
   7   ^     %         &   b      '      
   V   c     (   g     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   h  
   7   l     %         &   p      '      
   V   q     (   u     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   v  
   7   z     %   K      &   ~      '      
   V        (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      	                           #          $   �     %         &   	      '          (   	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   	  
   7   	      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   	  
   E   	     F          G   ����   H          I          J         K         L          M          N          O          P   	      Q       
      	        �        	        )	        :	        ����
      ;	        ?	  
      @	        ����        �?
      D	                           #          $   �     %         &   H	      '          (   I	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   J	  
   7   N	      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   R	  
   E   V	     F          G   ����   H          I          J         K         L          M          N          O          P   Z	      Q       
      [	        �        _	        k	        |	        ����
      }	        �	  
      �	        ����        �?
      �	                           #          $   �     %         &   �	      '          (   �	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �	  
   7   �	     %         &   �	      '          (   �	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �	  
   7   �	      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �	  
   E   �	     F          G   ����   H          I          J         K         L          M          N          O          P   �	      Q       
      �	                 �	        �	        �	        ����
      �	        �	  
      �	        ����        �?
      �	                           #          $        %         &   �	      '          (   �	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �	  
   7   �	      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �	  
   E   �	     F          G   ����   H          I          J         K         L          M          N          O          P   �	      Q       
      �	                �	        �	        

        ����
      
        
  
      
        ����        �?
      
                           #          $        %          &   
      '          (   
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   
  
   7   
      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   "
  
   E   &
     F          G   ����   H          I          J         K          L          M          N          O          P   *
      Q       
      +
                /
        ;
        L
        ����
      M
        Q
  
      R
        ����        �?
      V
                           #          $        %   !      &   Z
      '          (   [
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   \
  
   7   `
      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   d
  
   E   h
     F          G   ����   H          I          J         K   !      L          M          N          O          P   l
      Q       
      m
        $        q
        }
        �
        ����
      �
        �
  
      �
        ����        �?
      �
                           #          $   (     %   )      &   �
      '          (   �
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �
  
   7   �
     %   $      &   �
      '          (   �
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �
  
   7   �
     %   #      &   �
      '          (   �
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �
  
   7   �
     %   "      &   �
      '          (   �
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �
  
   7   �
      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �
  
   E   �
     F          G   ����   H          I          J         K   "      L          M          N          O          P   �
      Q       
      �
        <        �
        �
        �
        ����
      �
        �
  
      �
        ����        �?
      �
                           #          $   @     %   '      &   �
      '      
   V   �
     (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %   %      &   
      '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %   "      &         '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7   "      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   &  
   E   *     F          G   ����   H          I          J         K   #      L          M          N          O          P   .      Q       
      /        P        3        ?        P        ����
      Q        U  
      V        ����        �?
      Z                           #          $   T     %   '      &   ^      '          (   _     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   `  
   7   d     %   %      &   h      '          (   i     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   j  
   7   n     %   "      &   r      '      
   V   s     (   w     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   x  
   7   |      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   $      L          M          N          O          P   �      Q       
      �        d        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   h     %   &      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   %      L          M          N          O          P   �      Q       
      �        p        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   t     %   '      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6      
   7        %   "      &         '      
   V   	     (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K   &      L          M          N          O          P         Q       
              �        #        /        @        ����
      A        E  
      F        ����        �?
      J                           #          $   �     %   (      &   N      '          (   O     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   P  
   7   T      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   X  
   E   \     F          G   ����   H          I          J         K   '      L          M          N          O          P   `      Q       
      a        �        e        q        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   *      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   (      L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   0      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   ,      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   +      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   )      L          M          N          O          P   �      Q       
      �        �        �        	                ����
                
               ����        �?
      $                           #          $   �     %   -      &   (      '          (   )     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   *  
   7   .      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   2  
   E   6     F          G   ����   H          I          J         K   *      L          M          N          O          P   :      Q       
      ;        �        ?        K        \        ����
      ]        a  
      b        ����        �?
      f                           #          $   �     %   .      &   j      '          (   k     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   l  
   7   p      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   t  
   E   x     F          G   ����   H          I          J         K   +      L          M          N          O          P   |      Q       
      }        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   /      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   ,      L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   7      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   3      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   1      &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %   +      &         '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K   -      L          M          N          O          P   "      Q       
      #        �        '        3        D        ����
      E        I  
      J        ����        �?
      N                           #          $   �     %   2      &   R      '          (   S     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   T  
   7   X      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   \  
   E   `     F          G   ����   H          I          J         K   .      L          M          N          O          P   d      Q       
      e        �        i        u        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   7      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   3      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   ,      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   /      L          M          N          O          P   �      Q       
      �                �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $        %   4      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D      
   E        F          G   ����   H          I          J         K   0      L          M          N          O          P         Q       
      	                                *        ����
      +        /  
      0        ����        �?
      4                           #          $        %   5      &   8      '          (   9     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   :  
   7   >      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   B  
   E   F     F          G   ����   H          I          J         K   1      L          M          N          O          P   J      Q       
      K                 O        [        l        ����
      m        q  
      r        ����        �?
      v                           #          $   $     %   6      &   z      '          (   {     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   |  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   2      L          M          N          O          P   �      Q       
      �        ,        �        �        �        ����
      �        �  
      �     W            ����        �?
      �                           #          $   0     %   1      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   7      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   :      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   +      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K   3      L          M          N          O          P   
      Q       
              D                        ,        ����
      -        1  
      2        ����        �?
      6                           #          $   H     %   8      &   :      '          (   ;     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   <  
   7   @      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   D  
   E   H     F          G   ����   H          I          J         K   4      L          M          N          O          P   L      Q       
      M        P        Q        ]        n        ����
      o        s  
      t        ����        �?
      x                           #          $   T     %   9      &   |      '          (   }     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ~  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   5      L          M          N          O          P   �      Q       
      �        \        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   `     %   ?      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   =      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   <      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   ;      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   :      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   6      L          M          N          O          P   �      Q       
      �        x        �        	                ����
                
               ����        �?
      $                           #          $   |     %   3      &   (      '      
   V   )     (   -     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   .  
   7   2     %   :      &   6      '      
   V   7     (   ;     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   <  
   7   @      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   D  
   E   H     F          G   ����   H          I          J         K   7      L          M          N          O          P   L      Q       
      M        �        Q        ]        n        ����
      o        s  
      t        ����        �?
      x                           #          $   �     %   >      &   |      '          (   }     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ~  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   8      L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   ;      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   <      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   :      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   9      L          M          N          O          P   �      Q       
      �        �        �                        ����
                
              ����        �?
                                 #          $   �     %   @      &          '          (   !     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   "  
   7   &      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   *  
   E   .     F          G   ����   H          I          J         K   :      L          M          N          O          P   2      Q       
      3        �        7        C        T        ����
      U        Y  
      Z        ����        �?
      ^                           #          $   �     %   A      &   b      '          (   c     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   d  
   7   h      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   l  
   E   p     F          G   ����   H          I          J         K   ;      L          M          N          O          P   t      Q       
      u        �        y        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   B      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   <      L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   ;      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   <      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %   =      &         '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        %   :      &         '      
   V        (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E   "     F          G   ����   H          I          J         K   =      L          M          N          O          P   &      Q       
      '        �        +        7        H        ����
      I        M  
      N        ����        �?
      R                           #          $   �     %   D      &   V      '          (   W     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   X  
   7   \      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   `  
   E   d     F          G   ����   H          I          J         K   >      L          M          N          O          P   h      Q       
      i        �        m        y        �        ����
      �        �  
      �        ����        �?
      �                           #          $   �     %   E      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   ?      L          M          N          O          P   �      Q       
      �        �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $         %   F      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   @      L          M          N          O          P   �      Q       
      �                �        �                ����
                
              ����        �?
                                 #          $        %   K      &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7   "     %   G      &   &      '          (   '     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   (  
   7   ,     %         &   0      '      
   V   1     (   5     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   6  
   7   :     %         &   >      '      
   V   ?     (   C     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   D  
   7   H      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   L  
   E   P     F          G   ����   H          I          J         K   A      L          M          N          O          P   T      Q       
      U                 Y        e        v        ����
      w        {  
      |        ����        �?
      �                           #          $   $     %   H      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   B      L          M          N          O          P   �      Q       
      �        ,        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          $   0     %   I      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   C      L          M          N          O          P   �      Q       
      �        8        �        �        �        ����
      �        �  
               ����        �?
                                 #          $   <     %   J      &         '          (   	     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   
  
   7         8         9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K   D      L          M          N          O          P         Q       
              D                +        <        ����
      =        A  
      B        ����        �?
      F                           #          $   H     %   M      &   J      '          (   K     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   L  
   7   P      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   T  
   E   X     F          G   ����   H          I          J         K   E      L          M          N          O          P   \      Q          U       
      ]        P        a        m        ~        ����
              �  
      �        ����        �?
      �                           #          $   T     %   Q      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8         9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   F      L          M          N          O          P   �      Q          X   \        �        �        �        �        ����
      �        0  
      1        ����        �?
      5                           #          Y   �     %         &   9      '          (   :     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ;  
   7   ?     9          :          ;          <          =          >          ?          @          A          B          C       
   D   C  
   E   G     F          G   ����   H          I          J         K          L          M          N          O          P   K      Q             �        L        `        a        ����
      b        f  
      g        ����        �?
      k                           #         Z     @@   [          \   o     Y   �     %         &   {      '          (   |     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   }  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %   
      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7        9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E   	     F          G   ����   H          I          J         K         L          M          N          O          P         Q             �                "        #        ����
      $        (  
      )        ����        �?
      -                           #          Y   �     %         &   1      '          (   2     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   3  
   7   7     9          :          ;          <          =          >          ?          @          A          B          C       
   D   ;  
   E   ?     F          G   ����   H          I          J         K         L          M          N          O          P   C      Q             �        D        X        Y        ����
      Z        ^  
      _        ����        �?
      c                           #          Y   �     %         &   g      '          (   h     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   i  
   7   m     9          :          ;          <          =          >          ?          @          A          B          C       
   D   q  
   E   u     F          G   ����   H          I          J         K         L          M          N          O          P   y      Q             �        z        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %   	      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q                     �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y        %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q                     �        �        �        ����
      �           
              ����        �?
                                 #          Y        %         &   	      '          (   
     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7        9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K         L          M          N          O          P         Q                             0        A        ����
      B        F  
      G        ����        �?
      K                           #          Y         %         &   O      '          (   P     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   Q  
   7   U      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   Y  
   E   ]     F          G   ����   H          I          J         K   	      L          M          N          O          P   a      Q             (        b        n                ����
      �        �  
      �        ����        �?
      �                           #          Y   ,     %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   
      L          M          N          O          P   �      Q             4        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   8     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             @        �        �                ����
                
              ����        �?
                                 #          Y   D     %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8          9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E   #     F          G   ����   H          I          J         K         L          M          N          O          P   '      Q             L        (        <        M        ����
      N        R  
      S        ����        �?
      W                           #          Y   P     %         &   [      '          (   \     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ]  
   7   a      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   e  
   E   i     F          G   ����   H          I          J         K         L          M          N          O          P   m      Q             X        n        z        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   \     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             d        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   h     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             p        �                        ����
                
              ����        �?
      !                           #          Y   t     %         &   %      '          (   &     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   '  
   7   +      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   /  
   E   3     F          G   ����   H          I          J         K         L          M          N          O          P   7      Q             |        8        D        U        ����
      V        Z  
      [        ����        �?
      _                           #          Y   �     %         &   c      '      
   V   d     (   h     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   i  
   7   m      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   q  
   E   u     F          G   ����   H          I          J         K         L          M          N          O          P   y      Q             �        z        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �                #        ����
      $        (  
      )        ����        �?
      -                           #          Y   �     %         &   1      '          (   2     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   3  
   7   7      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   ;  
   E   ?     F          G   ����   H          I          J         K         L          M          N          O          P   C      Q             �        D        P        a        ����
      b        f  
      g        ����        �?
      k                           #          Y   �     %         &   o      '          (   p     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   q  
   7   u      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   y  
   E   }     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E        F          G   ����   H          I          J         K         L          M          N          O          P         Q             �                        +        ����
      ,        0  
      1        ����        �?
      5                           #          Y   �     %         &   9      '          (   :     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ;  
   7   ?      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   C  
   E   G     F          G   ����   H          I          J         K         L          M          N          O          P   K      Q             �        L        X        i        ����
      j        n  
      o        ����        �?
      s                           #          Y   �     %         &   w      '          (   x     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   y  
   7   }      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             �        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   �     %         &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7   	      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K         L          M          N          O          P         Q                              *        ;        ����
      <        @  
      A        ����        �?
      E                           #          Y        %         &   I      '          (   J     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   K  
   7   O      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   S  
   E   W     F          G   ����   H          I          J         K         L          M          N          O          P   [      Q                     \        h        y        ����
      z        ~  
              ����        �?
      �                           #          Y        %         &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q                     �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y        %         &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K         L          M          N          O          P   �      Q             $        �        �                ����
                
              ����        �?
                                 #          Y   (     %          &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7         8          9          :          ;          <          =          >          ?          @          A          B          C       
   D     
   E        F          G   ����   H          I          J         K         L          M          N          O          P   !      Q             0        "        6        G        ����
      H        L  
      M        ����        �?
      Q                           #          Y   4     %   !      &   U      '          (   V     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   W  
   7   [      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   _  
   E   c     F          G   ����   H          I          J         K          L          M          N          O          P   g      Q             <        h        |        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   @     %   "      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   !      L          M          N          O          P   �      Q             H        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   L     %   '      &   �      '      
   V   �     (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   "      L          M          N          O          P   �      Q             T        �        �                ����
                
              ����        �?
                                 #          Y   X     %   #      &         '          (        )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6     
   7   !      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   %  
   E   )     F          G   ����   H          I          J         K   #      L          M          N          O          P   -      Q             `        .        :        K        ����
      L        P  
      Q        ����        �?
      U                           #          Y   d     %   $      &   Y      '          (   Z     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   [  
   7   _      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   c  
   E   g     F          G   ����   H          I          J         K   $      L          M          N          O          P   k      Q             l        l        x        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   p     %   %      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   %      L          M          N          O          P   �      Q             x        �        �        �        ����
      �        �  
      �        ����        �?
      �                           #          Y   |     %   &      &   �      '          (   �     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �  
   7   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �  
   E   �     F          G   ����   H          I          J         K   &      L          M          N          O          P   �      Q             �        �        �                 ����
                  
               ����        �?
                                  #          Y   �     %   '      &          '          (         )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6      
   7   !       8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   %   
   E   )      F          G   ����   H          I          J         K   '      L          M          N          O          P   -       Q             �        .         B         S         ����
      T         X   
      Y         ����        �?
      ]                            #          Y   �     %   (      &   a       '      
   V   b      (   f      )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   g   
   7   k       8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   o   
   E   s      F          G   ����   H          I          J         K   (      L          M          N          O          P   w       Q             �        x         �         �         ����
      �         �   
      �         ����        �?
      �                            #          Y   �     %   (      &   �       '          (   �      )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �   
   7   �       8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �   
   E   �      F          G   ����   H          I          J         K   )      L          M          N          O          P   �       Q             �        �         �         �         ����
      �         �   
      �         ����        �?
      �                            #          Y   �     %   )      &   �       '          (   �      )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �   
   7   �       8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �   
   E   �      F          G   ����   H          I          J         K   *      L          M          N          O          P   �       Q             �        �         !        !        ����
      !        !  
      !        ����        �?
      #!                           #          Y   �     %   *      &   '!      '      
   V   (!     (   ,!     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   -!  
   7   1!      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   5!  
   E   9!     F          G   ����   H          I          J         K   +      L          M          N          O          P   =!      Q             �        >!        J!        [!        ����
      \!        `!  
      a!        ����        �?
      e!                           #          Y   �     %   *      &   i!      '          (   j!     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   k!  
   7   o!      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   s!  
   E   w!     F          G   ����   H          I          J         K   ,      L          M          N          O          P   {!      Q             �        |!        �!        �!        ����
      �!        �!  
      �!        ����        �?
      �!                           #          Y   �     %   +      &   �!      '          (   �!     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �!  
   7   �!      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �!  
   E   �!     F          G   ����   H          I          J         K   -      L          M          N          O          P   �!      Q             �        �!        �!        �!        ����
      �!        �!  
      �!        ����        �?
      �!                           #          Y   �     %   ,      &   �!      '          (   �!     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �!  
   7   �!      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �!  
   E   "     F          G   ����   H          I          J         K   .      L          M          N          O          P   "      Q             �        "        "        -"        ����
      ="        A"  
      B"     W            ����        �?
      T"                           #          Y   �      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   X"  
   E   \"     F          G   ����   H          I          J         K   /      L          M          N          O          P   `"      Q          U             �        a"        m"        ~"        ����
      "        �"  
      �"        ����        �?
      �"                           #          Y   �     %   -      &   �"      '          (   �"     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �"  
   7   �"      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �"  
   E   �"     F          G   ����   H          I          J         K   0      L          M          N          O          P   �"      Q             �        �"        �"        �"        ����
      �"        �"  
      �"        ����        �?
      �"                           #          Y   �     %   .      &   �"      '          (   �"     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �"  
   7   �"      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �"  
   E   �"     F          G   ����   H          I          J         K   1      L          M          N          O          P   �"      Q             	        �"        �"        #        ����
      #        #  
      #        ����        �?
      #                           #          Y   	     %   /      &   #      '          (   #     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   #  
   7   #      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   #  
   E   #     F          G   ����   H          I          J         K   2      L          M          N          O          P   "#      Q             	        ##        /#        @#        ����
      A#        E#  
      F#        ����        �?
      J#                           #          Y   	     %   0      &   N#      '          (   O#     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   P#  
   7   T#      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   X#  
   E   \#     F          G   ����   H          I          J         K   3      L          M          N          O          P   `#      Q             	        a#        u#        �#        ����
      �#        �#  
      �#        ����        �?
      �#                           #          Y    	     %   1      &   �#      '          (   �#     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �#  
   7   �#      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �#  
   E   �#     F          G   ����   H          I          J         K   4      L          M          N          O          P   �#      Q             (	        �#        �#        �#        ����
      �#        �#  
      �#        ����        �?
      �#                           #          Y   ,	     %   2      &   �#      '          (   �#     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �#  
   7   �#      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �#  
   E   �#     F          G   ����   H          I          J         K   5      L          M          N          O          P   �#      Q             4	        �#        $        $        ����
      $        $  
      $        ����        �?
      $                           #          Y   8	     %   3      &    $      '          (   !$     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   "$  
   7   &$      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   *$  
   E   .$     F          G   ����   H          I          J         K   6      L          M          N          O          P   2$      Q             @	        3$        ?$        P$        ����
      Q$        U$  
      V$        ����        �?
      Z$                           #          Y   D	     %   4      &   ^$      '          (   _$     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   `$  
   7   d$      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   h$  
   E   l$     F          G   ����   H          I          J         K   7      L          M          N          O          P   p$      Q             L	        q$        �$        �$        ����
      �$        �$  
      �$        ����        �?
      �$                           #          Y   P	     %   5      &   �$      '          (   �$     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �$  
   7   �$      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �$  
   E   �$     F          G   ����   H          I          J         K   8      L          M          N          O          P   �$      Q             X	        �$        �$        �$        ����
      �$        �$  
      �$        ����        �?
      �$                           #          Y   \	     %   6      &   �$      '          (   �$     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �$  
   7   �$     9          :          ;          <          =          >          ?          @          A          B          C       
   D   �$  
   E   �$     F          G   ����   H          I          J         K   9      L          M          N          O          P   �$      Q             d	        �$        �$        
%        ����
      %        %  
      %        ����        �?
      %                           #          Y   h	     %   *      &   %      '      
   V   %     (   %     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   %  
   7   "%      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   &%  
   E   *%     F          G   ����   H          I          J         K   :      L          M          N          O          P   .%      Q             p	        /%        ;%        L%        ����
      M%        Q%  
      R%        ����        �?
      V%                           #          Y   t	     %   -      &   Z%      '      
   V   [%     (   _%     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   `%  
   7   d%      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   h%  
   E   l%     F          G   ����   H          I          J         K   ;      L          M          N          O          P   p%      Q             |	        q%        }%        �%        ����
      �%        �%  
      �%        ����        �?
      �%                           #          Y   �	     %   7      &   �%      '          (   �%     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �%  
   7   �%      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �%  
   E   �%     F          G   ����   H          I          J         K   <      L          M          N          O          P   �%      Q             �	        �%        �%        �%        ����
      �%        �%  
      �%        ����        �?
      �%                           #          Y   �	     %   8      &   �%      '          (   �%     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �%  
   7   �%      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �%  
   E   �%     F          G   ����   H          I          J         K   =      L          M          N          O          P   �%      Q             �	        �%        &        &        ����
      &        &  
      &        ����        �?
      &                           #          Y   �	     %   9      &    &      '          (   !&     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   "&  
   7   &&      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   *&  
   E   .&     F          G   ����   H          I          J         K   >      L          M          N          O          P   2&      Q             �	        3&        ?&        P&        ����
      Q&        U&  
      V&        ����        �?
      Z&                           #          Y   �	     %   :      &   ^&      '          (   _&     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   `&  
   7   d&      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   h&  
   E   l&     F          G   ����   H          I          J         K   ?      L          M          N          O          P   p&      Q             �	        q&        �&        �&        ����
      �&        �&  
      �&        ����        �?
      �&                           #          Y   �	     %   ;      &   �&      '          (   �&     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �&  
   7   �&      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �&  
   E   �&     F          G   ����   H          I          J         K   @      L          M          N          O          P   �&      Q             �	        �&        �&        �&        ����
      �&        �&  
      �&        ����        �?
      �&                           #          Y   �	     %   <      &   �&      '          (   �&     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �&  
   7   �&      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �&  
   E   �&     F          G   ����   H          I          J         K   A      L          M          N          O          P   �&      Q             �	        �&        '        "'        ����
      #'        ''  
      ('        ����        �?
      ,'                           #          Y   �	     %   =      &   0'      '          (   1'     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   2'  
   7   6'      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   :'  
   E   >'     F          G   ����   H          I          J         K   B      L          M          N          O          P   B'      Q             �	        C'        O'        `'        ����
      a'        e'  
      f'        ����        �?
      j'                           #          Y   �	     %   >      &   n'      '          (   o'     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   p'  
   7   t'      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   x'  
   E   |'     F          G   ����   H          I          J         K   C      L          M          N          O          P   �'      Q             �	        �'        �'        �'        ����
      �'        �'  
      �'        ����        �?
      �'                           #          Y   �	     %   ?      &   �'      '          (   �'     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �'  
   7   �'      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �'  
   E   �'     F          G   ����   H          I          J         K   D      L          M          N          O          P   �'      Q             �	        �'        �'        �'        ����
      �'        �'  
      �'        ����        �?
      �'                           #          Y   �	     %   @      &   �'      '          (   �'     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �'  
   7    (      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   (  
   E   (     F          G   ����   H          I          J         K   E      L          M          N          O          P   (      Q             �	        (        !(        2(        ����
      3(        7(  
      8(        ����        �?
      <(                           #          Y   �	     %   A      &   @(      '          (   A(     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   B(  
   7   F(      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   J(  
   E   N(     F          G   ����   H          I          J         K   F      L          M          N          O          P   R(      Q              
        S(        _(        p(        ����
      q(        u(  
      v(        ����        �?
      z(                           #          Y   
     %   B      &   ~(      '          (   (     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �(  
   7   �(      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �(  
   E   �(     F          G   ����   H          I          J         K   G      L          M          N          O          P   �(      Q             
        �(        �(        �(        ����
      �(        �(  
      �(        ����        �?
      �(                           #          Y   
     %   C      &   �(      '          (   �(     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �(  
   7   �(      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �(  
   E   �(     F          G   ����   H          I          J         K   H      L          M          N          O          P   �(      Q             
        �(        �(        �(        ����
      �(        )  
      )        ����        �?
      )                           #          Y   
     %   D      &   
)      '          (   )     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   )  
   7   )      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   )  
   E   )     F          G   ����   H          I          J         K   I      L          M          N          O          P   )      Q             $
        )        1)        B)        ����
      C)        G)  
      H)        ����        �?
      L)                           #          Y   (
     %   "      &   P)      '      
   V   Q)     (   U)     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   V)  
   7   Z)      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   ^)  
   E   b)     F          G   ����   H          I          J         K   J      L          M          N          O          P   f)      Q             0
        g)        s)        �)        ����
      �)        �)  
      �)        ����        �?
      �)                           #          Y   4
     %   B      &   �)      '      
   V   �)     (   �)     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �)  
   7   �)      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �)  
   E   �)     F          G   ����   H          I          J         K   K      L          M          N          O          P   �)      Q             <
        �)        �)        �)        ����
      �)        �)  
      �)        ����        �?
      �)                           #          Y   @
     %   E      &   �)      '          (   �)     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �)  
   7   �)      8          9          :         ;          <         =          >          ?          @          A          B          C       
   D   �)  
   E   �)     F          G   ����   H          I          J         K   L      L          M          N          O          P   �)      Q          U             H
        �)        
*        *        ����
      *         *  
      !*        ����        �?
      %*                           #          Y   L
     %         &   )*      '      
   V   **     (   .*     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   /*  
   7   3*      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   7*  
   E   ;*     F          G   ����   H          I          J         K   M      L          M          N          O          P   ?*      Q          U             T
        @*        L*        ]*        ����
      ^*        b*  
      c*        ����        �?
      g*                           #          Y   X
     %         &   k*      '      
   V   l*     (   p*     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   q*  
   7   u*      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   y*  
   E   }*     F          G   ����   H          I          J         K   N      L          M          N          O          P   �*      Q             `
        �*        �*        �*        ����
      �*        �*  
      �*        ����        �?
      �*                           #          Y   d
     %         &   �*      '      
   V   �*     (   �*     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �*  
   7   �*      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �*  
   E   �*     F          G   ����   H          I          J         K   O      L          M          N          O          P   �*      Q             l
        �*        �*        �*        ����
      �*        �*  
      �*        ����        �?
      �*                           #          Y   p
     %   F      &   �*      '          (   �*     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   �*  
   7   �*      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   �*  
   E   �*     F          G   ����   H          I          J         K   P      L          M          N          O          P   +      Q             x
        +        +        '+        ����
      (+        ,+  
      -+        ����        �?
      1+                           #          Y   |
     %         &   5+      '      
   V   6+     (   :+     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   ;+  
   7   ?+      8          9          :          ;          <          =          >          ?          @          A          B          C       
   D   C+  
   E   G+     F          G   ����   H          I          J         K   Q      L          M          N          O          P   K+      Q          ]   �
     %         &   L+     9          :          ;          <          =          >          ?          @          A          B          C       
   D   M+  
   E   Q+     F          G   ����   H          I          J         K          L          M          N          O          P   U+      Q          (   V+     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   W+  
   7   [+     %          &   _+     9          :          ;          <          =          >          ?          @          A          B          C       
   D   n+  
   E   r+     F          G   ����   H          I          J         K         L          M          N          O          P   v+      Q          (   w+     )           *           +          ,          -          .          /          0          1          2          3          4          5          4       
   6   x+  
   7   |+  
   ^   �+     _   G   DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       Participant     StuntModel      CameraModel     VO_ID           ConversationTypeComputerType    OldHitCheck     AmbientTrack    UnequipItems    AnimatedCut     UnequipHItem    EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CamHeightOffset TarHeightOffset FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       SoundExists     waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   Animation       CamFieldOfView  CameraAnimation FacialAnim      LinkComment     QuestEntry      ReplyList       EntriesList     FadeLength      FadeDelay       FadeColor       StartingList    EditorInfo      NextNodeID           PLAYERm02af_c10_char01m02af_c10_cam   cart02        m�            nm02aacart02000_       PLAYER                          n�           Fade To Blacknm02aacart02001_       PLAYER                          o�       k_ptar_carth01x            PLAYER                          ����            k_ptar_playdream                                       PLAYER   ����            k_ptar_carstcs0                                       PLAYER   i�       k_ptar_cspause                                           PLAYER   ����            k_ptar_carstcs0                                       PLAYER   j�       k_ptar_cspause                                           PLAYER   ����            k_ptar_carstcs0                                       PLAYER   k�       k_ptar_cspause                                           PLAYER   ����            k_ptar_carstcs0                                       PLAYER   l�       k_ptar_cspause                                       �S      nm02aacart02002_k_ptar_carth02x                                       �S      nm02aacart02003_                                                                       T      nm02aacart02005_                                        T      nm02aacart02006_                                        T      nm02aacart02007_                                                            T      nm02aacart02012_                                        T      nm02aacart02013_                                        T      nm02aacart02014_                                                  T      nm02aacart02016_                                        T      nm02aacart02017_                                        T      nm02aacart02018_                                                                                    	T      nm02aacart02096_                                        
T      nm02aacart02097_                                                                                      T      nm02aacart02093_                                        T      nm02aacart02094_                                                                                      T      nm02aacart02030_                                        T      nm02aacart02031_                                        T      nm02aacart02032_                                        T      nm02aacart02033_                                                  T      nm02aacart02035_                                        T      nm02aacart02036_                                        T      nm02aacart02037_                                        T      nm02aacart02038_                                                                      T      nm02aacart02089_                                                                        T      nm02aacart02082_                                                                T      nm02aacart02086_                                        T      nm02aacart02087_                                                          T      nm02aacart02084_                                        T      nm02aacart02040_                                        T      nm02aacart02041_                                                            T      nm02aacart02077_                                        T      nm02aacart02078_                                         T      nm02aacart02079_                                        !T      nm02aacart02050_                                                                          0T      nm02aacart02052_                                        1T      nm02aacart02053_                                                                        "T      nm02aacart02071_                                        #T      nm02aacart02072_                                        $T      nm02aacart02073_                                        %T      nm02aacart02074_         tar_planetinfo                                                                            &T      nm02aacart02055_                                        'T      nm02aacart02056_                                        (T      nm02aacart02057_                                                                                )T      nm02aacart02067_                                                          *T      nm02aacart02064_                                        +T      nm02aacart02065_                                                                        ,T      nm02aacart02059_                                        -T      nm02aacart02060_                                        .T      nm02aacart02061_                                        /T      nm02aacart02062_                                                                                      5T      nm02aacart02020_                                        6T      nm02aacart02021_                                        7T      nm02aacart02022_                                        8T      nm02aacart02023_                                                                              9T      nm02aacart02026_                                        :T      nm02aacart02027_                                        ;T      nm02aacart02028_                                        <T      nm02aacart02010_                                        �S      nm02aacart02101_                                    ����             w   After the falling to Taris mini-game, the screen will black out and player will awaken to see Carth standing over them.                               ����                                                            ����                                      ����                                                                              ����                                                ����                                                ����                                                ����                                                ����                                                ����           _m02aacart02005_                                    @T      _m02aacart02099_                                        AT      _m02aacart02004_                                    ����           _m02aacart02009_                                    ����           _m02aacart02011_                                    BT      _m02aacart02011_                                    ����           _m02aacart02019_                                    ����           _m02aacart02021_                                    CT      _m02aacart02098_                                        DT      _m02aacart02015_                                    ����           _m02aacart02026_                                    ����           _m02aacart02028_                                    ET      _m02aacart02095_                                    ����           _m02aacart02139_                                    FT      _m02aacart02092_                                    ����           _m02aacart02135_                                    GT      _m02aacart02029_                                    ����           _m02aacart02048_                                    ����           _m02aacart02050_                                    ����           _m02aacart02052_                                    HT      _m02aacart02091_                                        IT      _m02aacart02034_                                    ����           _m02aacart02056_                                    ����           _m02aacart02058_                                    ����           _m02aacart02060_                                    JT      _m02aacart02090_                                        KT      _m02aacart02088_                                    LT      _m02aacart02081_                                    MT      _m02aacart02085_                                    ����           _m02aacart02127_                                    NT      _m02aacart02083_                                    ����           _m02aacart02124_                                        OT      _m02aacart02039_                                    ����           _m02aacart02064_                                    QT      _m02aacart02080_                                        RT      _m02aacart02076_                                    ����           _m02aacart02114_                                    ����           _m02aacart02116_                                    ����           _m02aacart02118_k_ptar_addcarth        tar_bastsearch                ST      _m02aacart02049_                                    \T      _m02aacart02051_                                    ����           _m02aacart02081_                                    UT      _m02aacart02070_                                    ����           _m02aacart02105_                                    ����           _m02aacart02107_                                    ����           _m02aacart02109_                                    VT      _m02aacart02054_                                    ����           _m02aacart02085_                                    ����                                                WT      _m02aacart02069_                                        XT      _m02aacart02068_                                        YT      _m02aacart02066_                                    ZT      _m02aacart02063_                                    ����           _m02aacart02097_                                    [T      _m02aacart02058_                                    ����           _m02aacart02089_                                    ����           _m02aacart02091_                                    ����           _m02aacart02093_                                    ^T      _m02aacart02019_                                    ����           _m02aacart02032_                                    ����           _m02aacart02034_                                    ����           _m02aacart02036_                                    _T      _m02aacart02025_                                    ����           _m02aacart02041_                                    ����           _m02aacart02043_                                    ����           _m02aacart02045_                                        `T      _m02aacart02024_                                        aT      _m02aacart02009_a_influence_inc                                   ����           _m02aacart02016_                                        bT      _m02aacart02008_                                        4�      _m02aacart02145_                                        ?T      _m02aacart02100_                                    ����           _m02aacart02144_                                                        k_ptar_carth00                  0   v2.3.2 Apr 30, 2008 LastEdit: 28-Feb-21 13:57:24                      	   
                           R  �(  U)  V)                                                   !   "   #   $   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
          �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                                    !  "  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q      #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  R  S  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  T  U  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                              �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �               !  "  #  $  %  &  '  (  )  *  +  ,  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [      -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  \  ]  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  ^  _  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  
                                               !  �  �  �  �  �  �  �  �  �  �  �  �  �                     "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                 !  "  #  $  %  &  '  (  )  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9                                          :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                   �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    	  
                            }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
          �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  	  	  	  	  	  	  	  		  
	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �   	  	  	  	  	  	   	  !	  "	  #	  $	  %	  &	  '	  (	  )	  *	  ?	  @	  A	  B	  C	  D	  E	  F	  G	  H	  I	  J	  K	  L	  M	  N	  O	  P	  Q	  R	  S	  T	  U	  V	  W	  X	  +	  ,	  -	  .	  /	  0	  1	  2	  3	  4	  5	  6	  7	  8	  9	  :	  ;	  <	  =	  >	  Y	  Z	  [	  \	  ]	  ^	  _	  `	  a	  b	  c	  d	  e	  f	  g	  h	  }	  ~	  	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  i	  j	  k	  l	  m	  n	  o	  p	  q	  r	  s	  t	  u	  v	  w	  x	  y	  z	  {	  |	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  5
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
  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	  �	   
  
  
  
  
  
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
  1
  2
  3
  4
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
  Y
  Z
  [
  \
  ]
  ^
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
          	  
                                          �
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
                  !  "  #  $  %  &  '  (  )  *  +  ,  -  .  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                               !  "  #  $  %  &  '  (  )  *  +  ,  �                     	  
                  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
          �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L       !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �               �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        	  
                        U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n                         !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                       !  "  #  $  %  &  '  (  �  �  �  �  �                     	  
          )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
                                               !  "  #  �  �  �  �  �  �  �  �  �  �                     	  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �               �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �        	  
                        *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C                         !  "  #  $  %  &  '  (  )  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                       !  "  #  $  %  &  '  (  �  �  �  �  �                     	  
          )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  
                                               !  "  �  �  �  �  �  �  �  �  �  �  �                     #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  	  
                                  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  !  "  #  $  %  &  '  (  )  *  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                             !  "  #  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �             U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m          	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  
                                               !  �  �  �  �  �  �  �  �  �  �  �                     "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                           !  "  #  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  
                            ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E                     !  "  #  $  %  &  '  (  )  *  +  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
      !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :                                           ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                              !  "  #  $  %  &  '  (  )  *  +  ,  -  .                  	  
                      /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  	  
                                               !  "  �  �  �  �  �  �  �  �  �  �  �                     #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                            �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     !  "  #  $  %  &  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I             !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �     �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                  	  
            %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >                                     !  "  #  $  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                           !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3            	   
                                                4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �    !  !  !  !  !  !  !  !  !  	!  
!  !  !  !  !  !  !  !  !  !  !  !  �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   !  !  !  !  !  !  !  !  !  !   !  !!  "!  #!  $!  9!  :!  ;!  <!  =!  >!  ?!  @!  A!  B!  C!  D!  E!  F!  G!  H!  I!  J!  K!  L!  M!  N!  O!  P!  Q!  R!  %!  &!  '!  (!  )!  *!  +!  ,!  -!  .!  /!  0!  1!  2!  3!  4!  5!  6!  7!  8!  S!  T!  U!  V!  W!  X!  Y!  Z!  [!  \!  ]!  ^!  _!  `!  a!  v!  w!  x!  y!  z!  {!  |!  }!  ~!  !  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  b!  c!  d!  e!  f!  g!  h!  i!  j!  k!  l!  m!  n!  o!  p!  q!  r!  s!  t!  u!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!   "  "  "  "  "  "  "  "  "  	"  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  �!  
"  "  "  "  "  "  "  "  "  "  "  "  "  "  "  -"  ."  /"  0"  1"  2"  3"  4"  5"  6"  7"  8"  9"  :"  ;"  <"  ="  >"  ?"  @"  A"  B"  C"  D"  E"  F"  "  "  "  "  "  "  "   "  !"  ""  #"  $"  %"  &"  '"  ("  )"  *"  +"  ,"  G"  H"  I"  J"  K"  L"  M"  N"  O"  P"  Q"  R"  S"  T"  U"  j"  k"  l"  m"  n"  o"  p"  q"  r"  s"  t"  u"  v"  w"  x"  y"  z"  {"  |"  }"  ~"  "  �"  �"  �"  �"  V"  W"  X"  Y"  Z"  ["  \"  ]"  ^"  _"  `"  a"  b"  c"  d"  e"  f"  g"  h"  i"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"  �"   #  #  #  #  #  #  #  #  #  	#  
#  #  #  !#  "#  ##  $#  %#  &#  '#  (#  )#  *#  +#  ,#  -#  .#  /#  0#  1#  2#  3#  4#  5#  6#  7#  8#  9#  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #  #   #  :#  ;#  <#  =#  >#  ?#  @#  A#  B#  C#  D#  E#  F#  G#  H#  ^#  _#  `#  a#  b#  c#  d#  e#  f#  g#  h#  i#  j#  k#  l#  m#  n#  o#  p#  q#  r#  s#  t#  u#  v#  w#  I#  J#  K#  L#  M#  N#  O#  P#  Q#  R#  S#  T#  U#  V#  W#  X#  Y#  Z#  [#  \#  ]#  x#  y#  z#  {#  |#  }#  ~#  #  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#  �#   $  $  $  $  $  $  $  $  $  $  $  $   $  !$  "$  #$  $$  %$  &$  '$  ($  )$  *$  +$  ,$  -$  .$  /$  $  $  $  $  $  $  $  	$  
$  $  $  $  $  $  $  $  $  $  $  $  0$  1$  2$  3$  4$  5$  6$  7$  8$  9$  :$  ;$  <$  =$  >$  S$  T$  U$  V$  W$  X$  Y$  Z$  [$  \$  ]$  ^$  _$  `$  a$  b$  c$  d$  e$  f$  g$  h$  i$  j$  k$  l$  ?$  @$  A$  B$  C$  D$  E$  F$  G$  H$  I$  J$  K$  L$  M$  N$  O$  P$  Q$  R$  m$  n$  o$  p$  q$  r$  s$  t$  u$  v$  w$  x$  y$  z$  {$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  |$  }$  ~$  $  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$  
%  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %  %   %  !%  "%  #%  �$  �$  �$  �$  �$  �$  �$  �$  �$  �$   %  %  %  %  %  %  %  %  %  	%  $%  %%  &%  '%  (%  )%  *%  +%  ,%  -%  .%  /%  0%  1%  2%  G%  H%  I%  J%  K%  L%  M%  N%  O%  P%  Q%  R%  S%  T%  U%  V%  W%  X%  Y%  Z%  [%  \%  ]%  ^%  _%  `%  3%  4%  5%  6%  7%  8%  9%  :%  ;%  <%  =%  >%  ?%  @%  A%  B%  C%  D%  E%  F%  a%  b%  c%  d%  e%  f%  g%  h%  i%  j%  k%  l%  m%  n%  o%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  p%  q%  r%  s%  t%  u%  v%  w%  x%  y%  z%  {%  |%  }%  ~%  %  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%   &  &  &  &  &  &  &  &  &  	&  
&  &  &  &  &  &  &  &  &  &  &  &  &  &  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  �%  &  &  &  &  &  &  &  &   &  !&  "&  #&  $&  %&  &&  ;&  <&  =&  >&  ?&  @&  A&  B&  C&  D&  E&  F&  G&  H&  I&  J&  K&  L&  M&  N&  O&  P&  Q&  R&  S&  T&  '&  (&  )&  *&  +&  ,&  -&  .&  /&  0&  1&  2&  3&  4&  5&  6&  7&  8&  9&  :&  U&  V&  W&  X&  Y&  Z&  [&  \&  ]&  ^&  _&  `&  a&  b&  c&  x&  y&  z&  {&  |&  }&  ~&  &  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  d&  e&  f&  g&  h&  i&  j&  k&  l&  m&  n&  o&  p&  q&  r&  s&  t&  u&  v&  w&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&   '  '  '  '  '  '  '  '  '  	'  
'  '  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  �&  '  '  '  '  '  '  '  '  '  '  '  '  '  '  '  0'  1'  2'  3'  4'  5'  6'  7'  8'  9'  :'  ;'  <'  ='  >'  ?'  @'  A'  B'  C'  D'  E'  F'  G'  H'  I'  '  '  '  '  '   '  !'  "'  #'  $'  %'  &'  ''  ('  )'  *'  +'  ,'  -'  .'  /'  J'  K'  L'  M'  N'  O'  P'  Q'  R'  S'  T'  U'  V'  W'  X'  n'  o'  p'  q'  r'  s'  t'  u'  v'  w'  x'  y'  z'  {'  |'  }'  ~'  '  �'  �'  �'  �'  �'  �'  �'  �'  Y'  Z'  ['  \'  ]'  ^'  _'  `'  a'  b'  c'  d'  e'  f'  g'  h'  i'  j'  k'  l'  m'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'   (  (  (  (  (  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  �'  (  (  (  (  	(  
(  (  (  (  (  (  (  (  (  (  )(  *(  +(  ,(  -(  .(  /(  0(  1(  2(  3(  4(  5(  6(  7(  8(  9(  :(  ;(  <(  =(  >(  ?(  @(  A(  B(  (  (  (  (  (  (  (  (  (  (  (  (   (  !(  "(  #(  $(  %(  &(  '(  ((  C(  D(  E(  F(  G(  H(  I(  J(  K(  L(  M(  N(  O(  P(  Q(  g(  h(  i(  j(  k(  l(  m(  n(  o(  p(  q(  r(  s(  t(  u(  v(  w(  x(  y(  z(  {(  |(  }(  ~(  (  �(  R(  S(  T(  U(  V(  W(  X(  Y(  Z(  [(  \(  ](  ^(  _(  `(  a(  b(  c(  d(  e(  f(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(  �(   )  )  )  )  )  )  )  )  )  	)  
)  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )  )   )  !)  ")  #)  $)  %)  &)  ')  ()  ))  *)  +)  ,)  -)  .)  /)  0)  1)  2)  3)  4)  5)  6)  7)  8)  9)  :)  ;)  <)  =)  >)  ?)  @)  A)  B)  C)  D)  E)  F)  G)  H)  I)  J)  K)  L)  M)  N)  O)  P)  Q)  R)  S)  T)        G               
                        "   $   )   +   -   1   3   5   8   :   <   B   D   I   K   P   R   T   V   Y   [   ]   _   d   h   l   n   q   s   u   y   {   }      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                                        	                                                                                                 !          #          %   &   '   (          *          ,          .   /   0          2          4          6   7          9          ;          =   >   ?   @   A          C          E   F   G   H          J          L   M   N   O          Q          S          U          W   X          Z          \          ^          `   a   b   c          e   f   g          i   j   k          m          o   p          r          t          v   w   x          z          |          ~          �   �   �   �          �          �   �   �          �          �          �          �   �   �   �          �          �          �   �   �   �   �          �   �          �          �   �   �          �          �          �          �   �   �   �          �          �          �          �   �   �   �          �          �          �          �          �   R   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �              
                         "  $  &  (  )  +  -  /  1  3  5  7  9  ;  =  ?  A  C  E  G  I  K  M  O  Q  S  U  W  Y  [  ]  _  a  c  e  g  i  k         �          �                  �   �   �   �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �          �                                              	                                                                                                            !         #         %         '                 *         ,         .         0         2         4         6         8         :         <         >         @         B         D         F         H         J         L         N         P         R         T         V         X         Z         \         ^         `         b         d         f         h         j         l     m  n  DLG V3.28   	   �     �  M   �  �   u  `  �  P   ����           @   *       �         8  *       �         0  &       �          &       �  ,                                                                                 
            	          
                          
                                                   ����
                  
               ����        �?
      #                                                                   '                  !   (      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   )   
   0   -      1          2          3          4          5          6          7          8          9          :          ;       
   <   1   
   =   5      >          ?   ����             @          A         B          C          D          E          F          G   9       H       
      :                  >         J         K         ����
      L         P   
      Q         ����        �?
      U                                                                   Y                  !   Z      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   [   
   0   _      1          2          3          4          5          6          7          8          9          :          ;       
   <   c   
   =   g      >          ?   ����             @          A         B         C          D          E          F          G   k       H          I   (         4         l         x         y         ����
      z         ~   
         
      �                                     J   8                  �                  !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����             @          A         B          C          D          E          F          G   �       H             @         �         �         �         ����
      �         �   
      �   
      �                                     J   D      1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����             @          A         B         C          D          E          F          G   �       H          K   H                   �      1          2          3          4          5          6          7          8          9          :          ;       
   <   �   
   =   �      >          ?   ����             @          A         B          C          D          E          F          G   �       H          !   �      "           #           $          %          &          '          (          )          *          +          ,          -          .          -       
   /   �   
   0   �      L      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       CameraModel     VO_ID           ConversationTypeAmbientTrack    UnequipItems    EntryList       Speaker         AnimList        Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CameraID        FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   ReplyList       EntriesList     StartingList    NextNodeID                     p�                                               q�                                           ����                                         ����     k_ptar_firstexit                                                                     	   
         �   �                                                        2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J             !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                                                                            DLG V3.28      �      H  R   h    u  �  �  \   ����           @          H   +       �          �         L  +       �                   P  &       �        8  &       �  ,                                                                         
                     	      
   
   +                   /                       
      0            
      4         �        >         J         K         ����
      L         P   
      Q         ����        �?
      U                             
B      �                 !         "          #   Y       $          %   Z      &           '           (          )          *          +          ,          -          .          /          0          1          2          1       
   3   [   
   4   _      5          6          7          8          9          :          ;          <          =          >          ?       
   @   c   
   A   g      B          C   ����   D          E          F         G          H          I          J          K          L   k       M       
      l         $   
      p         �        z         �         �         ����
      �         �   
      �         ����        �?
      �                             
B      �                 !   ,      "         #   �       $          %   �      &           '           (          )          *          +          ,          -          .          /          0          1          2          1       
   3   �   
   4   �      5          6          7          8          9          :          ;          <          =          >          ?       
   @   �   
   A   �      B          C   ����   D          E          F         G         H          I          J          K          L   �       M          N   4         @         �         �         �         ����
      �         �   
      �   
      �                                      O   D      "         #   �       $          %   �      &           '           (          )          *          +          ,          -          .          /          0          1          2          1       
   3   �   
   4   �      5          6          7          8          9          :          ;          <          =          >          ?       
   @   �   
   A   �      B          C   ����   D          E          F         G          H          I          J          K          L   �       M             L         �         �         �         ����
      �         �   
      �   
      �                                      O   P      5          6          7          8          9          :          ;          <          =          >          ?       
   @   �   
   A   �      B          C   ����   D          E          F         G         H          I          J          K          L   �       M          P   T      "          #   �      5          6          7          8          9          :          ;          <          =          >          ?       
   @   �   
   A   �      B          C   ����   D          E          F         G          H          I          J          K          L         M          %        &           '           (          )          *          +          ,          -          .          /          0          1          2          1       
   3     
   4   	     Q      DelayEntry      DelayReply      NumWords        EndConversation EndConverAbort  Skippable       StuntList       Participant     StuntModel      CameraModel     VO_ID           ConversationTypeAmbientTrack    UnequipItems    EntryList       Speaker         AnimList        Animation       Text            VO_ResRef       Script          Delay           Comment         Sound           Quest           PlotIndex       PlotXPPercentageListener        WaitFlags       CameraAngle     CamFieldOfView  CameraAnimation FadeType        RepliesList     Index           Active          IsChild         Active2         Logic           Not             Not2            Param1          Param1b         Param2          Param2b         Param3          Param3b         Param4          Param4b         Param5          Param5b         ParamStrA       ParamStrB       waitFlags       ActionParam1    ActionParam1b   ActionParam2    ActionParam2b   ActionParam3    ActionParam3b   ActionParam4    ActionParam4b   ActionParam5    ActionParam5b   ActionParamStrA ActionParamStrB AlienRaceNode   CamVidEffect    CameraID        Changed         Emotion         NodeID          NodeUnskippable PostProcNode    RecordNoVOOverriRecordVO        Script2         VOTextChanged   ReplyList       EntriesList     StartingList    NextNodeID           PLAYERm02af_c10_char01m02af_c10_cam            PLAYER   r�                                               PLAYER   s�                                           ����                                         ����                                                                     	   
               �   �                                                            !   "   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O         #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   P   Q   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   R   S   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                                                                       
          	                 UTW V3.28      D      �      x  �     ,   I      ����                  
                   
               *         6                    B                 	      
   
   N   Appearance      LinkedTo        TemplateResRef  Tag             LocalizedName   Description     HasMapNote      MapNote         MapNoteEnabled  PaletteID       Comment             tar02_swplayerap   tar02_swplayerapt    U         ����       ����    S   This is a starting location.  An area may contain any number of starting locations.                            	   
   