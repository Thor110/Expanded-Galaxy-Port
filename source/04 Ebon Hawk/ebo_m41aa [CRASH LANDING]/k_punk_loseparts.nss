void main() {
	if ((GetGlobalBoolean("UNK_SHIPPARTS") == 1)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "g_shipparts"), 0.0, 0, 0.0);
	}
}

