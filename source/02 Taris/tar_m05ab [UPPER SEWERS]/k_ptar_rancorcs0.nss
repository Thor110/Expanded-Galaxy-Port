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
	object oTar05_stampy = GetObjectByTag("tar05_stampy", 0);
	object oNPC;
	int int1;
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	//SetLocked(OBJECT_SELF, 0);
	ChangeToStandardFaction(oTar05_stampy, 5);
	AssignCommand(oTar05_stampy, ClearAllActions());
  AssignCommand(oTar05_stampy, ActionMoveToObject(GetObjectByTag("tar05_wppile", 0), 0, 1.0));
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		sub1(oNPC, GetLocation(GetObjectByTag("tar05_wpparty", 0)));
		(int1++);
	}
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
}

