void main() {
	ActionPauseConversation();
	ChangeToStandardFaction(GetObjectByTag("unk41_redrak1", 0), 4);
	ActionWait(8.0);
	DelayCommand(8.0, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk41_blackrak4", 0), 0.0));
	ActionResumeConversation();
}

