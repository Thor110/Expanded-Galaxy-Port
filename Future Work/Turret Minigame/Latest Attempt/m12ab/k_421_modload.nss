void main() {
	SetGlobalNumber("ebo_num_fighters", 0);
	SetGlobalBoolean("ebo_turret_done", 0);
	SetGlobalBoolean("M12AB_END_SYNC", 0);
	SetGlobalNumber("M12AB_START_SYNC", 0);
	location location1 = Location([0.0,0.0,0.0], 0.0);
	SetGlobalLocation("K_LAST_LOCATION", location1);
	if ((GetGlobalBoolean("K_HK47_SIMULATION") == 1)) {
		EnableVideoEffect(1);
	}
}

