void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object oEntering = GetEnteringObject();
	object oEnd_sith1 = GetObjectByTag("end_sith1", 0);
	object oEnd_sith2 = GetObjectByTag("end_sith2", 0);
	object oEnd_sith3 = GetObjectByTag("end_sith3", 0);
	object oEnd_soldier1 = GetObjectByTag("end_soldier1", 0);
	object oEnd_soldier2 = GetObjectByTag("end_soldier2", 0);
	if ((oEntering == oNPC)) {
		ChangeToStandardFaction(oEnd_soldier1, 4);
		ChangeToStandardFaction(oEnd_soldier2, 4);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

