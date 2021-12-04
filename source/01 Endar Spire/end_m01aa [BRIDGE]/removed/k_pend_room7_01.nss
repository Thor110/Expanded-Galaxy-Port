// Globals
	int intGLOB_21 = 1100;
	string stringGLOB_1 = "end_trask";
	int intGLOB_147 = 2;
	int intGLOB_175 = 31;
// Prototypes
void sub5(string stringParam1);
void sub4();
object sub3();
void sub2(int intParam1);
void sub1(string stringParam1, int intParam2, int intParam3);

void sub5(string stringParam1) {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, object1));
		SetCommandable(0, OBJECT_SELF);
	}
}

void sub4() {
	object object1 = sub3();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

object sub3() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub2(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

void sub1(string stringParam1, int intParam2, int intParam3) {
	location location1 = GetLocation(GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1));
	effect efVisual = EffectVisualEffect(3003, 0);
	effect effect3 = EffectVisualEffect(6002, 0);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	if (intParam2) {
		ApplyEffectToObject(0, effect3, GetFirstPC(), 0.0);
	}
	if (intParam3) {
		PlayRumblePattern(14);
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
						}
						else {
							if ((int1 == 1007)) {
								int int3 = (GetGlobalNumber("END_ROOM7_DEAD") + 1);
								if ((int3 >= intGLOB_147)) {
									object oPC = GetFirstPC();
									if ((GetXP(oPC) < 1000)) {
										SetXP(oPC, 1000);
									}
									if ((GetGlobalBoolean("END_PC_ON_BRIDGE") && GetGlobalBoolean("END_TRASK_ON_BRIDGE"))) {
										object oEnd_door08 = GetObjectByTag("end_door08", 0);
										SetLocked(oEnd_door08, 1);
										AssignCommand(oEnd_door08, ActionCloseDoor(oEnd_door08));
										sub1("wp_end_bridgedoor", 1, 1);
										SetGlobalBoolean("END_BRIDGE_SEALED", 1);
									}
									sub2(intGLOB_175);
									CancelCombat(sub3());
									CancelCombat(GetFirstPC());
									DelayCommand(1.0, sub4());
								}
								SetGlobalNumber("END_ROOM7_DEAD", int3);
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
										else {
											if ((int1 == intGLOB_21)) {
												sub5("wp_homebase");
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

