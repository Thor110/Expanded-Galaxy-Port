void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(OBJECT_SELF, "G_w_ThermlDet01");
	ActionGiveItem(object3, oPC);
}

