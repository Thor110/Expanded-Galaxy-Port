void main() {
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("unk41_wprak", 0), 1, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker())));
	ActionResumeConversation();
}

