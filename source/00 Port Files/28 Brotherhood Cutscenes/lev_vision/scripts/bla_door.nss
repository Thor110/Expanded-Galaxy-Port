void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oSw_door_sith002 = GetObjectByTag("sw_door_sith002", 0);
	object oMessenger = GetObjectByTag("messenger", 0);
	float float1 = 249.29;
	float float2 = 55.0;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	DelayCommand(1.0, AssignCommand(oSw_door_sith002, ActionOpenDoor(oSw_door_sith002)));
	AssignCommand(oMessenger, ActionWait(2.0));
	AssignCommand(oMessenger, ActionForceMoveToLocation(location1, int1, 30.0));
	AssignCommand(oMessenger, ActionWait(2.0));
	AssignCommand(oMessenger, ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("sith_guy2", 0)))));
	ActionResumeConversation();
}

