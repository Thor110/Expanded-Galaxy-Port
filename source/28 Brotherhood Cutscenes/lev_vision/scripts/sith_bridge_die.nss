void main() {
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	vector struct2 = Vector(290.58, 55.08, 9.1);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oRevan_bastila, ActionForceMoveToLocation(location1, 1, 30.0));
}

