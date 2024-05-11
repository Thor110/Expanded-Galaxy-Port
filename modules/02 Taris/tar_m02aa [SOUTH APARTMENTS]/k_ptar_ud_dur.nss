// Byte code does not match

void main() {
	int int1 = GetUserDefinedEventNumber();
	object object1 = OBJECT_SELF;
	if ((int1 == 1001)) {
		object oNearestTrooper1 = GetNearestObjectByTag("Trooper1", OBJECT_SELF, 1);
		object oNearestDroid1 = GetNearestObjectByTag("droid1", OBJECT_SELF, 1);
		object oNearestDroid2 = GetNearestObjectByTag("droid2", OBJECT_SELF, 1);
		object oNearestVariable = GetNearestObjectByTag("variable", OBJECT_SELF, 1);
		object oPC = GetFirstPC();
		object oNPC;
		int int3;
		if ((((((!GetIsObjectValid(oNearestTrooper1)) && (!GetIsObjectValid(oNearestDroid1))) && (!GetIsObjectValid(oNearestDroid2))) && GetIsObjectValid(oNearestVariable)) || (((GetIsDead(oNearestTrooper1) && GetIsDead(oNearestDroid1)) && GetIsDead(oNearestDroid2)) && GetIsObjectValid(oNearestVariable)))) {
			int3 = 0;
			while ((int3 < GetPartyMemberCount())) {
				oNPC = GetPartyMemberByIndex(int3);
				ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
				ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
				(int3++);
			}
			DestroyObject(oNearestVariable, 0.0, 0, 0.0);
			DelayCommand(0.1, CancelCombat(OBJECT_SELF));
			DelayCommand(0.3, CancelCombat(oPC));
			DelayCommand(0.5, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
			DelayCommand(0.5, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
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
