void main() {
	object oSith_guy_main = GetObjectByTag("sith_guy_main", 0);
	object oSith_guy = GetObjectByTag("sith_guy", 0);
	object oSith_guy2 = GetObjectByTag("sith_guy2", 0);
	object oSith_guy_side1 = GetObjectByTag("sith_guy_side1", 0);
	object oSith_guy3 = GetObjectByTag("sith_guy3", 0);
	object oSith_guy4 = GetObjectByTag("sith_guy4", 0);
	object oSith_guy_side2 = GetObjectByTag("sith_guy_side2", 0);
	vector struct2 = Vector(142.48, 53.56, 3.0);
	location location1 = Location(struct2, 0.0);
	vector struct4 = Vector(142.47, 56.45, 3.0);
	location location3 = Location(struct4, 0.0);
	DelayCommand(0.0, AssignCommand(oSith_guy_main, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(0.5, AssignCommand(oSith_guy, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(1.0, AssignCommand(oSith_guy2, ActionForceMoveToLocation(location1, 1, 30.0)));
	DelayCommand(1.5, AssignCommand(oSith_guy_side1, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(2.0, AssignCommand(oSith_guy3, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(2.5, AssignCommand(oSith_guy4, ActionForceMoveToLocation(location3, 1, 30.0)));
	DelayCommand(3.0, AssignCommand(oSith_guy_side2, ActionForceMoveToLocation(location3, 1, 30.0)));
}

