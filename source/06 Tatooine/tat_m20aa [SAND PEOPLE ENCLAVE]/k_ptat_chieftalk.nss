void main() {
	object oPC = GetFirstPC();
	object oTat20_09chief_01 = GetObjectByTag("tat20_09chief_01", 0);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	AssignCommand(oTat20_09chief_01, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", ""));
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
}

