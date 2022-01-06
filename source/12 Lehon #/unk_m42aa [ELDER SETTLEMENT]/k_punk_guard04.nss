void main() {
	ActionPauseConversation();
	AssignCommand(GetObjectByTag("unk42_compdoor", 0), ActionOpenDoor(GetObjectByTag("unk42_compdoor", 0)));
	ActionMoveToLocation(GetLocation(GetObjectByTag("guardend", 0)), 0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker())));
	ActionResumeConversation();
}

