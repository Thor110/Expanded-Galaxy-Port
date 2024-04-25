void main() {
	object oPC = GetFirstPC();
	DelayCommand(0.1, AssignCommand(oPC, SetFacingPoint(GetPosition(GetObjectByTag("mr_invis", 0)))));
}

