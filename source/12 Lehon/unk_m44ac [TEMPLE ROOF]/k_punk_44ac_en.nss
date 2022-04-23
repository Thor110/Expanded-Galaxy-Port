void main() {
	if ((GetIsObjectValid(GetPartyMemberByIndex(2)) == 0)) {
		SetGlobalBoolean("UNK_PARTY_DOWN", 1);
	}
	else {
		SetGlobalBoolean("UNK_PARTY_DOWN", 0);
	}
}

