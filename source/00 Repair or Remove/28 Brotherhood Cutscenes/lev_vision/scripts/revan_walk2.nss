void main() {
	ActionPauseConversation();
	ActionWait(6.0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(264.9, 54.7, 9.02);
	location location1 = Location(struct2, 0.0);
	object oTem_mrdead = GetObjectByTag("tem_mrdead", 0);
	object oTem_mrdead2 = GetObjectByTag("tem_mrdead2", 0);
	object oTem_mrdead3 = GetObjectByTag("tem_mrdead3", 0);
	object oTem_mrdead4 = GetObjectByTag("tem_mrdead4", 0);
	ApplyEffectToObject(0, EffectDeath(0, 1), oTem_mrdead, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1), oTem_mrdead2, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1), oTem_mrdead3, 0.0);
	ApplyEffectToObject(0, EffectDeath(0, 1), oTem_mrdead4, 0.0);
	AssignCommand(oPC, ActionForceMoveToLocation(location1, 0, 30.0));
	AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
	ActionResumeConversation();
}

