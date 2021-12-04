void main() {
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oRevan_fake = GetObjectByTag("revan_fake", 0);
	vector struct2 = Vector(149.42, 189.91, 4.42);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(146.54, 189.51, 4.42);
	location location3 = Location(struct4, 0.0);
	object oSuperdoor = GetObjectByTag("Superdoor", 0);
	AssignCommand(oRevan_fake, ActionForceMoveToLocation(location1, 0, 30.0));
	DelayCommand(1.5, AssignCommand(oVision_malak, ActionForceMoveToLocation(location3, 0, 30.0)));
}

