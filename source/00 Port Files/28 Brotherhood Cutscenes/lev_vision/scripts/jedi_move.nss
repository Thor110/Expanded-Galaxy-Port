void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	object oJedi4 = GetObjectByTag("jedi4", 0);
	object oJedi5 = GetObjectByTag("jedi5", 0);
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	vector struct2 = Vector(186.99, 53.14, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(188.03, 57.88, 3.0);
	location location3 = Location(struct4, 0.0);
	AssignCommand(oJedi5, ActionForceMoveToLocation(location3, 1, 30.0));
	AssignCommand(oJedi5, ActionDoCommand(DestroyObject(oJedi5, 0.0, 0, 0.0)));
	ActionResumeConversation();
}

