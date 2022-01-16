void main() {
	SetGlobalNumber("K_KOTOR_MASTER", 20);
	SetGlobalNumber("K_CAPTURED_LEV", 10);
	SetLocked(GetObjectByTag("lev40_hangar", 0), 0);
	RemoveAvailableNPC(0);
	AddPartyMember(2, GetObjectByTag("carth", 0));
}

