void main() {
	object oVision_channa2 = GetObjectByTag("vision_channa2", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(147.51, 91.66, 4.42);
	location location1 = Location(struct2, 0.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	AssignCommand(oVision_channa2, ActionForceMoveToLocation(location1, 0, 30.0));
}

