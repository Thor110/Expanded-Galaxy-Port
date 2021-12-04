void main() {
	object oMessenger = GetObjectByTag("messenger", 0);
	AssignCommand(oMessenger, ActionStartConversation(GetFirstPC(), "opening2", 0, 0, 0, "", "", "", "", "", "", 0));
}

