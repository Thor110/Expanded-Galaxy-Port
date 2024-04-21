// Prototypes
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((GetCurrentHitPoints(objectParam1) < 1)) {
		ApplyEffectToObject(0, EffectResurrection(), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHeal(1), objectParam1, 0.0);
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
}

void main() {
	SetGlobalNumber("Tar_JaniceDro", 30);
	SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1(GetFirstPC(), GetLocation(GetObjectByTag("tar02_wppc", 0))));
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}
