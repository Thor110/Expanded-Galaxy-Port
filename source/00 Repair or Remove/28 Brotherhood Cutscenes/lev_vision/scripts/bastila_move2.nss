void main() {
	ActionPauseConversation();
	ActionWait(2.0);
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	object oRepublic_cap = GetObjectByTag("republic_cap", 0);
	object oJedi3 = GetObjectByTag("jedi3", 0);
	vector struct2 = Vector(184.72, 53.65, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(188.03, 57.65, 3.0);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(186.34, 53.13, 3.0);
	location location5 = Location(struct6, 0.0);
	AssignCommand(oRevan_bastila, ActionForceMoveToLocation(location1, 1, 30.0));
	AssignCommand(oRevan_bastila, ActionDoCommand(DestroyObject(oRevan_bastila, 0.0, 0, 0.0)));
	ActionResumeConversation();
}

