// Prototypes
void sub2();

void sub2() {
	ActionMoveToObject(GetFirstPC(), 0, 1.0);
	ActionPlayAnimation(11, 1.0, 3.0);
}

void main() {
	object oLev40_t3tech = GetObjectByTag("lev40_t3tech", 0);
	object oLev40_drddoor = GetObjectByTag("lev40_drddoor", 0);
  ActionOpenDoor(oLev40_drddoor);
	//AssignCommand(oLev40_drddoor, ActionOpenDoor(oLev40_drddoor));
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("lev40_wpt3techa", 0), 0, 1.0)));
	DelayCommand(2.0, AssignCommand(oLev40_t3tech, sub2()));
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

