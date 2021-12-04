void main() {
	int int1;
	object oMan28ac_door01 = GetObjectByTag("man28ac_door01", int1);
	while (GetIsObjectValid(oMan28ac_door01)) {
		SetLocked(oMan28ac_door01, 1);
		AssignCommand(oMan28ac_door01, ActionCloseDoor(oMan28ac_door01));
		(int1++);
		oMan28ac_door01 = GetObjectByTag("man28ac_door01", int1);
	}
	SetPlotFlag(OBJECT_SELF, 0);
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
	DelayCommand(2.0, SetDialogPlaceableCamera(3));
}

