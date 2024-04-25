void main() {
	object oLev40_stddoor = GetObjectByTag("lev40_stddoor", 0);
	object oJedi1 = GetObjectByTag("jedi1", 0);
	object oJedi2 = GetObjectByTag("jedi2", 0);
	object oTrooper3 = GetObjectByTag("trooper3", 0);
	object oJedi4 = GetObjectByTag("jedi4", 0);
	object oJedi5 = GetObjectByTag("jedi5", 0);
	vector struct2 = Vector(184.73, 53.65, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(185.73, 58.65, 3.0);
	location location3 = Location(struct4, 0.0);
	ChangeToStandardFaction(GetObjectByTag("jedi1", 0), 5);
	vector struct6 = Vector(144.49, 77.01, 3.0);
	location location5 = Location(struct6, 0.0);
	vector struct8 = Vector(148.28, 57.15, 3.0);
	location location7 = Location(struct8, 0.0);
	DelayCommand(1.5, AssignCommand(oJedi1, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(2.0, AssignCommand(oJedi1, ActionDoCommand(DestroyObject(oJedi1, 0.0, 0, 0.0))));
}

