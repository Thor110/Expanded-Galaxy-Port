void main() {
	ActionPauseConversation();
	DelayCommand(0.5, ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("mission", 0), 0.0));
	DelayCommand(1.0, AssignCommand(GetObjectByTag("mission", 0), SetIsDestroyable(0, 0, 0)));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, AssignCommand(GetObjectByTag("zaalbar", 0), ActionPlayAnimation(3, 1.0, 0.0)));
	ActionWait(4.0);
	ActionResumeConversation();
}

