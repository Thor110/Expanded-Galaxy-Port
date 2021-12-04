void main() {
	if ((GetGlobalBoolean("EBO_LURZE_CODE") == 0)) {
		BarkString(OBJECT_INVALID, 37668);
	}
	if ((GetGlobalBoolean("EBO_LURZE_CODE") == 1)) {
		ActionUnlockObject(OBJECT_SELF);
	}
}

