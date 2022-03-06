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
	int int1 = (!sub1(OBJECT_SELF, 0));
	return int1;
}

