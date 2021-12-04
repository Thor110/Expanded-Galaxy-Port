void main() {
	object oNearestGizka = GetNearestObjectByTag("gizka", OBJECT_SELF, 1);
	ApplyEffectToObject(0, EffectDeath(0, 1), oNearestGizka, 0.0);
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}

