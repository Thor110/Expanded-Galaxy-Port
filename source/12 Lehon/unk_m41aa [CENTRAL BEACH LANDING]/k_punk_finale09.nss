void main() {
	ActionPauseConversation();
	ActionMoveToObject(GetObjectByTag("carthflee", 0), 1, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetPCSpeaker())));
	ActionResumeConversation();
}

