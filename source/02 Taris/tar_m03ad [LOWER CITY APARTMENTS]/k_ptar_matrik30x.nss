// Prototypes
void sub3(object objectParam1);
void sub2();
void sub1(object objectParam1);

void sub3(object objectParam1) {
	effect efVisual = EffectVisualEffect(3003, 0);
	ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0);
}

void sub2() {
	ClearAllActions();
	ActionMoveToObject(GetObjectByTag("tar03_wppcexp", 0), 1, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("tar03_wpparty1", 0))));
}

void sub1(object objectParam1) {
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, sub2());
}

void main() {
	int int1;
	int int2;
	object object1;
	object oTar03_wppcexp = GetObjectByTag("tar03_wppcexp", 0);
	SetGlobalNumber("Tar_Matrik", 30);
	ActionPauseConversation();
	int1 = 1;
	int2 = 0;
	sub1(GetPartyMemberByIndex(0));
	ActionMoveToObject(GetObjectByTag("tar03_wpmatrikexp", 0), 1, 1.0);
	ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("tar03_wpparty1", 0))));
	ActionWait(2.0);
	ActionDoCommand(sub3(GetObjectByTag("tar03_wpexp0", 0)));
	ActionWait(2.0);
	ActionDoCommand(sub3(GetObjectByTag("tar03_wpexp1", 0)));
	ActionDoCommand(SetGlobalFadeOut(0.0, 3.0, 0.0, 0.0, 0.0));
	ActionWait(2.0);
	ActionDoCommand(sub3(GetObjectByTag("tar03_wpexp2", 0)));
	ActionDoCommand(sub3(GetObjectByTag("tar03_wpexp3", 0)));
	ActionDoCommand(sub3(GetObjectByTag("tar03_wpexp4", 0)));
	ActionWait(2.0);
	ActionResumeConversation();
}

