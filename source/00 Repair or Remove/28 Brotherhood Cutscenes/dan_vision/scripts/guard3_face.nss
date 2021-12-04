void main() {
	ActionPauseConversation();
	ActionWait(7.0);
	object oWp_guard1 = GetWaypointByTag("wp_guard1");
	effect efVisual = EffectVisualEffect(3016, 0);
	location location1 = GetLocation(oWp_guard1);
	effect effect3 = EffectVisualEffect(3003, 0);
	effect effect5 = EffectVisualEffect(3018, 0);
	object oGuard3 = GetObjectByTag("guard3", 0);
	object oPC = GetFirstPC();
	AssignCommand(oGuard3, SetLockOrientationInDialog(oGuard3, 1));
	AssignCommand(oGuard3, SetFacingPoint(GetPosition(oPC)));
	ActionResumeConversation();
}

