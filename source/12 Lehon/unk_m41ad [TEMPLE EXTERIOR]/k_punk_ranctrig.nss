void main() {
	if ((GetGlobalBoolean("UNK_TEMP9") == 0)) {
		SetGlobalBoolean("UNK_TEMP9", 1);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

