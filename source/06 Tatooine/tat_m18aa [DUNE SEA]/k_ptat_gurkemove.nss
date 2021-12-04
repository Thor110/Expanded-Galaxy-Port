void main() {
	object oPC = GetFirstPC();
	object oTat18_12gurke_01 = GetObjectByTag("tat18_12gurke_01", 0);
	object oTat18_12ugzak_01 = GetObjectByTag("tat18_12ugzak_01", 0);
	object oTat18_12narka_01 = GetObjectByTag("tat18_12narka_01", 0);
	object oTat18_gurkemove = GetWaypointByTag("tat18_gurkemove");
	object oTat18_ugzakmove = GetWaypointByTag("tat18_ugzakmove");
	object oTat18_narkamove = GetWaypointByTag("tat18_narkamove");
	AssignCommand(oTat18_12ugzak_01, ActionMoveToObject(oTat18_ugzakmove, 1, 1.0));
	AssignCommand(oTat18_12ugzak_01, ActionDoCommand(SetFacingPoint(GetPosition(oPC))));
	AssignCommand(oTat18_12ugzak_01, ActionWait(0.5));
	AssignCommand(oTat18_12ugzak_01, ActionPlayAnimation(107, 1.0, 0.0));
	AssignCommand(oTat18_12narka_01, ActionMoveToObject(oTat18_narkamove, 1, 1.0));
	AssignCommand(oTat18_12narka_01, ActionDoCommand(SetFacingPoint(GetPosition(oPC))));
	AssignCommand(oTat18_12narka_01, ActionWait(0.5));
	AssignCommand(oTat18_12narka_01, ActionPlayAnimation(109, 1.0, 0.0));
	AssignCommand(oTat18_12gurke_01, ActionMoveToObject(oTat18_gurkemove, 1, 1.0));
	AssignCommand(oTat18_12gurke_01, ActionDoCommand(SetFacingPoint(GetPosition(oPC))));
	AssignCommand(oTat18_12gurke_01, ActionWait(0.5));
	AssignCommand(oTat18_12gurke_01, ActionPlayAnimation(110, 1.0, 0.0));
}

