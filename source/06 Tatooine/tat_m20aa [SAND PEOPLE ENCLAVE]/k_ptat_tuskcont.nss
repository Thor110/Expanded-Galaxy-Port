void main() {
	object oPC = GetFirstPC();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	if ((GetIsEnemy(oPC, oTat18_tuskanfac) == 0)) {
		ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "");
	}
}

