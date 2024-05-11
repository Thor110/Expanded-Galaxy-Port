void main() {
	if ((GetLocked(OBJECT_SELF) == 1)) {
		ActionStartConversation(GetLastUsedBy(), "", 0, 0, 0, "", "", "", "", "", "");
	}
}

