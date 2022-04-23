void main() {
	object oNearestTat18_tanisexit = GetNearestObjectByTag("tat18_tanisexit", OBJECT_SELF, 1);
	object oTat18_10droid_01 = GetObjectByTag("tat18_10droid_01", 0);
	object oTat18_10droid_02 = GetObjectByTag("tat18_10droid_02", 0);
	object oTat18_10droid_03 = GetObjectByTag("tat18_10droid_03", 0);
	object oTat18_10droid_04 = GetObjectByTag("tat18_10droid_04", 0);
	ClearAllActions();
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	AssignCommand(oTat18_10droid_01, ClearAllActions());
	DestroyObject(oTat18_10droid_01, 0.0, 1, 0.0);
	AssignCommand(oTat18_10droid_02, ClearAllActions());
	DestroyObject(oTat18_10droid_02, 0.0, 1, 0.0);
	AssignCommand(oTat18_10droid_03, ClearAllActions());
	DestroyObject(oTat18_10droid_03, 0.0, 1, 0.0);
	AssignCommand(oTat18_10droid_04, ClearAllActions());
	DestroyObject(oTat18_10droid_04, 0.0, 1, 0.0);
	DestroyObject(OBJECT_SELF, 0.0, 1, 0.0);
}

