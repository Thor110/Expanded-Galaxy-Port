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
							if (((GetMaxHitPoints(OBJECT_SELF) - GetCurrentHitPoints(OBJECT_SELF)) > 150)) {
								SurrenderToEnemies();
								ChangeToStandardFaction(OBJECT_SELF, 5);
								ClearAllActions();
								CancelCombat(GetPartyMemberByIndex(0));
								CancelCombat(GetPartyMemberByIndex(1));
								CancelCombat(GetPartyMemberByIndex(2));
								SetPartyLeader((-1));
								DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
							}
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

