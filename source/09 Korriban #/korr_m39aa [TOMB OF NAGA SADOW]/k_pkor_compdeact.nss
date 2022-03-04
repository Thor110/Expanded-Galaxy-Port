void main() {
	object oK39_plc_pillcomp = GetObjectByTag("k39_plc_pillcomp", 0);
	object oPC = GetFirstPC();
	if ((GetExitingObject() == oPC)) {
		AssignCommand(oK39_plc_pillcomp, ActionPlayAnimation(201, 1.0, (-1.0)));
	}
}

