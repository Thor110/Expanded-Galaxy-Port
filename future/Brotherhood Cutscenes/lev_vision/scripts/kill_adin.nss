void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oAdin = GetObjectByTag("adin", 0);
	DelayCommand(1.0, AssignCommand(oAdin, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("adin", 0), 0.0)));
	ActionResumeConversation();
}

