void main() {
	object oSta45c_malak = GetObjectByTag("sta45c_malak", 0);
	location location1 = GetLocation(GetObjectByTag("STA_BAST_JUMP", 0));
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object8 = GetPartyMemberByIndex(1);
	object object10 = GetPartyMemberByIndex(2);
	location location3 = GetLocation(GetObjectByTag("STA_SITHJUMP1_WP", 0));
	location location5 = GetLocation(GetObjectByTag("STA_SITHJUMP2_WP", 0));
	location location7 = GetLocation(GetObjectByTag("STA_SITHJUMP3_WP", 0));
	SetLockOrientationInDialog(oNPC, 0);
	SetLockOrientationInDialog(object8, 0);
	SetLockOrientationInDialog(object10, 0);
	SetLockHeadFollowInDialog(oSta_bastila, 0);
	SetGlobalFadeOut(0.1, 1.0, 0.0, 0.0, 0.0);
	object oPC = GetFirstPC();
	AssignCommand(oPC, SetFacing(270.0));
	AssignCommand(oSta_bastila, ClearAllActions());
	DelayCommand(0.5, AssignCommand(oSta_bastila, JumpToLocation(location1)));
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
	DestroyObject(oSta45c_malak, 0.0, 0, 0.0);
}

