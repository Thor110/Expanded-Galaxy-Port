void main() {
	object oPC = GetFirstPC();
	object oTat17_justalk = GetWaypointByTag("tat17_justalk");
	AssignCommand(oPC, JumpToObject(oTat17_justalk, 1));
	DelayCommand(0.2, SetFacingPoint(GetPosition(oPC)));
}

