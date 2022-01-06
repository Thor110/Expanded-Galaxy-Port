void main() {
	if ((GetGlobalBoolean("UNK_TEMP4") == 0)) {
		SetGlobalBoolean("UNK_TEMP4", 1);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

