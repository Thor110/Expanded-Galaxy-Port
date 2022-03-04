void main() {
	ActionPauseConversation();
	SignalEvent(GetObjectByTag("unk41_rancorc", 0), EventUserDefined(20));
	AssignCommand(GetObjectByTag("unk41_duros1", 0), ActionAttack(GetObjectByTag("unk41_rancorc", 0), 0));
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionMoveToLocation(GetLocation(GetObjectByTag("durosrun", 0)), 1));
	AssignCommand(GetObjectByTag("unk41_duros2", 0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("unk41_rancorc", 0)))));
}

