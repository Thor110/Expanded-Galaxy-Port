// Globals
	string stringGLOB_1 = "end_trask";
// Prototypes
object sub2();
void sub1();

object sub2() {
	return GetObjectByTag(stringGLOB_1, 0);
}

void sub1() {
	object object1 = sub2();
	if ((GetPartyMemberByIndex(0) == object1)) {
		SetPartyLeader(0xFFFFFFFF);
	}
	NoClicksFor(0.5);
	DelayCommand(0.1, SignalEvent(object1, EventUserDefined(50)));
}

void main() {
	AssignCommand(sub2(), sub1());
}

