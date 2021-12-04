void main() {
  SetGlobalNumber("End_TraskTalk",6);
	if ((IsAvailableCreature(0) == 0)) {
		AddAvailableNPCByTemplate(0, "end_trask");
		SetAreaUnescapable(0);
		DelayCommand(0.1, ShowPartySelectionGUI("k_pend_reset", 0, 0xFFFFFFFF));
		DelayCommand(0.1, DestroyObject(OBJECT_SELF, 0.0, 1, 0.0));
    //AssignCommand(GetObjectByTag("end_trask"), ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
    ActionStartConversation(GetFirstPC(), "end_trask01", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0);
	}
}

