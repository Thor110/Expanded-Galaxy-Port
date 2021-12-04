void main() {
	object oInvItem = GetFirstItemInInventory(OBJECT_SELF);
	if ((!GetIsObjectValid(oInvItem))) {
		ClearAllEffects();
	}
}

