void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "kas25_wookcrysta");
	ActionGiveItem(object3, oSpeaker);
}

