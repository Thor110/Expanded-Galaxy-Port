// Prototypes
void sub5();
string sub4();
int sub3();
void sub2(string stringParam1);
void sub1();

void sub5() {
	StartNewModule("STUNT_00", "", "07_1", "", "", "", "", "");
}

string sub4() {
	int nGlobal = GetGlobalNumber("K_FUTURE_PLANET");
	if ((nGlobal == 15)) {
		return "05_2a";
	}
	else {
		if ((nGlobal == 20)) {
			return "05_4a";
		}
		else {
			if ((nGlobal == 25)) {
				return "05_5a";
			}
			else {
				if ((nGlobal == 30)) {
					return "05_7a";
				}
				else {
					if ((nGlobal == 35)) {
						return "05_3a";
					}
					else {
						if ((nGlobal == 40)) {
							return "NULL";
						}
						else {
							if ((nGlobal == 45)) {
								return "05_8a";
							}
						}
					}
				}
			}
		}
	}
	return "NULL";
}

int sub3() {
	int nGlobal = GetGlobalNumber("Ebon_Vision");
	int int3 = GetGlobalNumber("K_FUTURE_PLANET");
	sub2(" Start: ST_VisionPlayed()");
	sub2((" nFuture = " + IntToString(int3)));
	sub2(("k_vis_kashyyyk2  = " + IntToString(GetGlobalBoolean("k_vis_kashyyyk2"))));
	sub2(("k_vis_manaan2  = " + IntToString(GetGlobalBoolean("k_vis_manaan2"))));
	sub2(("k_vis_korriban2  = " + IntToString(GetGlobalBoolean("k_vis_korriban2"))));
	sub2(("k_vis_tatooine2  = " + IntToString(GetGlobalBoolean("k_vis_tatooine2"))));
	if (((int3 == 20) && (GetGlobalBoolean("k_vis_kashyyyk2") == 0))) {
		SetGlobalBoolean("k_vis_kashyyyk2", 1);
		return 0;
	}
	else {
		if (((int3 == 25) && (GetGlobalBoolean("k_vis_manaan2") == 0))) {
			SetGlobalBoolean("k_vis_manaan2", 1);
			return 0;
		}
		else {
			if (((int3 == 30) && (GetGlobalBoolean("k_vis_korriban2") == 0))) {
				SetGlobalBoolean("k_vis_korriban2", 1);
				return 0;
			}
			else {
				if (((int3 == 35) && (GetGlobalBoolean("k_vis_tatooine2") == 0))) {
					SetGlobalBoolean("k_vis_tatooine2", 1);
					return 0;
				}
			}
		}
	}
	sub2("Returning True");
	return 1;
}

void sub2(string stringParam1) {
	PrintString(("RENDER/STUNT Debug ****************** " + stringParam1));
}

void sub1() {
	sub2(" Start: ST_PlayGenericLanding()");
	if ((sub3() == 1)) {
		StartNewModule("ebo_m12aa", "", sub4(), "", "", "", "", "");
		SetGlobalNumber("K_CURRENT_PLANET", GetGlobalNumber("K_FUTURE_PLANET"));
	}
	else {
		sub5();
	}
}

void main() {
	SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(2.0, sub1());
}

