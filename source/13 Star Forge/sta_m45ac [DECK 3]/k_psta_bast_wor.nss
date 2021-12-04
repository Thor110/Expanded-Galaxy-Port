// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

void main() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_invis_bast_conv = GetObjectByTag("sta_invis_bast_conv", 0);
	effect efVisual = EffectVisualEffect(2047, 0);
	object oK45_door_bast2 = GetObjectByTag("k45_door_bast2", 0);
	object oPC = GetFirstPC();
	object oNearestSta_bastila = GetNearestObjectByTag("sta_bastila", OBJECT_SELF, 1);
	object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
	object oAreaObject = GetFirstObjectInArea(GetArea(OBJECT_SELF), 1);
	while (GetIsObjectValid(oAreaObject)) {
		if (((GetStandardFaction(oAreaObject) == 1) || (GetStandardFaction(oAreaObject) == 3))) {
			DestroyObject(oAreaObject, 0.0, 1, 0.0);
		}
		oAreaObject = GetNextObjectInArea(GetArea(OBJECT_SELF), 1);
	}
	if (GetIsObjectValid(oNearestSta_bastila)) {
		SetLocked(oK45_door_bast2, 1);
		NoClicksFor(2.4);
		DelayCommand(2.2, AssignCommand(oSta_invis_bast_conv, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0)));
		AssignCommand(oSta_bastila, PlayAnimation(4, 1.0, 4.0));
		DelayCommand(2.5, ApplyEffectToObject(0, EffectVisualEffect(1015, 0), oSta_bastila, 0.0));
	}
}

