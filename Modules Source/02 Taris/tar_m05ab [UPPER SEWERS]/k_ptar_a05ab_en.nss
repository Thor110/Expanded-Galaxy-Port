// Globals
	int intGLOB_10 = 9;

// Prototypes
int sub2(object objectParam1, int intParam2);
void sub1(object objectParam1);

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void sub1(object objectParam1) {
	object oAreaObject = GetFirstObjectInArea(objectParam1, 1);
	while (GetIsObjectValid(oAreaObject)) {
		if (sub2(oAreaObject, intGLOB_10)) {
			DestroyObject(oAreaObject, 0.0, 1, 0.0);
		}
		oAreaObject = GetNextObjectInArea(objectParam1, 1);
	}
}

void main() {
	sub1(OBJECT_SELF);
}

