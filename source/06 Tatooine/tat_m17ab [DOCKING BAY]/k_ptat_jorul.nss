void main() {
	object oEntering = GetEnteringObject();
	object oTat17_jorul = GetObjectByTag("tat17_jorul", 0);
	if ((GetIsPC(oEntering) == 1)) {
		AssignCommand(oTat17_jorul, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", ""));
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

