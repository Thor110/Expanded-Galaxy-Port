void main() {
	if ((GetUserDefinedEventNumber() == 100)) {
		ActionWait(0.1);
		ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "");
	}
}

