void main() {
	SetGlobalNumber("DAN_CASUS_PLOT", 3);
	DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "dan14_diary"), 0.0, 0, 0.0);
	GiveGoldToCreature(GetPCSpeaker(), 300);
}

