void main() {
	object oRakatCom = GetObjectByTag("RakatCom", 0);
	if (IsObjectPartyMember(GetEnteringObject())) {
		AssignCommand(oRakatCom, ActionPlayAnimation(200, 1.0, 0.0));
	}
}

