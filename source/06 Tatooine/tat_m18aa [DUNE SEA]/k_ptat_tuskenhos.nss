void main() {
	object oPC = GetFirstPC();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	AdjustReputation(oPC, oTat18_tuskanfac, (-50));
	SetGlobalBoolean("tat_TuskenMad", 1);
}

