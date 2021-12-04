void main() {
	object oSta45c_malak = GetObjectByTag("sta45c_malak", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oSta_sith2 = GetObjectByTag("sta_sith2", 0);
	object oSta_sith3 = GetObjectByTag("sta_sith3", 0);
	AssignCommand(oSta_sith1, SetFacingPoint(GetPosition(oSta45c_malak)));
	AssignCommand(oSta_sith2, SetFacingPoint(GetPosition(oSta45c_malak)));
	DelayCommand(0.4, AssignCommand(oSta_sith3, SetFacingPoint(GetPosition(oSta45c_malak))));
}

