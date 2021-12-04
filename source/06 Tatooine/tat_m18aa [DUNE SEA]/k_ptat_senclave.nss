void main() {
	object oEntering = GetEnteringObject();
	object oTat18_14sandg_01 = GetObjectByTag("tat18_14sandg_01", 0);
	if ((GetIsPC(oEntering) == 1)) {
		if ((GetIsObjectValid(oTat18_14sandg_01) == 1)) {
			AssignCommand(oTat18_14sandg_01, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", ""));
		}
		else {
			StartNewModule("tat_m20aa", "tat18ab_tat20aa", "", "", "", "", "", "");
		}
	}
}

