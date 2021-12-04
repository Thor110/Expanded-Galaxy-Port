void main() {
	object oCpu_guy = GetObjectByTag("cpu_guy", 0);
	vector struct2 = Vector(280.36, 53.6, 9.0);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oCpu_guy, ActionForceMoveToLocation(location1, 0, 30.0));
	AssignCommand(oCpu_guy, SetFacingPoint(GetPosition(GetObjectByTag("hk", 0))));
}

