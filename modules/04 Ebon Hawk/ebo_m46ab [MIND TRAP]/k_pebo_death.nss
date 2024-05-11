void main() {
	object oPC = GetFirstPC();
	object oNearestPrisoner = GetNearestObjectByTag("prisoner", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestPrisoner);
	ActionPauseConversation();
	DelayCommand(8.0, ActionResumeConversation());
	AssignCommand(oNearestPrisoner, SetFacingPoint(GetPosition(oPC)));
	AssignCommand(oNearestPrisoner, PlayAnimation(4, 1.0, 3.0));
	DelayCommand(2.3, ApplyEffectToObject(1, EffectBeam(2051, oNearestPrisoner, 1, 0), oPC, 1.2));
	DelayCommand(3.0, AssignCommand(oPC, PlayAnimation(18, 1.0, 9.0)));
	DelayCommand(2.8, ApplyEffectAtLocation(0, EffectVisualEffect(3011, 0), location1, 0.0));
	DelayCommand(1.2, DestroyObject(oNearestPrisoner, 0.0, 0, 0.0));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectVisualEffect(1007, 0), oPC, 0.0));
	DelayCommand(2.9, ApplyEffectToObject(0, EffectVisualEffect(1011, 0), oPC, 0.0));
	DelayCommand(5.0, SetDialogPlaceableCamera(20));
	DelayCommand(6.0, SetDialogPlaceableCamera(21));
	if ((GetGender(oPC) == 1)) {
		DelayCommand(6.6, PlaySound("as_pl_hscream_04"));
	}
	else {
		DelayCommand(6.6, PlaySound("as_pl_hscream_05"));
	}
	DelayCommand(8.0, EndGame());
}
