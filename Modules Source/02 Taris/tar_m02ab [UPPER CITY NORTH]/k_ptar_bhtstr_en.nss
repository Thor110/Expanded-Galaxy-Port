// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, 10);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	object oEntering = GetEnteringObject();
	if ((GetIsPC(oEntering) && (sub1(OBJECT_SELF) == 0))) {
		SetLocalBoolean(OBJECT_SELF, 10, 1);
		AssignCommand(GetObjectByTag("BulliedMer021", 0), ActionStartConversation(GetObjectByTag("bountyhunt022", 0), "", 0, 0, 0, "", "", "", "", "", ""));
	}
}
