void main() {
	ActionPauseConversation();
	ChangeToStandardFaction(GetObjectByTag("unk41_mand", 0), 4);
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), CutsceneAttack(GetObjectByTag("unk41_mand", 0), 276, 200, 200));
	ActionWait(3.5);
	ActionResumeConversation();
}

