void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 100:
			ActionWait(3.0);
			ActionStartConversation(GetFirstPC(), "dan14ab_cut01", 0, 0, 1, "", "", "", "", "", "");
			break;
	}
}

