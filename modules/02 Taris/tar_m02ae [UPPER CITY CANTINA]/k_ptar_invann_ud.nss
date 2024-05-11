void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 2000:
			ActionWait(3.0);
			ActionStartConversation(OBJECT_SELF, "", 0, 0, 0, "", "", "", "", "", "");
			break;
	}
}
