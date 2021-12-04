void main() {
	object oEbo_spice = GetObjectByTag("ebo_spice", 0);
	ActionTakeItem(GetItemPossessedBy(GetPCSpeaker(), "ebo_spice"), GetPCSpeaker());
}

