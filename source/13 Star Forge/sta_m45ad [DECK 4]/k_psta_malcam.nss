void main() {
	object oNearestSta_malak_drain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	string sName = GetName(oNearestSta_malak_drain);
	int int1 = StringToInt(sName);
	int int3;
	int int4;
	object oSta_plc_captive8;
	if ((int1 == 1)) {
		int3 = 13;
		int4 = 14;
		oSta_plc_captive8 = GetObjectByTag("sta_plc_captive1", 0);
	}
	else {
		if ((int1 == 2)) {
			int3 = 23;
			int4 = 24;
			oSta_plc_captive8 = GetObjectByTag("sta_plc_captive2", 0);
		}
		else {
			if ((int1 == 3)) {
				int3 = 33;
				int4 = 34;
				oSta_plc_captive8 = GetObjectByTag("sta_plc_captive3", 0);
			}
			else {
				if ((int1 == 4)) {
					int3 = 43;
					int4 = 44;
					oSta_plc_captive8 = GetObjectByTag("sta_plc_captive4", 0);
				}
				else {
					if ((int1 == 5)) {
						int3 = 53;
						int4 = 54;
						oSta_plc_captive8 = GetObjectByTag("sta_plc_captive5", 0);
					}
					else {
						if ((int1 == 6)) {
							int3 = 63;
							int4 = 64;
							oSta_plc_captive8 = GetObjectByTag("sta_plc_captive6", 0);
						}
						else {
							if ((int1 == 7)) {
								int3 = 73;
								int4 = 74;
								oSta_plc_captive8 = GetObjectByTag("sta_plc_captive7", 0);
							}
							else {
								int3 = 83;
								int4 = 84;
								oSta_plc_captive8 = GetObjectByTag("sta_plc_captive8", 0);
							}
						}
					}
				}
			}
		}
	}
	SetDialogPlaceableCamera(int4);
}

