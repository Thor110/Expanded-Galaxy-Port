void main() {
	object oMan15_door02 = GetObjectByTag("man15_door02", 0);
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	object oOld_droid = GetObjectByTag("old_droid", 0);
	AssignCommand(oMan15_door02, SetLocked(oMan15_door02, 0));
	DelayCommand(0.1, AssignCommand(oMan15_door02, ActionOpenDoor(oMan15_door02)));
	DelayCommand(0.1, AssignCommand(oVision_malak, SetFacingPoint(GetPosition(GetObjectByTag("vision_channa", 0)))));
	DelayCommand(0.1, AssignCommand(oOld_droid, SetFacingPoint(GetPosition(GetObjectByTag("vision_channa", 0)))));
	AssignCommand(oOld_droid, SetLockOrientationInDialog(oOld_droid, 1));
	object oArea = GetArea(OBJECT_SELF);
	object oPC = GetFirstPC();
	object oBodyItem = GetItemInSlot(1, oPC);
	object object15 = CreateItemOnObject("ds_revan_robe2", oPC, 1);
	object oHeadItem = GetItemInSlot(0, oPC);
	object object19 = CreateItemOnObject("ds_revan_mask2", oPC, 1);
	object oRWeapItem = GetItemInSlot(4, oPC);
	object oLWeapItem = GetItemInSlot(5, oPC);
	AssignCommand(oPC, ActionUnequipItem(oBodyItem, 1));
	AssignCommand(oPC, ActionEquipItem(object15, 1, 0));
	AssignCommand(oPC, ActionUnequipItem(oHeadItem, 0));
	AssignCommand(oPC, ActionEquipItem(object19, 0, 0));
	AssignCommand(oPC, ActionUnequipItem(oRWeapItem, 4));
	AssignCommand(oPC, ActionUnequipItem(oLWeapItem, 5));
	int nCurHP = GetCurrentHitPoints(oPC);
	int nMaxHP = GetMaxHitPoints(oPC);
	int int5 = (nCurHP / nMaxHP);
	ApplyEffectToObject(0, EffectHeal(nMaxHP), oPC, 0.0);
	AssignCommand(oPC, ClearAllEffects());
}

