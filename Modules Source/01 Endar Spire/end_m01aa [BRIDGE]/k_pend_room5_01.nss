void main() {
	object object1 = GetObjectByTag("end_trask", 0);
	object object2 = OBJECT_SELF;
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
								if ((int3 >= 4)) {
									SetGlobalNumber("END_TRASK_DLG", -1);
									SetLocked(GetObjectByTag("end_door16", 0), 0);
									CancelCombat(object1);
									CancelCombat(GetFirstPC());
									if ((GetPartyMemberByIndex(0) == object1)) {
										SetPartyLeader(0xFFFFFFFF);
									}
									NoClicksFor(0.5);
									DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
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
											if ((int1 == 1100)) {
												if (GetCommandable(object2)) {
													ClearAllActions();
													CancelCombat(object2);
													ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
													ActionDoCommand(SetCommandable(1, object2));
													SetCommandable(0, OBJECT_SELF);
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
}
