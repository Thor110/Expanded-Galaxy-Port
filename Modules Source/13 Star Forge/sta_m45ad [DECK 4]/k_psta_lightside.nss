void main() {
	ActionPauseConversation();
	SetGlobalNumber("G_FinalChoice", 2);
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	if ((!GetIsObjectValid(oSta_bastila))) {
		object oSta_way_bastila = GetObjectByTag("sta_way_bastila", 0);
		location location1 = GetLocation(oSta_way_bastila);
		CreateObject(1, "sta_bastila", location1, 0);
	}
	ActionResumeConversation();
}
