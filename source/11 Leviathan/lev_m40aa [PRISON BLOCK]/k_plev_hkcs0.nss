void main() {
	object oLev40_hktech0 = GetObjectByTag("lev40_hktech0", 0);
	object oLev40_hktech1 = GetObjectByTag("lev40_hktech1", 0);
	object oWeldingDroid = GetObjectByTag("WeldingDroid", 0);
	AssignCommand(oLev40_hktech0, ActionPlayAnimation(15, 1.0, 360.0));
	AssignCommand(oLev40_hktech1, ActionPlayAnimation(15, 1.0, 360.0));
	AssignCommand(GetFirstPC(), ActionPlayAnimation(13, 1.0, 360.0));
	SoundObjectPlay(oWeldingDroid);
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

