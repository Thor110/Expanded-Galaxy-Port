void main() {
	object oEntering = GetEnteringObject();
	object oNearestEbo_invis_raka = GetNearestObjectByTag("ebo_invis_raka", OBJECT_SELF, 1);
	if (GetIsPC(oEntering)) {
		AssignCommand(oNearestEbo_invis_raka, ActionStartConversation(oNearestEbo_invis_raka, "", 0, 0, 0));
		DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
	}
}

