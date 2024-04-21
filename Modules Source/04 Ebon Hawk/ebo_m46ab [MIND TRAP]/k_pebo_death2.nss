void main() {
	object oPC = GetFirstPC();
	object oNearestPrisoner = GetNearestObjectByTag("prisoner", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestPrisoner);
	sub1(3.2);
	ActionPauseConversation();
	DelayCommand(3.2, ActionResumeConversation());
	DelayCommand(2.0, SetDialogPlaceableCamera(20));
	DelayCommand(3.2, AssignCommand(oPC, PlayAnimation(18, 1.0, 7.0)));
	if ((GetGender(oPC) == 1)) {
		DelayCommand(2.6, PlaySound("as_pl_hscream_04"));
	}
	else {
		DelayCommand(2.6, PlaySound("as_pl_hscream_05"));
	}
}
