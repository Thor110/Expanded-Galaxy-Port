void main() {
	DestroyObject(GetObjectByTag("unk41_rancor01", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_rancor02", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_rancord", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blk1", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blk2", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blk3", 0), 0.0, 0, 0.0);
	DestroyObject(GetObjectByTag("unk41_blk4", 0), 0.0, 0, 0.0);
	SetGlobalBoolean("UNK_SPAWN", 1);
	SetGlobalBoolean("UNK_TEMP5", 1);
	StartNewModule("unk_m43aa", "unk43_sw43aa08", "", "", "", "", "", "");
}

