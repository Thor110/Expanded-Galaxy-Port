void main() {
	ActionPlayAnimation(202, 1.0, 0.0);
	PlaySound("pl_whitebx_open");
	DelayCommand(0.6, ApplyEffectToObject(1, EffectBeam(2049, GetFirstPC(), 1, 0), OBJECT_SELF, 2.0));
	DelayCommand(0.8, ApplyEffectToObject(1, EffectVisualEffect(2040, 0), GetFirstPC(), 2.0));
	SetGlobalFadeOut(1.7, 0.2, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

