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
						if ((GetGlobalNumber("STA_JEDI_ATTACK") == 8)) {
							DelayCommand(0.2, ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0));
						}
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
								object oSta_cutscene2 = GetObjectByTag("sta_cutscene2", 0);
								object oK_sta_darkjedi2 = GetObjectByTag("k_sta_darkjedi2", 0);
								object oK_sta_lightjedi1 = GetObjectByTag("k_sta_lightjedi1", 0);
								DelayCommand(0.2, SetDialogPlaceableCamera(22));
								ChangeToStandardFaction(oK_sta_darkjedi2, 5);
								AssignCommand(oSta_cutscene2, DelayCommand(2.8, ActionResumeConversation()));
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
