void main() {
	SetGlobalBoolean("G_JoleeJoined", 1);
	AddAvailableNPCByTemplate(4, "p_jolee");
	ShowPartySelectionGUI("", 4, 0xFFFFFFFF);
	DelayCommand(1.0, DestroyObject(OBJECT_SELF, 0.0, 0, 0.0));
}

