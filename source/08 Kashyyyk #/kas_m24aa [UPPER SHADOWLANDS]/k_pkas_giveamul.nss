void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "kas24_joleeamule");
	ActionGiveItem(object3, oSpeaker);
}

