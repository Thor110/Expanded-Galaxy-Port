void main() {
	if ((GetIsPC(GetEnteringObject()) == 1)) {
		AddPartyMember(4, GetObjectByTag("jolee", 0));
		AddPartyMember(5, GetObjectByTag("juhani", 0));
	}
}

