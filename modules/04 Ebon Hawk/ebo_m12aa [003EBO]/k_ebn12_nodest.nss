int StartingConditional() {
	int int1 = GetGlobalBoolean("K_CURRENT_PLANET");
	if (((((((int1 != 10) || (int1 != 15)) || (int1 != 20)) || (int1 != 25)) || (int1 != 30)) || (int1 != 35))) {
		return 1;
	}
	else {
		if ((int1 == 10)) {
			if (((((((((GetGlobalBoolean("K_PTAR_SWOOP_POINT_01") || GetGlobalBoolean("K_PTAR_SWOOP_POINT_02")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_03")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_04")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_05")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_06")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_07")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_08")) || GetGlobalBoolean("K_PTAR_SWOOP_POINT_09"))) {
				return 0;
			}
		}
		else {
			if ((int1 == 15)) {
				if (((((GetGlobalBoolean("K_DAN_SWOOP_POINT_01") || GetGlobalBoolean("K_DAN_SWOOP_POINT_02")) || GetGlobalBoolean("K_DAN_SWOOP_POINT_03")) || GetGlobalBoolean("K_DAN_SWOOP_POINT_04")) || GetGlobalBoolean("K_DAN_SWOOP_POINT_05"))) {
					return 0;
				}
			}
			else {
				if ((int1 == 20)) {
				}
				else {
					if ((int1 == 25)) {
						if (((((GetGlobalBoolean("K_MAN_SWOOP_POINT_01") || GetGlobalBoolean("K_MAN_SWOOP_POINT_02")) || GetGlobalBoolean("K_MAN_SWOOP_POINT_03")) || GetGlobalBoolean("K_MAN_SWOOP_POINT_04")) || GetGlobalBoolean("K_MAN_SWOOP_POINT_05"))) {
							return 0;
						}
					}
					else {
						if ((int1 == 30)) {
							if ((((GetGlobalBoolean("K_KOR_SWOOP_POINT_01") || GetGlobalBoolean("K_KOR_SWOOP_POINT_02")) || GetGlobalBoolean("K_KOR_SWOOP_POINT_03")) || GetGlobalBoolean("K_KOR_SWOOP_POINT_04"))) {
								return 0;
							}
						}
						else {
							if ((int1 == 35)) {
							}
						}
					}
				}
			}
		}
	}
	return 1;
}

