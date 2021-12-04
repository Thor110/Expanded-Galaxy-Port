void main() {
	object object1 = GetItemPossessedBy(GetPCSpeaker(), "dan14_diary");
	if (GetIsObjectValid(object1)) {
		ActionPauseConversation();
		ActionTakeItem(object1, GetPCSpeaker());
		GiveGoldToCreature(GetFirstPC(), 100);
		ActionResumeConversation();
	}
}

