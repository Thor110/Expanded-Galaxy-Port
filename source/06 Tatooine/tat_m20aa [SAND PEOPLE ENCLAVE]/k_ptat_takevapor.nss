void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(oSpeaker, "tat17_vaporator");
	ActionTakeItem(object3, oSpeaker);
}

