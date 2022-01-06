// Prototypes
void sub1(int intParam1, string stringParam2, location locationParam3);

void sub1(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void main() {
	ActionPauseConversation();
	SetGlobalNumber("G_FinalChoice", 2);
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	if ((!GetIsObjectValid(oSta_bastila))) {
		object oSta_way_bastila = GetObjectByTag("sta_way_bastila", 0);
		location location1 = GetLocation(oSta_way_bastila);
		sub1(1, "sta_bastila", location1);
	}
	ActionResumeConversation();
}

