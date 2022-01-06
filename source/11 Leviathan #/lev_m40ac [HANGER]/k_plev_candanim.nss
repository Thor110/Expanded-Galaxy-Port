// Prototypes
void sub1();

void sub1() {
	ClearAllActions();
	ActionJumpToObject(GetObjectByTag("lev40_wpcand", 0), 0);
	ActionPlayAnimation(115, 1.0, 0.0);
	ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	AssignCommand(GetFirstPC(), sub1());
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

