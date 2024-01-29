void main() {
	object oEntering = GetEnteringObject();
	object oTat18_hunter_01 = GetObjectByTag("tat18_hunter_01", 0);
	if (((GetIsPC(oEntering) == 1) && (GetIsObjectValid(oTat18_hunter_01) == 1))) {
		AssignCommand(oTat18_hunter_01, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

