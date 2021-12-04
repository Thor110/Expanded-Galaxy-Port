void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oTempleComp1 = GetObjectByTag("TempleComp1", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oTempleComp1, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

