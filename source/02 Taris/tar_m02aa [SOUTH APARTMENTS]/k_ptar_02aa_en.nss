// Globals
/*
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
*/
void main() {
	object oTrooper1 = GetObjectByTag("Trooper1", 0);
	object oDroid1 = GetObjectByTag("droid1", 0);
	object oDroid2 = GetObjectByTag("droid2", 0);
	object oBith = GetObjectByTag("Bith", 0);
	object oDuros = GetObjectByTag("Duros", 0);
	if ((((((!GetIsObjectValid(oTrooper1)) && (!GetIsObjectValid(oDroid1))) && (!GetIsObjectValid(oDroid2))) || ((GetIsDead(oTrooper1) && GetIsDead(oDroid1)) && GetIsDead(oDroid2))) && (!GetLoadFromSaveGame()))) {
		AssignCommand(oTrooper1, SetIsDestroyable(1, 1, 1));
		AssignCommand(oDroid1, SetIsDestroyable(1, 1, 1));
		AssignCommand(oDroid2, SetIsDestroyable(1, 1, 1));
		AssignCommand(oBith, SetIsDestroyable(1, 1, 1));
		DestroyObject(oTrooper1, 0.0, 1, 0.0);
		DestroyObject(oDroid1, 0.0, 1, 0.0);
		DestroyObject(oDroid2, 0.0, 1, 0.0);
		DestroyObject(oBith, 0.0, 1, 0.0);
		DestroyObject(oDuros, 0.0, 1, 0.0);
		//sub1(OBJECT_SELF);
	}
}

