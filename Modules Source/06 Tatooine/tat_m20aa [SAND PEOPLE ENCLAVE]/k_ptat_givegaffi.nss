void main() {
	object oSpeaker = GetPCSpeaker();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "tat20_gaffichief");
	SetGlobalBoolean("tat_TuskenDead", 1);
	ActionGiveItem(object3, oSpeaker);
}

