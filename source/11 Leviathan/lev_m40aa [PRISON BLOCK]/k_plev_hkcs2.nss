void main() {
	object oLev40_hktech0 = GetObjectByTag("lev40_hktech0", 0);
	object oLev40_hktech1 = GetObjectByTag("lev40_hktech1", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionPlayAnimation(0, 1.0, 3.0));
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

