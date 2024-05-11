void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		SetGlobalBoolean("K_TAR_SWOOP_POINT_03", 1);
		SetGlobalBoolean("K_TAR_SWOOP_POINT_04", 1);
	}
}
