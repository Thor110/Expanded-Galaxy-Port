void main() {
	int int1 = GetUserDefinedEventNumber();
	switch (int1) {
		case 10:
			ActionJumpToObject(GetObjectByTag("dan13_WP_zhar01", 0), 1);
			break;
		case 50:
			ActionWait(0.1);
			SetGlobalBoolean("DAN_ZHAR_TRAIN", 1);
			ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0);
			break;
		case 1003:
			if ((Random(3) == 0)) {
				SetGlobalNumber("DAN_JEDI_PLOT", 7);
				ChangeToStandardFaction(OBJECT_SELF, 5);
				ClearAllActions();
				AssignCommand(GetFirstPC(), ClearAllActions());
			}
	}
}

