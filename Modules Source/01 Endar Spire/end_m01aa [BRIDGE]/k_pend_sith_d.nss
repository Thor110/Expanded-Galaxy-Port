void main() {
	int int1 = GetUserDefinedEventNumber();
	object object1 = GetObjectByTag("end_trask", 0);
	switch (int1) {
		case 1005:
			if ((GetTag(GetLastHostileActor(OBJECT_SELF)) == "end_droid02")) {
				ApplyEffectToObject(0, EffectDeath(0, 1), OBJECT_SELF, 0.0);
			}
			break;
		case 1007:
			SetGlobalNumber("END_SITH_DEAD", (GetGlobalNumber("END_SITH_DEAD") + 1));
			if ((GetGlobalNumber("END_SITH_DEAD") == 4)) {
				SetGlobalBoolean("END_BRIDGE_COMBAT", 0);
				GivePlotXP("end_tutorial", 25);
				if ((GetXP(GetFirstPC()) <= 1000)) {
					SetXP(GetFirstPC(), 1000);
				}
				SetGlobalNumber("END_TRASK_DLG", 28);
				CancelCombat(GetObjectByTag("end_trask", 0));
				if ((GetPartyMemberByIndex(0) == object1)) {
					SetPartyLeader(0xFFFFFFFF);
				}
				NoClicksFor(0.5);
				DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
			}
	}
}
