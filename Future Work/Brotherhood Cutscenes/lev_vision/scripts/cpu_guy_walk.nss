void main() {
	ActionPauseConversation();
	ActionWait(5.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	vector struct2 = Vector(293.32, 55.09, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 1, 30.0));
	ActionResumeConversation();
}

