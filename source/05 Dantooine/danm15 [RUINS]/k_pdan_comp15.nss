void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oDan15_compb = GetObjectByTag("dan15_compb", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oDan15_compb, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

