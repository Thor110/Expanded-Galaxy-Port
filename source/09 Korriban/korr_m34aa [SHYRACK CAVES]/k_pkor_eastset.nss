void main() {
	object oNPC = GetPartyMemberByIndex(0);
	if ((GetEnteringObject() == oNPC)) {
		SetGlobalBoolean("KOR_CAVE_ACTIVE", 1);
	}
}

