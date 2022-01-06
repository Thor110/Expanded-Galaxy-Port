void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "tat18_dragonprl");
	object oTat20_lorespawn = GetWaypointByTag("tat20_lorespawn");
	location location1 = GetLocation(oTat20_lorespawn);
	ActionTakeItem(object3, oSpeaker);
	SetGlobalNumber("tat_SandWarrior", 2);
	CreateObject(1, "tat20_xstory_01", location1, 0);
	CreateObject(32, "tat20_lorenote", location1, 0);
}

