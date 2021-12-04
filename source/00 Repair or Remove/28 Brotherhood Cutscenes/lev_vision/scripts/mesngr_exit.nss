void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oMessenger = GetObjectByTag("messenger", 0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oPC = GetFirstPC();
	float float1 = 251.0021;
	float float2 = 52.048;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("mr_invis", 0)))));
	DelayCommand(2.0, AssignCommand(oMessenger, ActionForceMoveToLocation(location1, int1, 30.0)));
	DelayCommand(2.0, AssignCommand(oMessenger, ActionDoCommand(DestroyObject(oMessenger, 0.0, 0, 0.0))));
	ActionResumeConversation();
}

