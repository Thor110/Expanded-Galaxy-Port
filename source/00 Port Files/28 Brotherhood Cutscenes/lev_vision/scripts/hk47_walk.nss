void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oInjured_guy = GetObjectByTag("injured_guy", 0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	float float1 = 254.49;
	float float2 = 54.89;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(254.49, 54.89, 9.0);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(254.03, 54.58, 9.0);
	location location5 = Location(struct6, 0.0);
	DelayCommand(1.0, AssignCommand(oInjured_guy, ActionForceMoveToLocation(location3, 0, 30.0)));
	DelayCommand(5.0, AssignCommand(oSw_door_sith002, ActionCloseDoor(oSw_door_sith002)));
	DelayCommand(6.0, AssignCommand(oCpu_guy, ActionForceMoveToLocation(location5, 1, 30.0)));
	ActionResumeConversation();
}

