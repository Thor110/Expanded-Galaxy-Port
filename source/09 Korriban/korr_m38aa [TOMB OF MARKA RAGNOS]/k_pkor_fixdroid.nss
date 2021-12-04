void main() {
	object oPC = GetFirstPC();
	ActionPauseConversation();
	ActionDoCommand(SetFacing(0.0));
	ExecuteScript("k_pkor_pcmove", oPC, 0xFFFFFFFF);
	ActionWait(3.0);
	ActionResumeConversation();
}

