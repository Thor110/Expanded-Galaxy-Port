void main() {
	object oPC = GetFirstPC();
	object oNearestTat18_wp_tuskatk = GetNearestObjectByTag("tat18_wp_tuskatk", OBJECT_SELF, 1);
	object oNearestTat18_wp_tuskenc = GetNearestObjectByTag("tat18_wp_tuskenc", OBJECT_SELF, 1);
	object oNearestTat18_tusken05 = GetNearestObjectByTag("tat18_tusken05", OBJECT_SELF, 1);
	object object9 = GetNearestObjectByTag("tat18_tusken05", OBJECT_SELF, 2);
	object oNearestTat18_tusken06 = GetNearestObjectByTag("tat18_tusken06", OBJECT_SELF, 1);
	switch (GetGlobalNumber("tat_DuneSeaEnc")) {
		case 1:
			SetDialogPlaceableCamera(15);
			break;
		case 2:
			SetDialogPlaceableCamera(17);
			break;
		case 3:
			SetDialogPlaceableCamera(19);
			break;
		case 4:
			SetDialogPlaceableCamera(21);
			break;
	}
	ActionPauseConversation();
	DelayCommand(7.0, ActionResumeConversation());
	AssignCommand(oNearestTat18_tusken05, DelayCommand(0.3, ActionPlayAnimation(107, 1.0, 0.0)));
	AssignCommand(oNearestTat18_tusken06, DelayCommand(0.45000002, ActionPlayAnimation(108, 1.0, 0.0)));
	AssignCommand(oNearestTat18_tusken05, DelayCommand(2.0, ClearAllActions()));
	AssignCommand(object9, DelayCommand(2.2, ClearAllActions()));
	AssignCommand(oNearestTat18_tusken06, DelayCommand(1.5, ClearAllActions()));
	AssignCommand(oNearestTat18_tusken05, DelayCommand(2.0, ActionMoveToObject(oNearestTat18_wp_tuskatk, 1, 1.0)));
	AssignCommand(object9, DelayCommand(2.2, ActionMoveToObject(oNearestTat18_wp_tuskatk, 1, 1.0)));
	AssignCommand(oNearestTat18_tusken06, DelayCommand(1.5, ActionMoveToObject(oNearestTat18_wp_tuskatk, 1, 1.0)));
	AssignCommand(oPC, DelayCommand(2.0, ActionDoCommand(SetFacingPoint(GetPosition(oNearestTat18_wp_tuskenc)))));
	PlaySound("n_tusken_bat2");
}

