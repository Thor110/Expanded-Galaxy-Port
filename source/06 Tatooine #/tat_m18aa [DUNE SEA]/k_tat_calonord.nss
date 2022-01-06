void main() {
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	if (((nGlobal == 10) && (GetGlobalBoolean("tat_StarmapFound") == 1))) {
		SetGlobalNumber("K_KALO_BANDON", 20);
		SetEncounterActive(1, OBJECT_SELF);
	}
}

