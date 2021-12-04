void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oRakatCom = GetObjectByTag("RakatCom", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oRakatCom, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

