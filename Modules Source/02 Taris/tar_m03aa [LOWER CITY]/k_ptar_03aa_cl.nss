// Prototypes
int sub2(object objectParam1, int intParam2);
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

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

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oAreaObject = GetFirstObjectInArea(OBJECT_SELF, 1);
	sub1("START CLEANUP...", 5, 7, 5.0);
	while (GetIsObjectValid(oAreaObject)) {
		sub1("FOUND OBJ", 5, 6, 5.0);
		if (sub2(oAreaObject, 9)) {
			sub1("CLEANING UP OBJECT", 5, 5, 5.0);
			DestroyObject(oAreaObject, 0.0, 0, 0.0);
		}
		oAreaObject = GetNextObjectInArea(OBJECT_SELF, 1);
	}
}
