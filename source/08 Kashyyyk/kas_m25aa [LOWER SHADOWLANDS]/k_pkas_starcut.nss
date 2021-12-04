void main() {
	object oPC = GetFirstPC();
	object oKas25_starspeak = GetObjectByTag("kas25_starspeak", 0);
	AssignCommand(oKas25_starspeak, DelayCommand(1.0, ActionStartConversation(oPC, "kas25_starspeak", 0, 0, 1, "", "", "", "", "", "")));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
}

