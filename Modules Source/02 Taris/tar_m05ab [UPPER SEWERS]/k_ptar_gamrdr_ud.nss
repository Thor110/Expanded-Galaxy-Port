// Globals
	int intGLOB_138 = 1100;

// Prototypes
void sub9(string stringParam1);
void sub8();
void sub7();
void sub6();
void sub5();
void sub4(int intParam1);
//void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4);
string sub2(object objectParam1);
int sub1(object objectParam1);

void sub9(string stringParam1) {
	object object1 = OBJECT_SELF;
	if (GetCommandable(object1)) {
		ClearAllActions();
		CancelCombat(object1);
		ActionMoveToObject(GetNearestObjectByTag("wp_homebase", OBJECT_SELF, 1), 1, 3.0);
		ActionDoCommand(SetCommandable(1, object1));
		SetCommandable(0, OBJECT_SELF);
	}
}

void sub8() {
	int nRandom = Random(100);
	object oNearest = GetNearestCreature(3, 0, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	if ((nRandom < 40)) {
		SetFacingPoint(GetPosition(oNearest));
		ActionPlayAnimation(108, 1.0, 0.0);
	}
	else {
		ActionWait(3.0);
	}
}

void sub7() {
	vector struct4;
	vector vPosition = GetPosition(OBJECT_SELF);
	object oNearestRefuse = GetNearestObjectByTag("refuse", OBJECT_SELF, 1);
	int nRandom = Random(100);
	float float7 = (Random(6) + 7.0);
	object oNearestTar04_alphaghoul = GetNearestObjectByTag("tar04_alphaghoul", OBJECT_SELF, 1);
	float fDistance = GetDistanceBetween(OBJECT_SELF, oNearestTar04_alphaghoul);
	if (((GetIsObjectValid(oNearestTar04_alphaghoul) && (fDistance > 10.0)) && (fDistance < 30.0))) {
		ActionMoveToObject(oNearestTar04_alphaghoul, 0, 1.0);
	}
	else {
		if ((nRandom < 50)) {
			struct4 = Vector(((Random(201) - 100) * 0.01), ((Random(201) - 100) * 0.01), 0.0);
			struct4 = VectorNormalize(struct4);
			struct4 = Vector(((struct4.x * float7) + vPosition.x), ((struct4.y * float7) + vPosition.y), 0.0);
			ActionRandomWalk();
		}
		else {
			if ((nRandom < 65)) {
				ActionPlayAnimation(108, 1.0, 0.0);
			}
			else {
				if ((nRandom < 80)) {
					ActionPlayAnimation(107, 1.0, 0.0);
				}
				else {
					ActionWait(3.0);
				}
			}
		}
	}
}

void sub6() {
	int nRandom = Random(100);
	object oNearest = GetNearestCreature(3, 0, OBJECT_SELF, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	if ((nRandom < 30)) {
		SetFacingPoint(GetPosition(oNearest));
		ActionPlayAnimation(108, 1.0, 0.0);
	}
	if ((nRandom < 45)) {
		SetFacingPoint(GetPosition(oNearest));
		ActionPlayAnimation(5, 1.0, 3.0);
	}
	else {
		ActionWait(3.0);
	}
}

void sub5() {
	vector struct4;
	vector vPosition = GetPosition(OBJECT_SELF);
	object oNearestRefuse = GetNearestObjectByTag("refuse", OBJECT_SELF, 1);
	int nRandom = Random(100);
	float float7 = (Random(6) + 7.0);
	object oNearestTar04_gamraidleader = GetNearestObjectByTag("tar04_gamraidleader", OBJECT_SELF, 1);
	float fDistance = GetDistanceBetween(OBJECT_SELF, oNearestTar04_gamraidleader);
	if (((GetIsObjectValid(oNearestTar04_gamraidleader) && (fDistance > 10.0)) && (fDistance < 30.0))) {
		ActionMoveToObject(oNearestTar04_gamraidleader, 0, 1.0);
	}
	else {
		if ((nRandom < 60)) {
			struct4 = Vector(((Random(201) - 100) * 0.01), ((Random(201) - 100) * 0.01), 0.0);
			struct4 = VectorNormalize(struct4);
			struct4 = Vector(((struct4.x * float7) + vPosition.x), ((struct4.y * float7) + vPosition.y), 0.0);
			ActionRandomWalk();
		}
		else {
			if ((nRandom < 80)) {
				ActionMoveToObject(oNearestRefuse, 0, 1.0);
				ActionPlayAnimation(107, 1.0, 0.0);
			}
			else {
				ActionWait(3.0);
			}
		}
	}
}

void sub4(int intParam1) {
	switch (intParam1) {
		case 0:
			sub5();
			break;
		case 1:
			sub6();
			break;
		case 2:
			sub7();
			break;
		case 3:
			sub8();
			break;
	}
	ActionDoCommand(sub4(intParam1));
}

//void sub3(string stringParam1, int intParam2, int intParam3, float floatParam4) {
//}

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
		//sub3(("Attempted Attack Target = " + IntToString(GetIsObjectValid(object1))), 10, 20, 4.0);
		//sub3(("Attempted Spell Target = " + IntToString(GetIsObjectValid(object3))), 10, 22, 4.0);
		//sub3(("Attack Target = " + IntToString(GetIsObjectValid(oTarget))), 10, 24, 4.0);
		//sub3(("Move Target = " + IntToString(GetIsObjectValid(object7))), 10, 26, 4.0);
	}
	if ((((GetIsObjectValid(object1) || GetIsObjectValid(object3)) || GetIsObjectValid(oTarget)) || (GetIsObjectValid(object7) && GetIsEnemy(object7, OBJECT_SELF)))) {
		return 1;
	}
	return 0;
}

void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
	}
	else {
		if ((int1 == 1002)) {
		}
		else {
			if ((int1 == 1003)) {
				if ((!sub1(OBJECT_SELF))) {
					sub4(0);
				}
			}
			else {
				if ((int1 == 1004)) {
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
							}
							else {
								if ((int1 == 1008)) {
								}
								else {
									if ((int1 == 1009)) {
									}
									else {
										if ((int1 == 1010)) {
										}
										else {
											if ((int1 == intGLOB_138)) {
												sub9("wp_homebase");
												SetCommandable(1, OBJECT_SELF);
												ActionDoCommand(sub4(0));
												SetCommandable(0, OBJECT_SELF);
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

