// Prototypes
void sub1();

void sub1() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("lev40_wpescape3", 0), 0, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("lev40_wpjoleeout", 0))));
}

void main() {
	object oNearestLev40_cell08 = GetNearestObjectByTag("lev40_cell08", OBJECT_SELF, 1);
	object oLevguard403 = GetObjectByTag("levguard403", 0);
	AssignCommand(oLevguard403, sub1());
	DelayCommand(4.0, AssignCommand(oNearestLev40_cell08, ActionCloseDoor(oNearestLev40_cell08)));
	ActionPauseConversation();
	ActionWait(7.0);
	ActionResumeConversation();
}

