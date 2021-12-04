void main() {
	object oKas25_hurt_01 = GetObjectByTag("kas25_hurt_01", 0);
	object oKas25_mandalor05 = GetObjectByTag("kas25_mandalor05", 0);
	ActionPauseConversation();
	SetMinOneHP(oKas25_mandalor05, 0);
	ApplyEffectToObject(1, EffectAssuredHit(), oKas25_hurt_01, 4.0);
	DelayCommand(1.0, SetDialogPlaceableCamera(10));
	DelayCommand(5.8, ActionResumeConversation());
	DelayCommand(5.9, ApplyEffectToObject(0, EffectDeath(0, 1), oKas25_mandalor05, 0.0));
}

