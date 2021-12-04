void main() {
	object object1 = GetFirstInPersistentObject(OBJECT_SELF, 1, 0);
	object oDan15_compw = GetObjectByTag("dan15_compw", 0);
	if (((!GetIsObjectValid(object1)) && IsObjectPartyMember(GetExitingObject()))) {
		AssignCommand(oDan15_compw, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

