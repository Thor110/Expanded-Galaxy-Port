void main() {
	object oPC = GetFirstPC();
	object oKas22ab_kas22aa = GetWaypointByTag("kas22ab_kas22aa");
	AssignCommand(oPC, JumpToObject(oKas22ab_kas22aa, 1));
}

