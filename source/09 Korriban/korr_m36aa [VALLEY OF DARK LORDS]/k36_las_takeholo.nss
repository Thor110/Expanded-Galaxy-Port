void main() {
	ActionPauseConversation();
	object oKor36_plc_queen = GetObjectByTag("kor36_plc_queen", 0);
	ActionMoveToObject(oKor36_plc_queen, 0, 1.0);
	CreateItemOnObject("k36_itm_holocron", OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	ActionMoveToObject(oPC, 0, 1.0);
	ActionResumeConversation();
}

