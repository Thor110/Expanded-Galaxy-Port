void main() {
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	ApplyEffectToObject(0, EffectDeath(0, 1), GetObjectByTag("sith_bridge", 0), 0.0);
	vector struct2 = Vector(290.58, 55.08, 9.1);
	location location1 = Location(struct2, 0.0);
	AssignCommand(oRevan_bastila, ActionForceMoveToLocation(location1, 0, 30.0));
}

