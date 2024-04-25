void main() {
	int nGlobal = GetGlobalNumber("K_TURRET_SKYBOX");
	if ((nGlobal == 5)) {
		DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 1));
	}
	else {
		if ((nGlobal == 10)) {
			DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 2));
			DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
		}
		else {
			if ((nGlobal == 15)) {
				DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 3));
				DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
			}
			else {
				DelayCommand(0.2, PlayRoomAnimation("m12ab_01a", 4));
				if ((GetGlobalBoolean("K_HK47_SIMULATION") != 1)) {
					DelayCommand(1.5, BarkString(OBJECT_INVALID, 37107));
				}
			}
		}
	}
}

