// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", oSta_45darthMalak, 1);
	string sName = GetName(oNearestSta_malak_drain);
	int int1 = StringToInt(sName);
	object oNearestSta_malak_facing = GetNearestObjectByTag("sta_malak_facing", oSta_45darthMalak, 1);
	location location1 = GetLocation(oNearestSta_malak_facing);
	int int3;
	int int4;
	int int5;
	int int6;
	int int7;
	object object7;
	int3 = 102;
	int4 = 108;
	int5 = 103;
	int6 = 104;
	int7 = 107;
	sub1(18.0);
	SetDialogPlaceableCamera(int3);
	AssignCommand(oSta_45darthMalak, ClearAllActions());
	AssignCommand(oSta_45darthMalak, JumpToLocation(location1));
	DelayCommand(3.0, AssignCommand(oSta_45darthMalak, SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(3.0, SetDialogPlaceableCamera(int4));
	DelayCommand(6.0, SetDialogPlaceableCamera(int5));
	DelayCommand(9.0, SetDialogPlaceableCamera(int6));
	DelayCommand(12.0, SetDialogPlaceableCamera(int7));
}

