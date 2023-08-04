// Globals
	int intGLOB_1 = 0;
// Prototypes
int sub1(object objectParam1, int intParam2);

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int StartingConditional() {
	return (sub1(OBJECT_SELF, intGLOB_1) == 0);
}

