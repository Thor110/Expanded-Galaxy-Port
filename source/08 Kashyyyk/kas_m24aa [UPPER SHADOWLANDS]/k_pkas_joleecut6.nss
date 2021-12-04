void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oJolee = GetObjectByTag("Jolee", 0);
	object oKas24_kinrath_01 = GetObjectByTag("kas24_kinrath_01", 0);
	object oKas24_kinrath_02 = GetObjectByTag("kas24_kinrath_02", 0);
	object oKas24_partymove2 = GetWaypointByTag("kas24_partymove2");
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object3, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(oNPC, ActionMoveToObject(oKas24_partymove2, 0, 1.0));
	AssignCommand(object3, ActionMoveToObject(oKas24_partymove2, 0, 1.0));
	AssignCommand(object5, ActionMoveToObject(oKas24_partymove2, 0, 1.0));
	AssignCommand(oJolee, ClearAllActions());
	ChangeToStandardFaction(oKas24_kinrath_01, 1);
	AssignCommand(oJolee, ActionAttack(oKas24_kinrath_01, 0));
	ApplyEffectToObject(0, EffectDamage(GetCurrentHitPoints(oKas24_kinrath_02), 8, 0), oKas24_kinrath_02, 0.0);
}

