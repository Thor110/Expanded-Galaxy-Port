// Globals
	int intGLOB_21 = 1100;
	string stringGLOB_1 = "end_trask";
	int intGLOB_146 = 4;
	int intGLOB_148 = (-1);
// Prototypes
void sub4(string stringParam1);
void sub3();
object sub2();
void sub1(int intParam1);

void sub4(string stringParam1) {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, object1));
		SetCommandable(0, OBJECT_SELF);
	}
}

void sub3() {
	object object1 = sub2();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

object sub2() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub1(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
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
								int int3 = (GetGlobalNumber("END_ROOM5_DEAD") + 1);
								if ((int3 >= intGLOB_146)) {
									sub1(intGLOB_148);
									SetLocked(GetObjectByTag("end_door16", 0), 0);
									CancelCombat(sub2());
									CancelCombat(GetFirstPC());
									sub3();
								}
								SetGlobalNumber("END_ROOM5_DEAD", int3);
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
												sub4("wp_homebase");
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

