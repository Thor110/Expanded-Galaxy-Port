// Prototypes
void sub1();

void sub1() {
	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int3 = GetGlobalNumber("Ebon_Vision");
	int int5 = 0;
	if (((((((nGlobal == 15) || (nGlobal == 20)) || (nGlobal == 25)) || (nGlobal == 30)) || (nGlobal == 35)) && (int3 != 99))) {
		object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
		if (GetIsObjectValid(oNearestBastila)) {
			if (((nGlobal == 15) && (!GetGlobalBoolean("k_vis_dantooine")))) {
				int5 = 1;
				SetGlobalBoolean("k_vis_dantooine", 1);
			}
			else {
				if (((nGlobal == 20) && (!GetGlobalBoolean("k_vis_kashyyyk")))) {
					int5 = 1;
					SetGlobalBoolean("k_vis_kashyyyk", 1);
				}
				else {
					if (((nGlobal == 25) && (!GetGlobalBoolean("k_vis_manaan")))) {
						int5 = 1;
						SetGlobalBoolean("k_vis_manaan", 1);
					}
					else {
						if (((nGlobal == 30) && (!GetGlobalBoolean("k_vis_korriban")))) {
							int5 = 1;
							SetGlobalBoolean("k_vis_korriban", 1);
						}
						else {
							if (((nGlobal == 35) && (!GetGlobalBoolean("k_vis_tatooine")))) {
								int5 = 1;
								SetGlobalBoolean("k_vis_tatooine", 1);
							}
						}
					}
				}
			}
			if ((int5 == 1)) {
				object oPC = GetFirstPC();
				AssignCommand(oNearestBastila, ActionStartConversation(oPC, "ebo_bast_vision", 0, 0, 1, "", "", "", "", "", ""));
			}
		}
	}
}

void main() {
	DelayCommand(0.5, sub1());
	SetGlobalBoolean("K_MESSENGER_AVAILABLE", 0);
}

