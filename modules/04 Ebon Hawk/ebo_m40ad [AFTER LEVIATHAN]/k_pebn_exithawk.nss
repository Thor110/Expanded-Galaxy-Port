void main() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	if ((nGlobal == 5)) {
		StartNewModule("", "k_end_ebon_hawk_transition", "", "", "", "", "", "");
	}
	else {
		if ((nGlobal == 10)) {
			StartNewModule("tar_m02aa", "k_tar_ebon_hawk_transition", "", "", "", "", "", "");
		}
		else {
			if ((nGlobal == 15)) {
				StartNewModule("danm13", "k_dan_ebon_hawk_transition", "", "", "", "", "", "");
			}
			else {
				if ((nGlobal == 20)) {
					StartNewModule("kas_m22aa", "k_kas_ebon_hawk_transition", "", "", "", "", "", "");
				}
				else {
					if ((nGlobal == 25)) {
						StartNewModule("manm26ad", "k_man_ebon_hawk_transition", "", "", "", "", "", "");
					}
					else {
						if ((nGlobal == 30)) {
							StartNewModule("korr_m33", "k_kor_ebon_hawk_transition", "", "", "", "", "", "");
						}
						else {
							if ((nGlobal == 35)) {
								StartNewModule("tat_m17aa", "k_tat_ebon_hawk_transition", "", "", "", "", "", "");
							}
							else {
								if ((nGlobal == 40)) {
									StartNewModule("lev_40ac", "k_lev_ebon_hawk_transition", "", "", "", "", "", "");
								}
								else {
									if ((nGlobal == 45)) {
										StartNewModule("unk_m41aa", "k_unk_ebon_hawk_transition", "", "", "", "", "", "");
									}
									else {
										if ((nGlobal == 50)) {
											StartNewModule("", "k_sta_ebon_hawk_transition", "", "", "", "", "", "");
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

