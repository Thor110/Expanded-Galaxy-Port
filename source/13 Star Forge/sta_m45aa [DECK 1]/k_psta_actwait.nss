// Prototypes
void sub5(location locationParam1, int intParam2);
void sub4(object objectParam1, location locationParam2);
void sub3();
void sub2(object objectParam1, object objectParam2, object objectParam3);
void sub1(float floatParam1);

void sub5(location locationParam1, int intParam2) {
	//ActionForceMoveToLocation(locationParam1, intParam2, 30.0);
  ActionMoveToLocation(locationParam1,0);
	//ActionDoCommand(SetCommandable(1, OBJECT_SELF));
	//SetCommandable(0, OBJECT_SELF);
}

void sub4(object objectParam1, location locationParam2) {
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

void sub3() {
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

void sub2(object objectParam1, object objectParam2, object objectParam3) {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	sub3();
	if (GetIsObjectValid(oNPC)) {
		sub4(oNPC, GetLocation(objectParam1));
		AssignCommand(oNPC, SetFacing(GetFacing(objectParam1)));
	}
	if (GetIsObjectValid(object3)) {
		sub4(object3, GetLocation(objectParam2));
		DelayCommand(0.3, AssignCommand(object3, SetFacing(GetFacing(objectParam2))));
	}
	if (GetIsObjectValid(object5)) {
		sub4(object5, GetLocation(objectParam3));
		DelayCommand(0.3, AssignCommand(object5, SetFacing(GetFacing(objectParam3))));
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNPC = GetPartyMemberByIndex(0);
	object object3 = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oNearestSTA_JUMP0_WP = GetNearestObjectByTag("STA_JUMP0_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP1_WP = GetNearestObjectByTag("STA_JUMP1_WP", OBJECT_SELF, 1);
	object oNearestSTA_JUMP2_WP = GetNearestObjectByTag("STA_JUMP2_WP", OBJECT_SELF, 1);
	location location1 = GetLocation(GetNearestObjectByTag("STA_MOVE0_WP", OBJECT_SELF, 1));
	location location3 = GetLocation(GetNearestObjectByTag("STA_MOVE1_WP", OBJECT_SELF, 1));
	location location5 = GetLocation(GetNearestObjectByTag("STA_MOVE2_WP", OBJECT_SELF, 1));
	sub1(5.6);
	sub2(oNearestSTA_JUMP0_WP, oNearestSTA_JUMP1_WP, oNearestSTA_JUMP2_WP);// characters get stuck after cutscene from this?
	DelayCommand(0.01, AssignCommand(oNPC, sub5(location1, 0)));
	DelayCommand(0.02, AssignCommand(object3, sub5(location3, 0)));
	DelayCommand(0.03, AssignCommand(object5, sub5(location5, 0)));
  //DelayCommand(10.4, AssignCommand(oNPC, ClearAllActions()));
  //DelayCommand(10.4, AssignCommand(object3, ClearAllActions()));
  //DelayCommand(10.4, AssignCommand(object5, ClearAllActions()));
}

