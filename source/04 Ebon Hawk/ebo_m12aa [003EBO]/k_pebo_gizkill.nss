void main() {
	object object1;
	object object2 = OBJECT_SELF;
	AssignCommand(GetPCSpeaker(), ActionPlayAnimation(10, 1.0, 1.0));
	CreateObject(1, "g_gizka016", GetLocation(object2), 0);
	ActionPauseConversation();
	ActionWait(1.0);
	ActionResumeConversation();
}

