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

