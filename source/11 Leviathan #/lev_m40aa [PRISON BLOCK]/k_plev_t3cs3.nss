void main() {
	object oLev40_droidtalker = GetObjectByTag("lev40_droidtalker", 0);
	object oLev40_t3tech = GetObjectByTag("lev40_t3tech", 0);
	DestroyObject(oLev40_t3tech, 0.0, 1, 0.0);
	NoClicksFor(0.3);
	DelayCommand(0.1, AssignCommand(oLev40_droidtalker, ActionStartConversation(oLev40_droidtalker, "lev40_slice_dlg", 0, 0, 0, "", "", "", "", "", "")));
}

