/*
// Globals
	int intGLOB_11 = 10;
// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}
//GetIsObjectValid(OBJECT_SELF)
//!GetLocalBoolean(OBJECT_SELF, 10) > 0
*/
void main() {
	object oEntering = GetEnteringObject();
	//if ((GetIsPC(oEntering) && (!sub1(OBJECT_SELF)))) {
	if ((GetIsPC(oEntering) && (!GetLocalBoolean(OBJECT_SELF, 10) > 0))) {
		SetLocalBoolean(OBJECT_SELF, 10, 1);
		AssignCommand(GetObjectByTag("end_trask", 0), ActionWait(2.0));
		AssignCommand(GetObjectByTag("end_trask", 0), ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", ""));
	}
}

