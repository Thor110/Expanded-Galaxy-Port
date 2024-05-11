void main() {
	object oPC = GetFirstPC();
	object oTat17_10czerk_01 = GetObjectByTag("tat17_10czerk_01", 0);
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	AssignCommand(oPC, SetFacingPoint(GetPosition(oTat17_10czerk_01)));
	DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
}

