void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	vector struct2 = Vector(260.36, 55.04, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 0, 30.0));
	ActionResumeConversation();
}

