// Prototypes
void sub3();
void sub2(string stringParam1, string stringParam2, object objectParam3);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub3() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void sub2(string stringParam1, string stringParam2, object objectParam3) {
	object object1 = GetObjectByTag(stringParam1, 0);
	object oPC = GetFirstPC();
	sub3();
	if ((GetIsObjectValid(object1) == 1)) {
		if ((oPC == GetPartyMemberByIndex(0))) {
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
		else {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetPartyLeader(0xFFFFFFFF);
			object oNPC = GetPartyMemberByIndex(1);
			object object8 = GetPartyMemberByIndex(2);
			NoClicksFor(0.7);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(object1, ClearAllActions());
			CancelCombat(oPC);
			if ((GetIsObjectValid(objectParam3) == 1)) {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(objectParam3, 1)));
				AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(object1))));
			}
			else {
				AssignCommand(oPC, DelayCommand(0.2, JumpToObject(object1, 1)));
			}
			AssignCommand(oNPC, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object8, DelayCommand(0.5, JumpToObject(oPC, 1)));
			AssignCommand(object1, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0, 0.0, 0.0, 0.0)));
			AssignCommand(object1, ActionStartConversation(oPC, stringParam2, 0, 0, 1, "", "", "", "", "", ""));
		}
	}
}

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
							if (((GetGlobalNumber("STA_MALAK_TALK") == 2) && (nCurHP <= 100))) {
								if ((GetIsObjectValid(oNearestSta_plc_captive2) && (GetGlobalNumber("STA_MALAK_JEDI") <= 1))) {
									sub1("2nd surrender", 10, 10, 5.0);
									SetGlobalNumber("STA_MALAK_JEDI", 2);
									ActionSurrenderToEnemies();
									SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
									SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
									DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
								}
								else {
									if ((GetIsObjectValid(oNearestSta_plc_captive3) && (GetGlobalNumber("STA_MALAK_JEDI") <= 2))) {
										sub1("3rd surrender", 10, 10, 5.0);
										SetGlobalNumber("STA_MALAK_JEDI", 3);
										ActionSurrenderToEnemies();
										SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
										SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
										DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
									}
									else {
										if ((GetIsObjectValid(oNearestSta_plc_captive4) && (GetGlobalNumber("STA_MALAK_JEDI") <= 3))) {
											sub1("4th surrender", 10, 10, 5.0);
											SetGlobalNumber("STA_MALAK_JEDI", 4);
											ActionSurrenderToEnemies();
											SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
											SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
											DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
										}
										else {
											if ((GetIsObjectValid(oNearestSta_plc_captive5) && (GetGlobalNumber("STA_MALAK_JEDI") <= 4))) {
												sub1("5th surrender", 10, 10, 5.0);
												SetGlobalNumber("STA_MALAK_JEDI", 5);
												ActionSurrenderToEnemies();
												SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
												SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
												DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
											}
											else {
												if ((GetIsObjectValid(oNearestSta_plc_captive6) && (GetGlobalNumber("STA_MALAK_JEDI") <= 5))) {
													sub1("6th surrender", 10, 10, 5.0);
													SetGlobalNumber("STA_MALAK_JEDI", 6);
													ActionSurrenderToEnemies();
													SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
													SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
													DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
												}
												else {
													if ((GetIsObjectValid(oNearestSta_plc_captive7) && (GetGlobalNumber("STA_MALAK_JEDI") <= 6))) {
														sub1("7th surrender", 10, 10, 5.0);
														SetGlobalNumber("STA_MALAK_JEDI", 7);
														ActionSurrenderToEnemies();
														SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
														SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
														DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
													}
													else {
														if ((GetIsObjectValid(oNearestSta_plc_captive8) && (GetGlobalNumber("STA_MALAK_JEDI") <= 7))) {
															sub1("8th surrender", 10, 10, 5.0);
															SetGlobalNumber("STA_MALAK_JEDI", 8);
															ActionSurrenderToEnemies();
															SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
															SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
															DelayCommand(0.5, sub2("sta45d_cutscene", "", OBJECT_INVALID));
														}
														else {
															sub1("Last surrender", 10, 10, 5.0);
															ActionSurrenderToEnemies();
															DelayCommand(0.5, sub2("sta_45darthMalak", "", OBJECT_INVALID));
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
									sub1("First surrender", 10, 10, 5.0);
									ActionSurrenderToEnemies();
									DelayCommand(0.5, sub2("sta_45darthMalak", "", OBJECT_INVALID));
								}
							}
						}
						else {
							if ((int1 == 1007)) {
								SetGlobalBoolean("STA_MALAK_DEAD", 1);
								object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
								SetLocked(oK45_door_malak, 0);
								object oK45_door_end = GetObjectByTag("k45_door_end", 0);
								SetLocked(oK45_door_end, 0);
								object object21 = GetFirstPC();
								if (((GetGlobalNumber("G_FinalChoice") == 1) && (GetGender(object21) != 1))) {
									DelayCommand(0.5, StartNewModule("STUNT_54a", "", "54", "", "", "", "", ""));
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

