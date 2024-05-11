void main() {
	object oPC = GetFirstPC();
	int int1 = GetGlobalNumber("END_TRASK_DLG");
	int int3 = GetSubScreenID();
	object object3 = GetObjectByTag("end_trask", 0);;
	if (((int1 == 3) && (int3 == 1))) {
		AssignCommand(object3, ActionWait(0.1));
		AssignCommand(object3, ActionDoCommand(SignalEvent(object3, EventUserDefined(200))));
	}
	else {
		if (((int1 == 5) && ((int3 == 5) || (int3 == 6)))) {
			SetGlobalNumber("END_TRASK_DLG", 6);
			AssignCommand(object3, ActionWait(0.1));
			AssignCommand(object3, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", ""));
		}
		else {
			if (((int1 == 21) && (int3 == 5))) {
				SetGlobalNumber("END_TRASK_DLG", 22);
			}
		}
	}
}
