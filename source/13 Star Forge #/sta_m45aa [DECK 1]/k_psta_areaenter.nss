void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		if (GetGlobalBoolean("STA_MALAK_DEAD")) {
			object oSta_Jedi001 = GetObjectByTag("sta_Jedi001", 0);
			object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
			object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
			object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
			object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
			object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
			object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
			object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
			if (GetIsObjectValid(oSta_Jedi001)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi001, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi002)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi002, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi003)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi003, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta_Jedi004)) {
				DelayCommand(1.0, DestroyObject(oSta_Jedi004, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith01)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith01, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith02)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith02, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith03)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith03, 0.0, 0, 0.0));
			}
			if (GetIsObjectValid(oSta45a_Sith04)) {
				DelayCommand(1.0, DestroyObject(oSta45a_Sith04, 0.0, 0, 0.0));
			}
			object oSta_door_end45a = GetObjectByTag("sta_door_end45a", 0);
			AssignCommand(oSta_door_end45a, ActionCloseDoor(oSta_door_end45a));
			SetLocked(oSta_door_end45a, 1);
			object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
			SetLocked(oSta45a_sta45d, 0);
		}
	}
}

