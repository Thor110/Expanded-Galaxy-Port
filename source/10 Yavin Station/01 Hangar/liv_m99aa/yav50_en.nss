void main() {
	if (((GetIsObjectValid(GetObjectByTag("yav47_gizka", 0)) == 0) && (GetGlobalNumber("YAV_GIZKA") < 3))) {
		int nRandom = d6(1);
		if (((nRandom == 1) || (nRandom == 2))) {
			SetGlobalNumber("YAV_GIZKA", 1);
		}
		else {
			if (((nRandom == 3) || (nRandom == 4))) {
				SetGlobalNumber("YAV_GIZKA", 2);
			}
			else {
				if ((nRandom == 6)) {
					SetGlobalNumber("YAV_GIZKA", 3);
					CreateObject(1, "yav47_gizka", GetLocation(GetObjectByTag("gizspawn", 0)), 0);
				}
			}
		}
	}
	if (((GetGlobalNumber("YAV_SUVAM") == 2) && (GetGlobalNumber("K_STAR_MAP") >= 30))) {
		SetGlobalBoolean("YAV_SUVAMH", 1);
		AssignCommand(GetObjectByTag("yav47_suvam", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("suvam101", 0))));
		if ((GetIsObjectValid(GetObjectByTag("yav47_trand01", 0)) == 0)) {
			CreateObject(1, "yav47_trand01", GetLocation(GetObjectByTag("trand101", 0)), 0);
		}
		if ((GetIsObjectValid(GetObjectByTag("yav47_trand02", 0)) == 0)) {
			CreateObject(1, "yav47_trand02", GetLocation(GetObjectByTag("trand102", 0)), 0);
		}
	}
	else {
		if (((GetGlobalNumber("YAV_SUVAM") == 3) && (GetGlobalNumber("K_STAR_MAP") >= 50))) {
			SetGlobalBoolean("YAV_SUVAMH", 1);
			AssignCommand(GetObjectByTag("yav47_suvam", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("yav47_suvam", 0), ActionJumpToLocation(GetLocation(GetObjectByTag("suvam201", 0))));
			SetGlobalNumber("YAV_GIZKA", 0);
			DelayCommand(0.5, DestroyObject(GetObjectByTag("yav47_gizka", 0), 0.0, 1, 0.0));
		}
	}
	SetGlobalBoolean("YAV_SUVAMA", 1);
}

