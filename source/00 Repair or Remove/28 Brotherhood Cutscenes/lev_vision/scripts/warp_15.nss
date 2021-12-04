void main() {
	object oG_sithcomm015 = GetObjectByTag("g_sithcomm015", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm015, 1));
}

