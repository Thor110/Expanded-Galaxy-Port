void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	vector struct2 = Vector(278.87, 55.03, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 1, 30.0));
	ActionResumeConversation();
}

