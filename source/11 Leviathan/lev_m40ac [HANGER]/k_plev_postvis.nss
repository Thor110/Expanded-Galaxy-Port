void main() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	AddPartyMember(0, oBastila);
	AddPartyMember(2, oCarth);
}

