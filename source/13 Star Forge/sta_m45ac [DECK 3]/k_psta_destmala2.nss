void main() {
	object oSta45c_malak = GetObjectByTag("sta45c_malak", 0);
	location location1 = GetLocation(GetObjectByTag("STA_BAST_JUMP", 0));
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oSta_sith2 = GetObjectByTag("sta_sith2", 0);
	object oSta_sith3 = GetObjectByTag("sta_sith3", 0);
	location location3 = GetLocation(GetObjectByTag("STA_SITHJUMP1_WP", 0));
	location location5 = GetLocation(GetObjectByTag("STA_SITHJUMP2_WP", 0));
	location location7 = GetLocation(GetObjectByTag("STA_SITHJUMP3_WP", 0));
	SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	AssignCommand(oSta_sith1, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSta_sith1, JumpToLocation(location3)));
	AssignCommand(oSta_sith2, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSta_sith2, JumpToLocation(location5)));
	AssignCommand(oSta_sith3, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSta_sith3, JumpToLocation(location7)));
	AssignCommand(oPC, SetFacing(270.0));
	AssignCommand(oSta_bastila, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSta_bastila, JumpToLocation(location1)));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DestroyObject(oSta45c_malak, 0.0, 0, 0.0);
}

