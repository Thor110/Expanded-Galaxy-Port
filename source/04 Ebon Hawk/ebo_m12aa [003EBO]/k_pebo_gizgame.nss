void main() {
	object object1 = OBJECT_SELF;
	ApplyEffectToObject(1, EffectHorrified(), GetPCSpeaker(), 0.5);
	DelayCommand(1.5, ApplyEffectToObject(1, EffectHorrified(), GetPCSpeaker(), 0.5));
	DelayCommand(3.0, ApplyEffectToObject(1, EffectHorrified(), GetPCSpeaker(), 0.5));
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

