void main() {
	ActionResumeConversation();
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), CutsceneAttack(GetObjectByTag("unk41_duros1", 0), 276, 200, 200));
	ActionWait(4.0);
	ActionResumeConversation();
}

