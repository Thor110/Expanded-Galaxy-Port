// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	object oPC = GetFirstPC();
	while ((oPC != OBJECT_INVALID)) {
		if ((objectParam1 == oPC)) {
			return 1;
		}
		oPC = GetNextPC();
	}
	return 0;
}

void main() {
	object oEntering = GetEnteringObject();
	object object1 = GetObjectByTag("Carth", 0);
	if ((sub1(oEntering) && (GetGlobalNumber("tar_carth") == 0))) {
		AssignCommand(object1, ClearAllActions());
		AssignCommand(object1, ActionStartConversation(GetNearestCreature(1, 1, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF), "", 0, 0, 0, "", "", "", "", "", ""));
	}
}
