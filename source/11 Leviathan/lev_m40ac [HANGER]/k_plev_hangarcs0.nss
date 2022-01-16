// Prototypes
void sub1(string stringParam1, float floatParam2);

void sub1(string stringParam1, float floatParam2) {
	ClearAllActions();
	ActionJumpToObject(GetObjectByTag(stringParam1, 0), 1);
	ActionWait(floatParam2);
	ActionMoveToObject(GetObjectByTag("lev40_wpflee2", 0), 1, 1.0);
}

void main() {
	int int1;
	object oNPC;
	SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
	SetGlobalFadeOut(7.5, 0.5, 0.0, 0.0, 0.0);
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		oNPC = GetPartyMemberByIndex(int1);
		SetCommandable(1, oNPC);
		AssignCommand(oNPC, sub1(("lev40_wpflee" + IntToString(int1)), (int1 * 1.0)));
		(int1++);
	}
}

