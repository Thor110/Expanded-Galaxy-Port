void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oUnk44_rakcomp = GetObjectByTag("unk44_rakcomp", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oUnk44_rakcomp, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

