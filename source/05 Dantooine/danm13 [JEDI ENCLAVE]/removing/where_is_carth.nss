void main() {
	if (GetGlobalBoolean("DAN_CARTH_AT_JEDI")) {
		AurPostString("Carth at Jedi", 5, 5, 5.0);
	}
	else {
		AurPostString("Carth in party", 5, 5, 5.0);
	}
}

