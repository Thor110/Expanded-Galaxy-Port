void main() {
	object oG_sithcomm012 = GetObjectByTag("g_sithcomm012", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm012, 1));
}

