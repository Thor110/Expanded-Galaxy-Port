void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, SetFacingPoint(GetPosition(oSta_bastila)));
}

