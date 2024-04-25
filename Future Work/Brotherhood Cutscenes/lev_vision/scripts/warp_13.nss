void main() {
	object oG_sithcomm013 = GetObjectByTag("g_sithcomm013", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm013, 1));
}

