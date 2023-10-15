void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 1001:
			if (GetIsConversationActive()) {
				return;
			}
			switch (Random(4)) {
				case 0:
					ActionPlayAnimation(7, 1.0, 3.0);
					break;
					ActionPlayAnimation(107, 1.0, 0.0);
					break;
					break;
					break;
					break;
					break;
					break;
					break;
					sub1("ACK!", 5, 5, 3.0);
					SignalEvent(GetObjectByTag("bulliedmer021", 0), EventUserDefined(2000));
					break;
					break;
					break;
					break;
					ClearAllActions();
					ActionStartConversation(GetObjectByTag("BulliedMer021", 0), "tar02_bountyh022", 0, 0, 1, "", "", "", "", "", "");
					break;
				case 1:
				case 2:
				default:
			}
		case 1002:
		case 1003:
		case 1004:
		case 1005:
		case 1006:
		case 1007:
		case 1008:
		case 1009:
		case 1010:
		case 2000:
	}
}

