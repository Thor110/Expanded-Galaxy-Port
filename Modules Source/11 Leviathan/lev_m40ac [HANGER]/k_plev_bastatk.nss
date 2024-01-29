void main() {
	object oDarthmalak400 = GetObjectByTag("darthmalak400", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	CreateItemOnObject("bast_temp_saber", oBastila, 1);
	ActionPauseConversation();
	ActionWait(5.0);
	AssignCommand(oDarthmalak400, ClearAllActions());
	CancelCombat(oBastila);
	DelayCommand(1.0, AssignCommand(oDarthmalak400, CutsceneAttack(oBastila, 115, 1, 0)));
	DelayCommand(0.5, AssignCommand(oBastila, ActionEquipItem(GetItemPossessedBy(oBastila, "bast_temp_saber"), 4, 1)));
	DelayCommand(0.8, SetLightsaberPowered(oBastila, 1, 1, 0));
	ActionResumeConversation();
}

