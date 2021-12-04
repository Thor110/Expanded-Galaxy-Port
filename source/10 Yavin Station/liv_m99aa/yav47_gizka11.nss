int StartingConditional() {
	int int1;
	object oBodyItem = GetItemInSlot(1, GetPCSpeaker());
	int1 = ((GetHasSpell(15, GetPCSpeaker()) == 1) && (((((GetIsObjectValid(oBodyItem) == 0) || (GetBaseItemType(oBodyItem) == 85)) || (GetBaseItemType(oBodyItem) == 35)) || (GetBaseItemType(oBodyItem) == 36)) || (GetBaseItemType(oBodyItem) == 37)));
	return int1;
}

