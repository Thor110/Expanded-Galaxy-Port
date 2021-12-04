void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionDoCommand(SetMinOneHP(GetObjectByTag("end_darkjedi01", 0), 0));
}

