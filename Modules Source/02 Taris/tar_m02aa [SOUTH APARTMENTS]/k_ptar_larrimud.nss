void main() {
	object object1 = OBJECT_SELF;
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		if ((GetIsConversationActive() == 0)) {
			object oNearestBP_FACING1_WP = GetNearestObjectByTag("BP_FACING1_WP", OBJECT_SELF, 1);
			object oNearestBP_FACING2_WP = GetNearestObjectByTag("BP_FACING2_WP", OBJECT_SELF, 1);
			if ((Random(100) >= 65)) {
				ActionMoveToObject(oNearestBP_FACING1_WP, 0, 0.1);
				ActionDoCommand(SetFacing(GetFacing(oNearestBP_FACING1_WP)));
				ActionDoCommand(PlayAnimation(11, 1.0, 3.0));
			}
			else {
				ActionMoveToObject(oNearestBP_FACING2_WP, 0, 0.1);
				ActionDoCommand(SetFacing(GetFacing(oNearestBP_FACING2_WP)));
			}
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
