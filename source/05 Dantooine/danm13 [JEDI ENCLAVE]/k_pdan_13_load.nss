// Prototypes
void sub1(int intParam1);

void sub1(int intParam1) {
	int int1 = 0;
	while ((int1 <= 8)) {
		if ((GetNPCSelectability(int1) != intParam1)) {
			SetNPCSelectability(int1, intParam1);
		}
		(int1++);
	}
}

void main() {
	if ((GetLoadFromSaveGame() == 0)) {
		int nGlobal = GetGlobalNumber("DAN_JEDI_PLOT");
		if (((nGlobal == 0) && (GetGlobalBoolean("DAN_BASTILA_AT_JEDI") == 0))) {
			if (IsNPCPartyMember(0)) {
				RemovePartyMember(0);
			}
			SpawnAvailableNPC(0, GetLocation(GetObjectByTag("dan13_wp_bast_halk", 0)));
			SetGlobalBoolean("DAN_BASTILA_AT_JEDI", 1);
		}
		if ((((nGlobal <= 1) && (GetGlobalBoolean("DAN_CARTH_AT_JEDI") == 0)) && (GetGlobalBoolean("DAN_CARTH_BACKUP") == 0))) {
			if (IsNPCPartyMember(2)) {
				RemovePartyMember(2);
			}
			sub1(0);
			SpawnAvailableNPC(2, GetLocation(GetObjectByTag("dan13_wp_carth_halk", 0)));
			SetGlobalBoolean("DAN_CARTH_AT_JEDI", 1);
		}
		else {
			if (((nGlobal > 1) && (nGlobal < 7))) {
				AssignCommand(GetObjectByTag("dan13_zhar", 0), JumpToObject(GetObjectByTag("dan13_WP_zhar01", 0), 1));
				if (IsNPCPartyMember(0)) {
					RemovePartyMember(0);
				}
				sub1(1);
				SetNPCSelectability(0, 0);
			}
		}
	}
}

