void main() {
	int int1 = GetUserDefinedEventNumber();
	if ((int1 == 1001)) {
	}
	else {
		if ((int1 == 1002)) {
			object oPC = GetFirstPC();
			object object3 = GetItemPossessedBy(oPC, "k35_itm_sithpass");
			if (((oPC == GetLastPerceived()) && (!GetIsObjectValid(object3)))) {
				ChangeToStandardFaction(OBJECT_SELF, 1);
			}
		}
		else {
			if ((int1 == 1003)) {
			}
			else {
				if ((int1 == 1004)) {
				}
				else {
					if ((int1 == 1005)) {
					}
					else {
						if ((int1 == 1006)) {
						}
						else {
							if ((int1 == 1007)) {
							}
							else {
								if ((int1 == 1008)) {
								}
							}
						}
					}
				}
			}
		}
	}
}

