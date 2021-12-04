// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, object1));
		SetCommandable(0, OBJECT_SELF);
	}
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		object oTar05_corpsepile = GetObjectByTag("tar05_corpsepile", 0);
		object oTar05_wprancor = GetObjectByTag("tar05_wprancor", 0);
		object object5;
		if ((((!GetIsObjectValid(GetAttackTarget(OBJECT_SELF))) && (GetDistanceBetween(OBJECT_SELF, oTar05_wprancor) > 6.0)) && (!GetGlobalBoolean("TAR_RANCOREATING")))) {
			ActionMoveToObject(oTar05_wprancor, 0, 1.0);
		}
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
								object object7 = GetObjectByTag("tar05_corpsepile", 0);
								AddJournalQuestEntry("tar_rancor", 99, 0);
								SignalEvent(object7, EventUserDefined(2000));
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
											if ((int1 == 1100)) {
												sub1("wp_homebase");
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

