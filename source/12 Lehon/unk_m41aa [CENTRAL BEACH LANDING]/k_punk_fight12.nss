void main() {
	ActionPauseConversation();
	ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("unk41_rancor2", 0), 0.0);
	DelayCommand(1.2, ApplyEffectToObject(0, EffectVisualEffect(6002, 0), GetPCSpeaker(), 0.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

