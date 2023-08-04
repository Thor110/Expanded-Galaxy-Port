void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oTempleComp3 = GetObjectByTag("TempleComp3", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oTempleComp3, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

