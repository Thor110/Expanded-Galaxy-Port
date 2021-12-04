void main() {
	object oPC = GetFirstPC();
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 100:
			if ((GetIsConversationActive() == 0)) {
				ActionStartConversation(oPC, "kas25_wraid_attk", 0, 0, 0, "", "", "", "", "", "");
			}
			else {
				DelayCommand(3.0, SignalEvent(OBJECT_SELF, EventUserDefined(100)));
			}
			break;
	}
}

