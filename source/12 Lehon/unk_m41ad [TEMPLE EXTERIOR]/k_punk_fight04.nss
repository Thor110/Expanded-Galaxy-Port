void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk41_rancorc", 0), ActionPlayAnimation(107, 1.0, 2.0));
	AssignCommand(GetObjectByTag("unk41_duros1", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	ActionWait(2.0);
	ActionResumeConversation();
}

