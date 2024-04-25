void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oMessenger = GetObjectByTag("messenger", 0);
	float float1 = 249.91;
	float float2 = 54.22;
	float float3 = 9.0;
	int int1 = 0;
	vector struct2 = Vector(float1, float2, float3);
	location location1 = Location(struct2, 0.0);
	DelayCommand(1.0, AssignCommand(oMessenger, SetFacingPoint(GetPosition(GetObjectByTag("sith_guy2", 0)))));
	DelayCommand(1.0, AssignCommand(oSith_guy, SetFacingPoint(GetPosition(GetObjectByTag("messenger", 0)))));
	DelayCommand(1.0, AssignCommand(oSith_guy2, SetFacingPoint(GetPosition(GetObjectByTag("messenger", 0)))));
	DelayCommand(1.8, AssignCommand(oSith_guy3, SetFacingPoint(GetPosition(GetObjectByTag("messenger", 0)))));
	DelayCommand(2.0, AssignCommand(oSith_guy2, ActionForceMoveToLocation(location1, int1, 30.0)));
	ActionResumeConversation();
}

