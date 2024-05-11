// Prototypes
void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
string sub2(object objectParam1);
int sub1(object objectParam1);

void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
}

string sub2(object objectParam1) {
	string string1 = ((GetName(objectParam1) + "_") + ObjectToString(objectParam1));
	return string1;
}

int sub1(object objectParam1) {
	object object1 = GetAttemptedAttackTarget();
	object object3 = GetAttemptedSpellTarget();
	object oTarget = GetAttackTarget(OBJECT_SELF);
	object object7 = GetAttemptedMovementTarget();
	if ((GetTag(OBJECT_SELF) == "DEBUG")) {
		sub2(OBJECT_SELF);
		sub3(("Attempted Attack Target = " + IntToString(GetIsObjectValid(object1))), 10, 20, 4.0);
		sub3(("Attempted Spell Target = " + IntToString(GetIsObjectValid(object3))), 10, 22, 4.0);
		sub3(("Attack Target = " + IntToString(GetIsObjectValid(oTarget))), 10, 24, 4.0);
		sub3(("Move Target = " + IntToString(GetIsObjectValid(object7))), 10, 26, 4.0);
	}
	if ((((GetIsObjectValid(object1) || GetIsObjectValid(object3)) || GetIsObjectValid(oTarget)) || (GetIsObjectValid(object7) && GetIsEnemy(object7, OBJECT_SELF)))) {
		return 1;
	}
	return 0;
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
		if (((!sub1(OBJECT_SELF)) && (GetDistanceBetween(OBJECT_SELF, GetObjectByTag("tar03_wpcanpost", 0)) > 2.0))) {
			ActionForceMoveToObject(GetObjectByTag("tar03_wpcanpost", 0), 0, 1.0, 30.0);
			ActionDoCommand(SetCommandable(1, OBJECT_SELF));
			SetCommandable(0, OBJECT_SELF);
		}
	}
}
