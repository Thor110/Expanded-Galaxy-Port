// Globals
	string stringGLOB_1 = "end_trask";
	int intGLOB_163 = 14;
// Prototypes
void sub3();
void sub2(int intParam1);
object sub1();

void sub3() {
	object object1 = sub1();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

void sub2(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

object sub1() {
	return GetObjectByTag(stringGLOB_1, 0);
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
						}
						else {
							if ((int1 == 1007)) {
								string string1 = GetTag(OBJECT_SELF);
								object oEnd01_sceneobj01 = GetObjectByTag("end01_sceneobj01", 0);
								string string3 = "end_sith2";
								string string4 = "end_sith3";
								string string5 = "end_soldier1";
								string string6 = "end_soldier2";
								int int3;
								if ((string1 == string3)) {
									int3 = 26;
								}
								else {
									if ((string1 == string4)) {
										int3 = 23;
									}
									else {
										if ((string1 == string5)) {
											int3 = 24;
										}
										else {
											if ((string1 == string6)) {
												int3 = 22;
											}
										}
									}
								}
								DelayCommand(0.5, SetDialogPlaceableCamera(int3));
								AssignCommand(oEnd01_sceneobj01, DelayCommand(2.2, ActionResumeConversation()));
								object oPC = GetFirstPC();
								object object5 = sub1();
								int nCurHP = GetCurrentHitPoints(oPC);
								int nMaxHP = GetMaxHitPoints(oPC);
								int int8 = GetCurrentHitPoints(object5);
								int int10 = GetMaxHitPoints(object5);
								int nGlobal = GetGlobalNumber("END_ROOM3_DEAD");
								if ((nGlobal >= 1)) {
									sub2(intGLOB_163);
									SetLocked(GetObjectByTag("end_door05", 0), 0);
									if (((int8 < int10) || (nCurHP < nMaxHP))) {
										CancelCombat(sub1());
										CancelCombat(GetFirstPC());
										DelayCommand(1.0, sub3());
									}
								}
								SetGlobalNumber("END_ROOM3_DEAD", (nGlobal + 1));
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

