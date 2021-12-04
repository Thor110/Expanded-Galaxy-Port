void main() {
	if ((GetGlobalBoolean("UNK_TEMP10") == 0)) {
		SetGlobalBoolean("UNK_TEMP10", 1);
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

