void main() {
	string string1;
	object object1 =  GetObjectByTag("end_trask", 0);
	if (GetIsObjectValid(object1)) {
		string1 = "Valid ";
	}
	else {
		string1 = "Not Valid ";
	}
	if (IsObjectPartyMember(object1)) {
		string1 = (string1 + "Is Party ");
	}
	else {
		string1 = (string1 + "Not Party ");
	}
	AssignCommand(object1, ClearAllActions());
	AssignCommand(object1, ActionMoveToObject(GetObjectByTag("testwp", 0), 0, 1.0));
}

