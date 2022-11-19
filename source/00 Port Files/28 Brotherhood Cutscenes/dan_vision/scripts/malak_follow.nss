void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(145.74, 122.03, 4.42);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oVision_malak, ActionForceMoveToLocation(location1, 0, 30.0));
	ActionDoCommand(SetCommandable(0, oVision_malak));
}

