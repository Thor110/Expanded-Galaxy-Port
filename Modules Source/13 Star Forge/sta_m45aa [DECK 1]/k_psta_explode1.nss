void main() {
	object oEntering = GetEnteringObject();
	object oNearestSta_door_explode1 = GetNearestObjectByTag("sta_door_explode1", OBJECT_SELF, 1);
	object oNearestSta_explosion1 = GetNearestObjectByTag("sta_explosion1", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestSta_door_explode1);
	object oNPC = GetPartyMemberByIndex(0);
	object object9 = GetPartyMemberByIndex(1);
	object object11 = GetPartyMemberByIndex(2);
	object oNearestSta45a_assault3 = GetNearestObjectByTag("sta45a_assault3", OBJECT_SELF, 1);
	object object15 = GetNearestObjectByTag("sta45a_assault3", OBJECT_SELF, 2);
	object object17 = GetNearestObjectByTag("sta45a_assault3", OBJECT_SELF, 3);
	object object19 = GetNearestObjectByTag("sta45a_assault3", OBJECT_SELF, 4);
	int int1 = 0;
	int1 = (Random(20) + 10);
	if (GetIsPC(oEntering)) {
		ApplyEffectAtLocation(0, EffectVisualEffect(3010, 0), location1, 0.0);
		DelayCommand(0.4, AssignCommand(oNPC, ClearAllActions()));
		DelayCommand(0.4, ApplyEffectToObject(1, EffectStunned(), oNPC, 8.0));
		DelayCommand(0.4, ApplyEffectToObject(0, EffectForcePushTargeted(location1, 0), oNPC, 0.0));
		DelayCommand(0.4, ApplyEffectToObject(0, EffectDamage(int1, 8, 0), oNPC, 0.0));
		if (((GetDistanceToObject(object9) <= 8.0) && GetIsObjectValid(object9))) {
			DelayCommand(0.52, AssignCommand(object9, ClearAllActions()));
			DelayCommand(0.52, ApplyEffectToObject(1, EffectStunned(), object9, 8.0));
			DelayCommand(0.52, ApplyEffectToObject(0, EffectForcePushTargeted(location1, 0), object9, 0.0));
			DelayCommand(0.52, ApplyEffectToObject(0, EffectDamage(int1, 8, 0), object9, 0.0));
		}
		if (((GetDistanceToObject(object11) <= 8.0) && GetIsObjectValid(object11))) {
			DelayCommand(0.64000005, AssignCommand(object11, ClearAllActions()));
			DelayCommand(0.64000005, ApplyEffectToObject(1, EffectStunned(), object11, 8.0));
			DelayCommand(0.64000005, ApplyEffectToObject(0, EffectForcePushTargeted(location1, 0), object11, 0.0));
			DelayCommand(0.64000005, ApplyEffectToObject(0, EffectDamage(int1, 8, 0), object11, 0.0));
		}
		DelayCommand(0.7, ApplyEffectAtLocation(0, EffectVisualEffect(3010, 0), location1, 0.0));
		DelayCommand(0.8, DestroyObject(oNearestSta_door_explode1, 0.0, 0, 0.0));
		DelayCommand(0.90000004, ChangeToStandardFaction(oNearestSta45a_assault3, 1));
		DelayCommand(0.90000004, ChangeToStandardFaction(object15, 1));
		DelayCommand(0.90000004, ChangeToStandardFaction(object17, 1));
		DelayCommand(0.90000004, ChangeToStandardFaction(object19, 1));
		DelayCommand(1.0, AssignCommand(oNearestSta45a_assault3, ActionAttack(oNPC, 0)));
		DelayCommand(1.0, AssignCommand(object15, ActionAttack(oNPC, 0)));
		DelayCommand(1.0, DestroyObject(oNearestSta_explosion1, 0.0, 0, 0.0));
		DelayCommand(1.1, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	}
}

