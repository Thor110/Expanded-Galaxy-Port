// Globals
	string stringGLOB_1 = "end_trask";

	int intGLOB_152 = 3;
	int intGLOB_154 = 5;
	int intGLOB_155 = 6;

	int intGLOB_170 = 21;
	int intGLOB_171 = 22;

// Prototypes
void sub3(int intParam1);
object sub2();
int sub1();

void sub3(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

object sub2() {
	return GetObjectByTag(stringGLOB_1, 0);
}

int sub1() {
	return GetGlobalNumber("END_TRASK_DLG");
}

void main() {
	object oPC = GetFirstPC();
	int int1 = sub1();
	int int3 = GetSubScreenID();
	object object3 = sub2();
	if (((int1 == intGLOB_152) && (int3 == 1))) {
		AssignCommand(object3, ActionWait(0.1));
		AssignCommand(object3, ActionDoCommand(SignalEvent(sub2(), EventUserDefined(200))));
	}
	else {
		if (((int1 == intGLOB_154) && ((int3 == 5) || (int3 == 6)))) {
			sub3(intGLOB_155);
			AssignCommand(object3, ActionWait(0.1));
			AssignCommand(object3, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", ""));
		}
		else {
			if (((int1 == intGLOB_170) && (int3 == 5))) {
				sub3(intGLOB_171);
			}
		}
	}
}

