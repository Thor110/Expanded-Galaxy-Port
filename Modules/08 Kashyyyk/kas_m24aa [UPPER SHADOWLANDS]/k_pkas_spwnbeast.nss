void main() {
	object oKas24_poffice_01 = GetObjectByTag("kas24_poffice_01", 0);
	object oNPC = GetPartyMemberByIndex(0);
	object object5 = GetPartyMemberByIndex(1);
	object object7 = GetPartyMemberByIndex(2);
	object oKas24_wraidspwn = GetWaypointByTag("kas24_wraidspwn");
	object oKas24_partymove3 = GetWaypointByTag("kas24_partymove3");
	location location1 = GetLocation(oKas24_wraidspwn);
	object oKas24_wraid = CreateObject(1, "kas24_wraid", location1, 0);
	AssignCommand(oKas24_poffice_01, ActionDoCommand(SetFacingPoint(GetPosition(oKas24_wraid))));
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object5, ClearAllActions());
	AssignCommand(object7, ClearAllActions());
	AssignCommand(oNPC, ActionJumpToObject(oKas24_partymove3, 1));
	AssignCommand(object5, ActionJumpToObject(oKas24_partymove3, 1));
	AssignCommand(object7, ActionJumpToObject(oKas24_partymove3, 1));
}

