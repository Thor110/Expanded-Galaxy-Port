void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oUnk42_raksupercomp = GetObjectByTag("unk42_raksupercomp", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oUnk42_raksupercomp, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

