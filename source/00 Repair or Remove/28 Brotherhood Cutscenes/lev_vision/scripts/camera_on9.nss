void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	EnableVideoEffect(0);
	object oAdin = GetObjectByTag("adin", 0);
	ApplyEffectToObject(0, EffectVisualEffect(1004, 0), oAdin, 0.0);
	object oPC = GetFirstPC();
	ActionResumeConversation();
}

