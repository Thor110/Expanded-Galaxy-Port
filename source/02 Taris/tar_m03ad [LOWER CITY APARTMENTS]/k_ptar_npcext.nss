void main() {
	object oEntering = GetEnteringObject();
	if (((!GetIsPC(oEntering)) && (!IsObjectPartyMember(oEntering)))) {
		DestroyObject(oEntering, 0.0, 1, 0.0);
	}
}

