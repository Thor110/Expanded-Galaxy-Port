void main() {
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oMessenger = GetObjectByTag("messenger", 0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	float float1 = 251.0021;
	float float2 = 52.048;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(293.32, 55.09, 9.0);
	location location3 = Location(struct4, 0.0);
	DelayCommand(2.0, AssignCommand(oSith_guy2, ActionForceMoveToLocation(location1, int1, 30.0)));
	DelayCommand(0.5, SetLightsaberPowered(oSith_guy, 0, 0, 0));
	DelayCommand(1.0, SetLightsaberPowered(oSith_guy2, 0, 0, 0));
	DelayCommand(1.0, AssignCommand(oSith_guy, ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC())))));
	DelayCommand(3.0, AssignCommand(oSith_guy2, ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC())))));
	DelayCommand(1.0, AssignCommand(oSith_guy3, ActionDoCommand(SetFacingPoint(GetPosition(GetFirstPC())))));
	DelayCommand(4.0, AssignCommand(oMessenger, ActionForceMoveToLocation(location3, 0, 30.0)));
	DelayCommand(5.0, AssignCommand(oSw_door_sith002, ActionCloseDoor(oSw_door_sith002)));
}

