// Globals
	string stringGLOB_1 = "end_trask";
	int intGLOB_175 = 31;

// Prototypes
object sub3();
void sub2();
void sub1(int intParam1);

object sub3() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub2() {
	object object1 = sub3();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

void sub1(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

void main() {
	sub1(intGLOB_175);
	sub2();
}

