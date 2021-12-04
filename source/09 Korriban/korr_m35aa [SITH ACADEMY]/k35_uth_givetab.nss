void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "kor_itm_sithtabl");
	if (GetIsObjectValid(object3)) {
		ActionPauseConversation();
		ActionTakeItem(object3, oPC);
		SetGlobalBoolean("KOR_TOLD_JORAK", 1);
		ActionResumeConversation();
	}
}

