void main() {
	int nParam1 = GetScriptParameter(1);
	object oC_ithorian001;
	object oWp_moza_room;
	object oAdoor_intro = GetObjectByTag("adoor_intro", 0);
	if ((nParam1 == 1)) {
		ActionPauseConversation();
		SetLocked(oAdoor_intro, 0);
		DelayCommand(0.5, AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro)));
		oC_ithorian001 = GetObjectByTag("203_gren", 0);
		oWp_moza_room = GetWaypointByTag("wp_grenn_leave");
		DelayCommand(1.0, AssignCommand(oC_ithorian001, ActionMoveToObject(oWp_moza_room, 0, 1.0)));
		oC_ithorian001 = GetObjectByTag("203_tsf1", 0);
		DelayCommand(2.5, AssignCommand(oC_ithorian001, ActionMoveToObject(oWp_moza_room, 0, 1.0)));
		oC_ithorian001 = GetObjectByTag("203_tsf2", 0);
		DelayCommand(3.5, AssignCommand(oC_ithorian001, ActionMoveToObject(oWp_moza_room, 0, 1.0)));
		DelayCommand(7.5, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
		SetLocked(oAdoor_intro, 1);
		ActionWait(8.0);
		ActionResumeConversation();
	}
	if ((nParam1 == 2)) {
		ActionPauseConversation();
		oC_ithorian001 = CreateObject(1, "c_ithorian001", GetLocation(GetWaypointByTag("wp_moza_create")), 0);
		SetLocked(oAdoor_intro, 0);
		DelayCommand(0.5, AssignCommand(oAdoor_intro, ActionOpenDoor(oAdoor_intro)));
		oWp_moza_room = GetWaypointByTag("wp_moza_room");
		DelayCommand(1.0, AssignCommand(oC_ithorian001, ActionMoveToObject(oWp_moza_room, 0, 1.0)));
		DelayCommand(4.5, AssignCommand(oAdoor_intro, ActionCloseDoor(oAdoor_intro)));
		SetLocked(oAdoor_intro, 1);
		ActionWait(5.0);
		ActionResumeConversation();
	}
}

