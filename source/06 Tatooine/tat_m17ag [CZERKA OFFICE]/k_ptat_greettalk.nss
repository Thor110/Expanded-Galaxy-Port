void main() {
	object oEntering = GetEnteringObject();
	object oPC = GetFirstPC();
	object oTat17_10greet_01 = GetObjectByTag("tat17_10greet_01", 0);
	if ((GetIsPC(oEntering) == 1)) {
		if ((GetGlobalBoolean("Tat_Greet_Griff") == 1)) {
			AssignCommand(oTat17_10greet_01, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
	}
}

