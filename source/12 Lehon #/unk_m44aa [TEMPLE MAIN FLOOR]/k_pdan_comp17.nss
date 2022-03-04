void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oTempleComp2 = GetObjectByTag("TempleComp2", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oTempleComp2, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

