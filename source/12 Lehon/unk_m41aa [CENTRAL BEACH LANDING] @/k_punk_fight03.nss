void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_redrak1", 0), ActionPlayAnimation(117, 1.0, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectDeath(0, 1), GetObjectByTag("unk41_rancor2", 0), 0.0));
	DelayCommand(0.5, ApplyEffectAtLocation(0, EffectVisualEffect(3006, 0), GetLocation(GetObjectByTag("unk41_rancor2", 0)), 0.0));
	ActionWait(2.0);
	ActionResumeConversation();
}

