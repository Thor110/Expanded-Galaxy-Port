void main() {
	object oG_sithcomm010 = GetObjectByTag("g_sithcomm010", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm010, 1));
}

