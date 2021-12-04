void main() {
	if ((GetUserDefinedEventNumber() == 50)) {
		ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "");
	}
	else {
		ActionResumeConversation();
	}
}

