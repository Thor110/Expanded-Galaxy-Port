void main() {
	AddAvailableNPCByTemplate(1, "p_canderous");
	DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
	StartNewModule("tar_m08aa", "", "", "", "", "", "", "");
}
