void main() {
	SetLocked(GetObjectByTag("tar03_box", 0), 0);
	DelayCommand(0.5, ApplyEffectToObject(1, EffectVisualEffect(2008, 0), GetObjectByTag("tar03_box", 0), 2.0));
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

