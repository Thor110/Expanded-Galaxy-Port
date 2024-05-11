// Prototypes
void sub4();
void sub3(object objectParam1, location locationParam2);
void sub2();
void sub1(object objectParam1, object objectParam2, object objectParam3);

void sub4() {
	ApplyEffectToObject(0, EffectVisualEffect(1028, 0), OBJECT_SELF, 0.0);
	ActionPlayAnimation(21, 1.0, 2.0);
}

void sub3(object objectParam1, location locationParam2) {
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

void sub2() {
	int int1 = 0;
	object oNPC = GetPartyMemberByIndex(int1);
	while (GetIsObjectValid(oNPC)) {
		if ((GetCurrentHitPoints(oNPC) < 1)) {
			ApplyEffectToObject(0, EffectResurrection(), oNPC, 0.0);
			ApplyEffectToObject(0, EffectHeal(1), oNPC, 0.0);
		}
		(int1++);
		oNPC = GetPartyMemberByIndex(int1);
	}
}

void sub1(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub2();
	if (GetIsObjectValid(oNPC)) {
		sub3(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub3(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub3(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

void main() {
	object oM4H8 = GetObjectByTag("M4H8", 0);
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
	sub1(GetObjectByTag("tar02_wpt3h81", 0), GetObjectByTag("tar02_wpt3h82", 0), GetObjectByTag("tar02_wpt3h83", 0));
	AssignCommand(oM4H8, ActionJumpToObject(GetObjectByTag("tar02_wpt3h80", 0), 0));
	DelayCommand(1.0, AssignCommand(oM4H8, sub4()));
	DelayCommand(3.0, AssignCommand(oM4H8, sub4()));
	DelayCommand(4.0, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), GetLocation(oM4H8), 0.0));
	DelayCommand(4.0, ApplyEffectToObject(0, EffectDeath(0, 1), oM4H8, 0.0));
}
