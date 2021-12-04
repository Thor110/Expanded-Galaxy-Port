void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	vector struct2 = Vector(272.25, 58.68, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 1, 30.0));
}

