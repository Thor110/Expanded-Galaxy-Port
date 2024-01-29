void main() {
	SetGlobalBoolean("G_Paz_JustPlayed", 1);
	if ((GetGlobalNumber("YAV_SUVAM_NUM") >= 10)) {
		PlayPazaak(1, "k_pyav_suvamend", 0, 0, OBJECT_INVALID);
	}
	else {
		PlayPazaak(3, "k_pyav_suvamend", 750, 0, OBJECT_INVALID);
	}
}

