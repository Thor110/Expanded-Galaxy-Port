void main() {
	AssignCommand(GetObjectByTag("unk43_blk1", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_blk2", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("unk43_blk1", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after1", 0))));
	AssignCommand(GetObjectByTag("unk43_blk2", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("after2", 0))));
	StartNewModule("unk_m41ac", "unk41_sw41ac", "", "", "", "", "", "");
}

