void main() {
	object oPC = GetFirstPC();
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object object7 = GetItemPossessedBy(oPC, "k37_itm_freedont");
	object object9 = GetItemPossessedBy(oNPC, "k37_itm_freedont");
	object object11 = GetItemPossessedBy(object5, "k37_itm_freedont");
	ActionPauseConversation();
	if (GetIsObjectValid(object7)) {
		ActionTakeItem(object7, oPC);
		SetGlobalBoolean("KOR_FREEDON_SWORD", 1);
	}
	else {
		if (GetIsObjectValid(object9)) {
			ActionTakeItem(object9, oNPC);
			SetGlobalBoolean("KOR_FREEDON_SWORD", 1);
		}
		else {
			if (GetIsObjectValid(object11)) {
				ActionTakeItem(object11, object5);
				SetGlobalBoolean("KOR_FREEDON_SWORD", 1);
			}
		}
	}
	ActionResumeConversation();
}

