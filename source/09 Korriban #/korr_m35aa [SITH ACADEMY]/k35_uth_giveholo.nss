void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k36_itm_holocron");
	if (GetIsObjectValid(object3)) {
		ActionPauseConversation();
		ActionTakeItem(object3, oPC);
		ActionResumeConversation();
	}
}

