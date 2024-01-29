// Prototypes
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
}

void main() {
	object oMission = GetObjectByTag("mission", 0);
	object oTar05_wpmiscomp = GetObjectByTag("tar05_wpmiscomp", 0);
	sub1(oMission, GetLocation(oTar05_wpmiscomp));
}

