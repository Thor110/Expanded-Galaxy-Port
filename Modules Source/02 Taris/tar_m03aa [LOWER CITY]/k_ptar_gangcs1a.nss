// Globals
	int intGLOB_130 = 62;
// Prototypes
void sub5(object objectParam1, int intParam2);
void sub4(object objectParam1, talent talentParam2, int intParam3);
void sub3(object objectParam1, object objectParam2, talent talentParam3, int intParam4);
void sub2(object objectParam1, int intParam2);
void sub1(object objectParam1, object objectParam2, int intParam3);

void sub5(object objectParam1, int intParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	SetLocalBoolean(objectParam1, intGLOB_130, 1);
	ChangeToStandardFaction(objectParam1, intParam2);
	SetMinOneHP(objectParam1, 1);
}
void sub4(object objectParam1, talent talentParam2, int intParam3) {
	if (intParam3) {
		SetMinOneHP(objectParam1, 0);
		ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(objectParam1) - 1), 8, 0), objectParam1, 0.0);
	}
	ApplyEffectToObject(1, EffectAssuredHit(), OBJECT_SELF, 3.0);
	ActionUseTalentOnObject(talentParam2, objectParam1);
}

void sub3(object objectParam1, object objectParam2, talent talentParam3, int intParam4) {
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	AssignCommand(objectParam1, ActionDoCommand(sub4(objectParam2, talentParam3, intParam4)));
}

void sub2(object objectParam1, int intParam2) {
	if (intParam2) {
		SetMinOneHP(objectParam1, 0);
		ApplyEffectToObject(0, EffectDamage((GetCurrentHitPoints(objectParam1) - 1), 8, 0), objectParam1, 0.0);
		CutsceneAttack(objectParam1, 3, 1, 1000);
	}
	else {
		ApplyEffectToObject(1, EffectAssuredHit(), OBJECT_SELF, 3.0);
		ActionAttack(objectParam1, 0);
	}
}

void sub1(object objectParam1, object objectParam2, int intParam3) {
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	AssignCommand(objectParam1, ActionDoCommand(sub2(objectParam2, intParam3)));
}

void main() {
	object oTar03_bekcs1 = GetObjectByTag("tar03_bekcs1", 0);
	object oTar03_vulkcut1 = GetObjectByTag("tar03_vulkcut1", 0);
	object oTar03_vulkcut0 = GetObjectByTag("tar03_vulkcut0", 0);
	sub1(oTar03_vulkcut1, oTar03_bekcs1, 0);
	DelayCommand(3.0, sub3(oTar03_vulkcut0, oTar03_bekcs1, TalentFeat(28), 1));
	ActionPauseConversation();
  ActionWait(5.0);
  ActionResumeConversation();
  int int1;
	object object1;
	int1 = 0;
	while ((int1 < 3)) {
		object1 = GetObjectByTag(("tar03_bekcs" + IntToString(int1)), 0);
		sub5(object1, 2);
		object1 = GetObjectByTag(("tar03_vulkcut" + IntToString(int1)), 0);
		sub5(object1, 4);
		(int1++);
	}
}

