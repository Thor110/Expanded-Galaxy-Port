// Globals
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
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
	int int1;
	int int2 = intGLOB_2;
	int int3 = intGLOB_3;
	int int4 = intGLOB_4;
	if (sub1(OBJECT_SELF, int2)) {
		return 1;
	}
	else {
		return 0;
	}
}

