void main() {
	int int1 = (-1);
	object oLWeapItem = GetItemInSlot(5, OBJECT_SELF);
	object oRWeapItem = GetItemInSlot(4, OBJECT_SELF);
	if (GetIsObjectValid(oRWeapItem)) {
		int nItemType = GetBaseItemType(oRWeapItem);
		if (GetIsObjectValid(oLWeapItem)) {
			if (((nItemType == 8) || (nItemType == 10))) {
				int1 = 195;
			}
		}
		else {
			if (((nItemType == 10) || (nItemType == 8))) {
				int1 = 113;
			}
			else {
				if ((nItemType == 9)) {
					int1 = 154;
				}
			}
		}
		if ((int1 >= 0)) {
			CutsceneAttack(GetObjectByTag("man28_wimp", 0), int1, 3, 0);
		}
	}
}

