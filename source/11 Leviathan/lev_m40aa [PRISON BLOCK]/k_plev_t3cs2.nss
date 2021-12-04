void main() {
	object oLev40_shopdroid = GetObjectByTag("lev40_shopdroid", 0);
	ApplyEffectToObject(1, EffectBeam(2049, oLev40_shopdroid, 2, 0), GetFirstPC(), 5.0);
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

