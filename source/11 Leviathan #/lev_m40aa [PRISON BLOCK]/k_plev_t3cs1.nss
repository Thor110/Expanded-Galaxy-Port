void main() {
	object oLev40_t3tech = GetObjectByTag("lev40_t3tech", 0);
	object oLev40_shopdroid = GetObjectByTag("lev40_shopdroid", 0);
	object oLev40_drddoor = GetObjectByTag("lev40_drddoor", 0);
	AssignCommand(oLev40_shopdroid, ActionMoveToObject(GetFirstPC(), 0, 1.0));
	DelayCommand(3.0, AssignCommand(oLev40_t3tech, ActionMoveToObject(GetObjectByTag("lev40_wpt3tech", 0), 0, 1.0)));
	DelayCommand(6.0, AssignCommand(oLev40_drddoor, ActionCloseDoor(oLev40_drddoor)));
	ActionPauseConversation();
	ActionWait(8.0);
	ActionResumeConversation();
}

