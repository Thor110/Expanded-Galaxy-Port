void main() {
	object object1 = OBJECT_SELF;
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		object oEnd_cut2_sith5 = GetObjectByTag("end_cut2_sith5", 0);
		object oEnd_cut2_sith3 = GetObjectByTag("end_cut2_sith3", 0);
		ClearAllActions();
		if (GetIsObjectValid(oEnd_cut2_sith5)) {
			ActionAttack(oEnd_cut2_sith5, 0);
		}
		else {
			ActionAttack(oEnd_cut2_sith3, 0);
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
