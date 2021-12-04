// Globals
	int intGLOB_1 = 1;
	int intGLOB_2 = 2;
	int intGLOB_3 = 3;
	int intGLOB_4 = 4;
	int intGLOB_5 = 5;
	int intGLOB_6 = 6;
	int intGLOB_7 = 3;
	int intGLOB_8 = 4;
	int intGLOB_9 = 5;
	int intGLOB_10 = 6;
	int intGLOB_11 = 7;
	int intGLOB_12 = 1;
	int intGLOB_13 = 2;
	int intGLOB_14 = 3;
	int intGLOB_15 = 4;
	int intGLOB_16 = 5;
	int intGLOB_17 = 6;
	int intGLOB_18 = 7;
	int intGLOB_19 = 8;
	int intGLOB_20 = 9;
	int intGLOB_21 = 10;
	int intGLOB_22 = 11;
	int intGLOB_23 = 12;
	int intGLOB_24 = 13;
	int intGLOB_25 = 14;
	int intGLOB_26 = 15;
	int intGLOB_27 = 16;
	int intGLOB_28 = 17;
	int intGLOB_29 = 18;
	int intGLOB_30 = 19;
	int intGLOB_31 = 20;
	int intGLOB_32 = 21;
	int intGLOB_33 = 22;
	int intGLOB_34 = 23;
	int intGLOB_35 = 24;
	int intGLOB_36 = 25;
	int intGLOB_37 = 26;
	int intGLOB_38 = 27;
	int intGLOB_39 = 28;
	int intGLOB_40 = 29;
	int intGLOB_41 = 30;
	int intGLOB_42 = 59;
	int intGLOB_43 = 0;
	int intGLOB_44 = 1;
	int intGLOB_45 = 2;
	int intGLOB_46 = 29;
	int intGLOB_47 = 30;
	int intGLOB_48 = 34;
	int intGLOB_49 = 35;
	int intGLOB_50 = 36;
	int intGLOB_51 = 37;
	int intGLOB_52 = 38;
	int intGLOB_53 = 39;
	int intGLOB_54 = 41;
	int intGLOB_55 = 42;
	int intGLOB_56 = 46;
	int intGLOB_57 = 47;
	int intGLOB_58 = 15;
	int intGLOB_59 = 10;
	int intGLOB_60 = 5;
	int intGLOB_61 = 2;
	int intGLOB_62;
	int intGLOB_63;
	int intGLOB_64;
	object objectGLOB_1;
	int intGLOB_65;
	int intGLOB_66;
	int intGLOB_67;
	int intGLOB_68;
	int intGLOB_69;
	int intGLOB_70;
	int intGLOB_71 = 1;
	int intGLOB_72 = 2;
	int intGLOB_73 = 3;
	int intGLOB_74 = 20;
	int intGLOB_75 = 21;
	int intGLOB_76 = 22;
	int intGLOB_77 = 23;
	int intGLOB_78 = 24;
	int intGLOB_79 = 25;
	int intGLOB_80 = 26;
	int intGLOB_81 = 27;
	int intGLOB_82 = 28;
	int intGLOB_83 = 31;
	int intGLOB_84 = 32;
	int intGLOB_85 = 33;
	int intGLOB_86 = 40;
	int intGLOB_87 = 43;
	int intGLOB_88 = 44;
	int intGLOB_89 = 45;
	int intGLOB_90 = 48;
	int intGLOB_91 = 49;
	int intGLOB_92 = 50;
	int intGLOB_93 = 51;
	int intGLOB_94 = 52;
	int intGLOB_95 = 53;
	int intGLOB_96 = 54;
	int intGLOB_97 = 55;
	int intGLOB_98 = 56;
	int intGLOB_99 = 57;
	int intGLOB_100 = 58;
	int intGLOB_101 = 60;
	int intGLOB_102 = 61;
	int intGLOB_103 = 62;
	int intGLOB_104 = 63;
	int intGLOB_105 = 64;
	int intGLOB_106 = 65;
	int intGLOB_107 = 66;
	int intGLOB_108 = 67;
	int intGLOB_109 = 68;
	int intGLOB_110 = 69;
	int intGLOB_111 = 70;
	int intGLOB_112 = 71;
	int intGLOB_113 = 72;
	int intGLOB_114 = 1;
	int intGLOB_115 = 2;
	int intGLOB_116 = 3;
	int intGLOB_117 = 4;

// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
			}
			else {
				if ((int1 == 1004)) {
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
							object oPC = GetFirstPC();
							object oNearestSta_plc_captive2 = GetNearestObjectByTag("sta_plc_captive2", OBJECT_SELF, 1);
							object oNearestSta_plc_captive3 = GetNearestObjectByTag("sta_plc_captive3", OBJECT_SELF, 1);
							object oNearestSta_plc_captive4 = GetNearestObjectByTag("sta_plc_captive4", OBJECT_SELF, 1);
							object oNearestSta_plc_captive5 = GetNearestObjectByTag("sta_plc_captive5", OBJECT_SELF, 1);
							object oNearestSta_plc_captive6 = GetNearestObjectByTag("sta_plc_captive6", OBJECT_SELF, 1);
							object oNearestSta_plc_captive7 = GetNearestObjectByTag("sta_plc_captive7", OBJECT_SELF, 1);
							object oNearestSta_plc_captive8 = GetNearestObjectByTag("sta_plc_captive8", OBJECT_SELF, 1);
							int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
							if (((GetGlobalNumber("STA_MALAK_TALK") == 2) && (nCurHP == 1))) {
								if ((GetIsObjectValid(oNearestSta_plc_captive2) && (GetGlobalNumber("STA_MALAK_JEDI") <= 1))) {
									ActionMoveToObject(oNearestSta_plc_captive2, 1, 1.0);
									ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive2, 0);
									int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
									int int10 = GetCurrentHitPoints(OBJECT_SELF);
									effect efHeal = EffectHeal((nMaxHP - int10));
									ApplyEffectToObject(0, efHeal, OBJECT_SELF, 0.0);
									int nMaxFP = GetMaxForcePoints(OBJECT_SELF);
									int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
									effect effect3 = EffectHealForcePoints((nMaxFP - nCurFP));
									ApplyEffectToObject(0, effect3, OBJECT_SELF, 0.0);
									AssignCommand(oNearestSta_plc_captive2, ActionPlayAnimation(201, 1.0, 0.0));
									SetGlobalNumber("STA_MALAK_JEDI", 2);
								}
								else {
									if ((GetIsObjectValid(oNearestSta_plc_captive3) && (GetGlobalNumber("STA_MALAK_JEDI") <= 2))) {
										ActionMoveToObject(oNearestSta_plc_captive3, 1, 1.0);
										ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive3, 0);
										int int18 = GetMaxHitPoints(OBJECT_SELF);
										int int20 = GetCurrentHitPoints(OBJECT_SELF);
										effect effect5 = EffectHeal((int18 - int20));
										ApplyEffectToObject(0, effect5, OBJECT_SELF, 0.0);
										int int22 = GetMaxForcePoints(OBJECT_SELF);
										int int24 = GetCurrentForcePoints(OBJECT_SELF);
										effect effect7 = EffectHealForcePoints((int22 - int24));
										ApplyEffectToObject(0, effect7, OBJECT_SELF, 0.0);
										AssignCommand(oNearestSta_plc_captive3, ActionPlayAnimation(201, 1.0, 0.0));
										SetGlobalNumber("STA_MALAK_JEDI", 3);
									}
									else {
										if ((GetIsObjectValid(oNearestSta_plc_captive4) && (GetGlobalNumber("STA_MALAK_JEDI") <= 3))) {
											ActionMoveToObject(oNearestSta_plc_captive4, 1, 1.0);
											ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive4, 0);
											int int28 = GetMaxHitPoints(OBJECT_SELF);
											int int30 = GetCurrentHitPoints(OBJECT_SELF);
											effect effect9 = EffectHeal((int28 - int30));
											ApplyEffectToObject(0, effect9, OBJECT_SELF, 0.0);
											int int32 = GetMaxForcePoints(OBJECT_SELF);
											int int34 = GetCurrentForcePoints(OBJECT_SELF);
											effect effect11 = EffectHealForcePoints((int32 - int34));
											ApplyEffectToObject(0, effect11, OBJECT_SELF, 0.0);
											AssignCommand(oNearestSta_plc_captive4, ActionPlayAnimation(201, 1.0, 0.0));
											SetGlobalNumber("STA_MALAK_JEDI", 4);
										}
										else {
											if ((GetIsObjectValid(oNearestSta_plc_captive5) && (GetGlobalNumber("STA_MALAK_JEDI") <= 4))) {
												ActionMoveToObject(oNearestSta_plc_captive5, 1, 1.0);
												ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive5, 0);
												int int38 = GetMaxHitPoints(OBJECT_SELF);
												int int40 = GetCurrentHitPoints(OBJECT_SELF);
												effect effect13 = EffectHeal((int38 - int40));
												ApplyEffectToObject(0, effect13, OBJECT_SELF, 0.0);
												int int42 = GetMaxForcePoints(OBJECT_SELF);
												int int44 = GetCurrentForcePoints(OBJECT_SELF);
												effect effect15 = EffectHealForcePoints((int42 - int44));
												ApplyEffectToObject(0, effect15, OBJECT_SELF, 0.0);
												AssignCommand(oNearestSta_plc_captive5, ActionPlayAnimation(201, 1.0, 0.0));
												SetGlobalNumber("STA_MALAK_JEDI", 5);
											}
											else {
												if ((GetIsObjectValid(oNearestSta_plc_captive6) && (GetGlobalNumber("STA_MALAK_JEDI") <= 5))) {
													ActionMoveToObject(oNearestSta_plc_captive6, 1, 1.0);
													ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive6, 0);
													int int48 = GetMaxHitPoints(OBJECT_SELF);
													int int50 = GetCurrentHitPoints(OBJECT_SELF);
													effect effect17 = EffectHeal((int48 - int50));
													ApplyEffectToObject(0, effect17, OBJECT_SELF, 0.0);
													int int52 = GetMaxForcePoints(OBJECT_SELF);
													int int54 = GetCurrentForcePoints(OBJECT_SELF);
													effect effect19 = EffectHealForcePoints((int52 - int54));
													ApplyEffectToObject(0, effect19, OBJECT_SELF, 0.0);
													AssignCommand(oNearestSta_plc_captive6, ActionPlayAnimation(201, 1.0, 0.0));
													SetGlobalNumber("STA_MALAK_JEDI", 6);
												}
												else {
													if ((GetIsObjectValid(oNearestSta_plc_captive7) && (GetGlobalNumber("STA_MALAK_JEDI") <= 6))) {
														ActionMoveToObject(oNearestSta_plc_captive7, 1, 1.0);
														ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive7, 0);
														int int58 = GetMaxHitPoints(OBJECT_SELF);
														int int60 = GetCurrentHitPoints(OBJECT_SELF);
														effect effect21 = EffectHeal((int58 - int60));
														ApplyEffectToObject(0, effect21, OBJECT_SELF, 0.0);
														int int62 = GetMaxForcePoints(OBJECT_SELF);
														int int64 = GetCurrentForcePoints(OBJECT_SELF);
														effect effect23 = EffectHealForcePoints((int62 - int64));
														ApplyEffectToObject(0, effect23, OBJECT_SELF, 0.0);
														AssignCommand(oNearestSta_plc_captive7, ActionPlayAnimation(201, 1.0, 0.0));
														SetGlobalNumber("STA_MALAK_JEDI", 7);
													}
													else {
														if ((GetIsObjectValid(oNearestSta_plc_captive8) && (GetGlobalNumber("STA_MALAK_JEDI") <= 7))) {
															ActionMoveToObject(oNearestSta_plc_captive8, 1, 1.0);
															ActionCastFakeSpellAtObject(15, oNearestSta_plc_captive8, 0);
															int int68 = GetMaxHitPoints(OBJECT_SELF);
															int int70 = GetCurrentHitPoints(OBJECT_SELF);
															effect effect25 = EffectHeal((int68 - int70));
															ApplyEffectToObject(0, effect25, OBJECT_SELF, 0.0);
															int int72 = GetMaxForcePoints(OBJECT_SELF);
															int int74 = GetCurrentForcePoints(OBJECT_SELF);
															effect effect27 = EffectHealForcePoints((int72 - int74));
															ApplyEffectToObject(0, effect27, OBJECT_SELF, 0.0);
															AssignCommand(oNearestSta_plc_captive8, ActionPlayAnimation(201, 1.0, 0.0));
															SetGlobalNumber("STA_MALAK_JEDI", 8);
														}
														else {
															SurrenderToEnemies();
															DelayCommand(1.0, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", ""));
														}
													}
												}
											}
										}
									}
								}
							}
							else {
								if (((GetGlobalNumber("STA_MALAK_TALK") == 1) && (nCurHP <= 70))) {
									SurrenderToEnemies();
									DelayCommand(1.0, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", ""));
								}
							}
						}
						else {
							if ((int1 == 1007)) {
								SetGlobalBoolean("STA_MALAK_DEAD", 1);
								object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
								SetLocked(oK45_door_malak, 0);
								object object19 = GetFirstPC();
								if (((GetGlobalNumber("G_FinalChoice") == 1) && (GetGender(object19) != 1))) {
									sub1("GAME OVER", 10, 10, 5.0);
								}
							}
							else {
								if ((int1 == 1008)) {
								}
								else {
									if ((int1 == 1009)) {
									}
									else {
										if ((int1 == 1010)) {
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

