void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oMessenger = GetObjectByTag("messenger", 0);
	ApplyEffectToObject(0, EffectVisualEffect(1004, 0), oMessenger, 0.0);
	ActionResumeConversation();
}

