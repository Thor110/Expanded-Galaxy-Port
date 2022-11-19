void main() {
	object oMr_invis = GetObjectByTag("mr_invis", 0);
	object oArea = GetArea(OBJECT_SELF);
	object oPC = GetFirstPC();
	object oBodyItem = GetItemInSlot(1, oPC);
	object object9 = CreateItemOnObject("ds_revan_robe", oPC, 1);
	object oHeadItem = GetItemInSlot(0, oPC);
	object object13 = CreateItemOnObject("ds_revan_mask", oPC, 1);
	object oRWeapItem = GetItemInSlot(4, oPC);
	object oLWeapItem = GetItemInSlot(5, oPC);
	AssignCommand(oPC, ActionUnequipItem(oBodyItem, 1));
	AssignCommand(oPC, ActionEquipItem(object9, 1, 0));
	AssignCommand(oPC, ActionUnequipItem(oHeadItem, 0));
	AssignCommand(oPC, ActionEquipItem(object13, 0, 0));
	AssignCommand(oPC, ActionUnequipItem(oRWeapItem, 4));
	AssignCommand(oPC, ActionUnequipItem(oLWeapItem, 5));
	int int1 = 0;
	int int2 = 0;
	MusicBattleStop(oArea);
	MusicBattleChange(oArea, int2);
	MusicBackgroundStop(oArea);
	MusicBackgroundChangeDay(oArea, int1);
	MusicBackgroundChangeNight(oArea, int1);
	MusicBackgroundPlay(oArea);
	int nCurHP = GetCurrentHitPoints(oPC);
	int nMaxHP = GetMaxHitPoints(oPC);
	int int7 = (nCurHP / nMaxHP);
	ApplyEffectToObject(0, EffectHeal(nMaxHP), oPC, 0.0);
	AssignCommand(oPC, ClearAllEffects());
}

