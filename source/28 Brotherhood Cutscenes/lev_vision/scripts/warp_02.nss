void main() {
	object oG_sithcomm002 = GetObjectByTag("g_sithcomm002", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm002, 1));
}

