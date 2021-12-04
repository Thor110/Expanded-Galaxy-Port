void main() {
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	object oRepublic_cap = GetObjectByTag("republic_cap", 0);
	object oJedi3 = GetObjectByTag("jedi3", 0);
	vector struct2 = Vector(170.8, 54.94, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(188.03, 57.65, 3.0);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(186.34, 53.13, 3.0);
	location location5 = Location(struct6, 0.0);
	AssignCommand(oRevan_bastila, ActionForceMoveToLocation(location1, 1, 30.0));
	DelayCommand(0.6, AssignCommand(oRepublic_cap, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(2.6, AssignCommand(oJedi3, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(0.6, AssignCommand(oRepublic_cap, ActionDoCommand(DestroyObject(oRepublic_cap, 0.0, 0, 0.0))));
	DelayCommand(2.6, AssignCommand(oJedi3, ActionDoCommand(DestroyObject(oJedi3, 0.0, 0, 0.0))));
}

