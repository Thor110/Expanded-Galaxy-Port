void main() {
	if (((GetGlobalBoolean("STA_MALAK_START") == 1) && (GetGlobalBoolean("STA_GEN_EXPLOSIVE") == 0))) {
	}
	if (((GetGlobalBoolean("STA_MALAK_START") == 1) && (GetGlobalBoolean("STA_GEN_EXPLOSIVE") == 1))) {
	}
	if ((GetGlobalBoolean("STA_GEN_DESTROYED") == 1)) {
		DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	}
}

