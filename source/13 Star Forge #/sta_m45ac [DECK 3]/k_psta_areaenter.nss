// Prototypes
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1(int intParam1, string stringParam2, location locationParam3);

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void main() {
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	if ((((((GetGlobalNumber("G_FinalChoice") == 2) && (!GetIsObjectValid(oNearestSta_bastila))) && (!GetIsObjectValid(oNearestBastila))) && (!GetGlobalBoolean("STA_BASTSITH"))) && (GetEnteringObject() == oPC))) {
		object oSta_way_bastila = GetObjectByTag("sta_way_bastila", 0);
		location location1 = GetLocation(oSta_way_bastila);
		DelayCommand(0.5, sub1(1, "sta_bastila", location1));
		SetGlobalBoolean("STA_BASTSITH", 1);
		sub2("Bastila created", 10, 10, 5.0);
	}
	else {
		if ((((GetGlobalNumber("G_FinalChoice") == 1) && (!GetGlobalBoolean("STA_BASTSITH"))) && (GetEnteringObject() == oPC))) {
			object oSta_way_sith1 = GetObjectByTag("sta_way_sith1", 0);
			object oSta_way_sith2 = GetObjectByTag("sta_way_sith2", 0);
			object oSta_way_sith3 = GetObjectByTag("sta_way_sith3", 0);
			location location3 = GetLocation(oSta_way_sith1);
			location location5 = GetLocation(oSta_way_sith2);
			location location7 = GetLocation(oSta_way_sith3);
			DelayCommand(0.5, sub1(1, "sta_sith1", location3));
			DelayCommand(0.5, sub1(1, "sta_sith2", location5));
			DelayCommand(0.5, sub1(1, "sta_sith3", location7));
			sub2("Sith created", 10, 10, 5.0);
			SetGlobalBoolean("STA_BASTSITH", 1);
		}
		else {
			if ((GetEnteringObject() == oPC)) {
				sub2("Nothing created", 10, 10, 5.0);
			}
		}
	}
}

