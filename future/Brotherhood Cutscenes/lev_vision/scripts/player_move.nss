void main() {
	object oPC = GetFirstPC();
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	float float1 = 282.92;
	float float2 = 56.82;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	DelayCommand(0.1, AssignCommand(oPC, SetLockOrientationInDialog(oPC, 0)));
	DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("cpu_guy", 0)))));
}

