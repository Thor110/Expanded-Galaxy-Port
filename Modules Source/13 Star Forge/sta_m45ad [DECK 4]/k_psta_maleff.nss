void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	ActionPauseConversation();
	DelayCommand(0.8, ActionResumeConversation());
	ApplyEffectToObject(0, EffectVisualEffect(1009, 0), oSta_45darthMalak, 0.0);
}
