// Prototypes
void sub2(object objectParam1);
void sub1();

void sub2(object objectParam1) {
	PlaySound("v_useforce");
	ActionCastFakeSpellAtObject(26, objectParam1, 0);
	DelayCommand(0.4, ApplyEffectToObject(0, EffectVisualEffect(1017, 0), GetPartyMemberByIndex(0), 0.0));
	DelayCommand(0.4, ApplyEffectToObject(0, EffectVisualEffect(1017, 0), GetObjectByTag("Jolee", 0), 0.0));
	DelayCommand(0.4, ApplyEffectToObject(0, EffectVisualEffect(1017, 0), GetObjectByTag("Juhani", 0), 0.0));
	DelayCommand(0.5, ApplyEffectToObject(1, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetPartyMemberByIndex(0), 0.1));
	DelayCommand(0.5, ApplyEffectToObject(1, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetObjectByTag("Jolee", 0), 0.1));
	DelayCommand(0.5, ApplyEffectToObject(1, EffectForcePushTargeted(GetLocation(OBJECT_SELF), 0), GetObjectByTag("Juhani", 0), 0.1));
	DelayCommand(1.0, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", ""));
}

void sub1() {
	SetPartyLeader((-1));
	AssignCommand(GetFirstPC(), ClearAllEffects());
	AssignCommand(GetObjectByTag("Jolee", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("Juhani", 0), ClearAllEffects());
	RemovePartyMember(4);
	RemovePartyMember(5);
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
							if (((GetMaxHitPoints(OBJECT_SELF) - GetCurrentHitPoints(OBJECT_SELF)) > 150)) {
								ApplyEffectToObject(0, EffectResurrection(), GetFirstPC(), 0.0);
								NoClicksFor(5.0);
								object oAttacker = GetLastAttacker(OBJECT_SELF);
								ClearAllActions();
								DelayCommand(0.3, sub1());
								ChangeToStandardFaction(OBJECT_SELF, 5);
								DelayCommand(0.5, CancelCombat(GetFirstPC()));
								DelayCommand(0.5, CancelCombat(GetObjectByTag("Jolee", 0)));
								DelayCommand(0.5, CancelCombat(GetObjectByTag("Juhani", 0)));
								DelayCommand(0.5, CancelCombat(OBJECT_SELF));
								DelayCommand(0.5, ClearAllEffects());
								DelayCommand(0.6, sub2(oAttacker));
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

