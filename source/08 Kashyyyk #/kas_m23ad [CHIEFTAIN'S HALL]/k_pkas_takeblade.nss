void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "kas25_swordblade");
	ActionTakeItem(object3, oSpeaker);
}

