void main() {
	ActionPauseConversation();
	SignalEvent(GetObjectByTag("unk41_rancorc", 0), EventUserDefined(10));
	AssignCommand(GetObjectByTag("unk41_duros1", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_mand", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
}

