void main() {
	object oLev40_stddoor = GetObjectByTag("lev40_stddoor", 0);
	object oJedi1 = GetObjectByTag("jedi1", 0);
	object oJedi2 = GetObjectByTag("jedi2", 0);
	object oTrooper3 = GetObjectByTag("trooper3", 0);
	object oJedi4 = GetObjectByTag("jedi4", 0);
	object oJedi5 = GetObjectByTag("jedi5", 0);
	object oRevan_bastila = GetObjectByTag("revan_bastila", 0);
	vector struct2 = Vector(184.73, 53.65, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(185.73, 58.65, 3.0);
	location location3 = Location(struct4, 0.0);
	vector struct6 = Vector(156.15, 55.01, 3.0);
	location location5 = Location(struct6, 0.0);
	vector struct8 = Vector(170.8, 54.94, 3.0);
	location location7 = Location(struct8, 0.0);
	vector struct10 = Vector(158.15, 55.01, 3.0);
	location location9 = Location(struct10, 0.0);
	ChangeToStandardFaction(GetObjectByTag("jedi2", 0), 5);
	AssignCommand(oJedi4, ActionForceMoveToLocation(location1, 1, 30.0));
	AssignCommand(oJedi4, ActionDoCommand(DestroyObject(oJedi4, 0.0, 0, 0.0)));
	DelayCommand(1.5, AssignCommand(oJedi2, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(2.0, AssignCommand(oJedi2, ActionDoCommand(DestroyObject(oJedi2, 0.0, 0, 0.0))));
}

