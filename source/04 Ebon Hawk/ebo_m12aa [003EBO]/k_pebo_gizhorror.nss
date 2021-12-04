void main() {
	object object1 = OBJECT_SELF;
	PlaySound("cs_gizkabeg");
	DelayCommand(1.0, ApplyEffectToObject(1, EffectHorrified(), GetPCSpeaker(), 2.0));
	ActionPauseConversation();
	ActionWait(1.5);
	ActionResumeConversation();
}

