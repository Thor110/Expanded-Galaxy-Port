void main() {
	int int1 = GetUserDefinedEventNumber();
	object object1 = OBJECT_SELF;
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
								object oTar03_gangtalker = GetObjectByTag("tar03_gangtalker", 0);
								object oAttacker = GetLastAttacker(OBJECT_SELF);
								SignalEvent(oTar03_gangtalker, EventUserDefined(2000));
								AssignCommand(oAttacker, ClearAllActions());
								if ((!ShipBuild())) {
									AurPostString(("CLEARING " + GetTag(oAttacker)), 5, 5, 5.0);
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
										else {
											if ((int1 == 1100)) {
												if (GetCommandable(object1)) {
													ClearAllActions();
													CancelCombat(object1);
													ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
													ActionDoCommand(SetCommandable(1, object1));
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
