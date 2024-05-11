void main() {
	object oPC = GetFirstPC();
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	int int1;
	if (((GetItemInSlot(4, oPC) != OBJECT_INVALID) && (GetItemInSlot(5, oPC) != OBJECT_INVALID))) {
		int1 = 195;
	}
	else {
		if ((GetBaseItemType(GetItemInSlot(4, oPC)) == 9)) {
			int1 = 154;
		}
		else {
			int1 = 113;
		}
	}
	SetLockHeadFollowInDialog(oPC, 0);
	SetLockHeadFollowInDialog(oSta_bastila, 1);
	ActionPauseConversation();
	DelayCommand(4.2, ActionResumeConversation());
	AssignCommand(oSta_bastila, SetFacingPoint(GetPosition(oSta_carth)));
	ChangeToStandardFaction(oSta_bastila, 5);
	ChangeToStandardFaction(oSta_carth, 1);
	SetLightsaberPowered(oPC, 1, 1, 1);
	DelayCommand(0.1, AssignCommand(oPC, CutsceneAttack(oSta_carth, int1, 1, 500)));
	DelayCommand(1.6800001, SetDialogPlaceableCamera(33));
}
