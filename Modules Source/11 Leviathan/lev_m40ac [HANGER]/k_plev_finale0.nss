void main() {
	object oLev40_blastdoore = GetObjectByTag("lev40_blastdoord", 0);
	AssignCommand(oLev40_blastdoore, ActionOpenDoor(oLev40_blastdoore));
	oLev40_blastdoore = GetObjectByTag("lev40_blastdoore", 0);
	AssignCommand(oLev40_blastdoore, ActionOpenDoor(oLev40_blastdoore));
	ActionPauseConversation();
	ActionWait(1.2);
	ActionResumeConversation();
}

