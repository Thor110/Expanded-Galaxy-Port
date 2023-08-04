void main() {
	object oG_sithcomm003 = GetObjectByTag("g_sithcomm003", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm003, 1));
}

