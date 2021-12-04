void main() {
	SetGlobalNumber("UNK_RESEARCH", 3);
	DestroyObject(GetItemPossessedBy(GetFirstPC(), "unk_researchpad"), 0.0, 0, 0.0);
}

