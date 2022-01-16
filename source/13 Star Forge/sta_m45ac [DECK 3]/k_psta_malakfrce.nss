void main() {
	object oSta_jedivic1 = GetObjectByTag("sta_jedivic1", 0);
	object oSta_jedivic2 = GetObjectByTag("sta_jedivic2", 0);
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	location location1 = GetLocation(GetObjectByTag("sta_push1", 0));
	location location3 = GetLocation(GetObjectByTag("sta_push2", 0));
	location location5 = GetLocation(GetObjectByTag("sta_push1_wp", 0));
	location location7 = GetLocation(GetObjectByTag("sta_push2_wp", 0));
	location location9 = GetLocation(GetObjectByTag("sta_malak_wp", 0));
	ActionPauseConversation();
	effect efChoke = EffectChoke();
	DelayCommand(1.0, AssignCommand(oSta_45darthMalak, ActionMoveToLocation(location9, 0)));
	ActionWait(5.0);
	ActionResumeConversation();
}

