void main() {
	if ((GetUserDefinedEventNumber() == 10)) {
		ClearAllActions();
		ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0);
	}
}

