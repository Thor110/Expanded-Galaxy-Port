// Prototypes
void sub1();

void sub1() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("lev40_wptech0a", 0), 0, 1.0);
	ActionPlayAnimation(15, 1.0, 360.0);
}

void main() {
	object oLev40_hktech0 = GetObjectByTag("lev40_hktech0", 0);
	object oLev40_hktech1 = GetObjectByTag("lev40_hktech1", 0);
	object oWeldingDroid = GetObjectByTag("WeldingDroid", 0);
	SoundObjectStop(oWeldingDroid);
	AssignCommand(oLev40_hktech0, sub1());
	ActionPauseConversation();
	ActionWait(4.0);
	ActionResumeConversation();
}

