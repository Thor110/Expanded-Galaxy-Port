void main() {
	location location1 = GetLocation(GetObjectByTag("sta_bast_pc_move0", 0));
	AssignCommand(GetFirstPC(), JumpToLocation(location1));
}

