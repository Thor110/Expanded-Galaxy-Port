void main() {
	object oG_sithcomm011 = GetObjectByTag("g_sithcomm011", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, JumpToObject(oG_sithcomm011, 1));
}

