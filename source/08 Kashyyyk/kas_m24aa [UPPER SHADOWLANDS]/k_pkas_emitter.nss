void main() {
	object object1 = GetLastUsedBy();
	if ((GetIsPC(object1) == 1)) {
		ActionStartConversation(object1, "", 0, 1, 0, "", "", "", "", "", "");
	}
}

