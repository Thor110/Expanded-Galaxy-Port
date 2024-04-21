void main() {
	object oPC = GetFirstPC();
	object oNearestPrisoner = GetNearestObjectByTag("prisoner", OBJECT_SELF, 1);
	location location1 = GetLocation(oPC);
	location location3 = GetLocation(oNearestPrisoner);
	location location5 = GetLocation(GetObjectByTag("ebo_pcjump", 0));
	SetGlobalNumber("EBO_MYSTERY_BOX", 10);
	ActionPauseConversation();
	DelayCommand(9.2, ActionResumeConversation());
	DelayCommand(0.5, AssignCommand(oNearestPrisoner, PlayAnimation(4, 1.0, 3.0)));
	DelayCommand(2.5, ApplyEffectToObject(1, EffectBeam(2051, oNearestPrisoner, 1, 0), oPC, 1.2));
	DelayCommand(3.0, ApplyEffectAtLocation(0, EffectVisualEffect(3011, 0), location1, 0.0));
	DelayCommand(3.0, ApplyEffectToObject(2, EffectInvisibility(2), oPC, 0.0));
	DelayCommand(3.3, AssignCommand(oPC, JumpToLocation(location5)));
	DelayCommand(8.2, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(6.5, AssignCommand(oNearestPrisoner, PlayAnimation(102, 1.0, 7.0)));
	DelayCommand(8.1, AssignCommand(oNearestPrisoner, PlayAnimation(103, 1.0, 7.0)));
	DelayCommand(9.2, AssignCommand(oPC, ClearAllEffects()));
	DelayCommand(9.2, StartNewModule("ebo_m12aa", "EBO_PRISON_SPAWN", "", "", "", "", "", ""));
}
