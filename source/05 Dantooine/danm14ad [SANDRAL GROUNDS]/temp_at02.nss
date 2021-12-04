void main() {
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "-"))) {
		StartNewModule("danm16", "from14db", "", "", "", "", "", "");
	}
}

