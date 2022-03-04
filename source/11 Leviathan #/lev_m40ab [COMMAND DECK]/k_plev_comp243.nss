int StartingConditional() {
	int int1 = ((GetGlobalBoolean("Lev_secDroidInact") == 1) && (GetGlobalBoolean("Lev_secTurretInact") == 1));
	return int1;
}

