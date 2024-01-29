void main() {
	if (GetGlobalBoolean("MAN_SHORTCUT")) {
		ActionStartConversation(GetFirstPC(), "", 0, 1, 0, "", "", "", "", "", "");
	}
	else {
		ActionStartConversation(GetFirstPC(), "man28_door1", 0, 0, 0, "", "", "", "", "", "");
	}
}

