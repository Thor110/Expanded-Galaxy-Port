void main() {
	object oPC = GetFirstPC();
	object oK35_plc_passage = GetObjectByTag("k35_plc_passage", 0);
	if ((GetEnteringObject() == oPC)) {
		AssignCommand(oK35_plc_passage, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", ""));
	}
}

