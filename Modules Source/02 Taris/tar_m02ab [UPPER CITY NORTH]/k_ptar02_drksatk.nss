void main() {
	object oPC = GetFirstPC();
	object oDrunk021 = GetObjectByTag("drunk021", 0);
	object oDrunk022 = GetObjectByTag("drunk022", 0);
	object oDrunk023 = GetObjectByTag("drunk023", 0);
	if ((!ShipBuild())) {
		AurPostString("DRUNKS ATTACK!", 5, 5, 5.0);
	}
	ChangeToStandardFaction(oDrunk021, 1);
	ChangeToStandardFaction(oDrunk022, 1);
	ChangeToStandardFaction(oDrunk023, 1);
	AssignCommand(oDrunk021, ActionAttack(oPC, 0));
	AssignCommand(oDrunk022, ActionAttack(oPC, 0));
	AssignCommand(oDrunk023, ActionAttack(oPC, 0));
}
