void main() {
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oOld_droid = GetObjectByTag("old_droid", 0);
	object oPC = GetFirstPC();
	vector struct2 = Vector(147.39, 124.42, 4.42);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(149.25, 128.81, 4.42);
	location location3 = Location(struct4, 0.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	location location5 = GetLocation(oOld_droid);
	AssignCommand(oSuperdoor, ActionCloseDoor(oSuperdoor));
	AssignCommand(oVision_channa, ActionForceMoveToLocation(location3, 0, 30.0));
	CreateObject(1, "vision_channa2", location1, 0);
}

