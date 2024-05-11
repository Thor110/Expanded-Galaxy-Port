void main() {
	object object1 = OBJECT_SELF;
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	ChangeToStandardFaction(OBJECT_SELF, 4);
	AssignCommand(oSta45a_sta45d, ActionCloseDoor(oSta45a_sta45d));
	SetLocked(oSta45a_sta45d, 1);
	object object6 = GetItemPossessedBy(OBJECT_SELF, "g_w_lghtsbr01");
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	ChangeToStandardFaction(oSta45a_Sith01, 1);
	ChangeToStandardFaction(oSta45a_Sith02, 1);
	ChangeToStandardFaction(oSta45a_Sith03, 1);
	ChangeToStandardFaction(oSta45a_Sith04, 1);
	SetMinOneHP(oSta45a_Sith01, 0);
	SetMinOneHP(oSta45a_Sith02, 0);
	SetMinOneHP(oSta45a_Sith03, 0);
	SetMinOneHP(oSta45a_Sith04, 0);
	ActionEquipMostDamagingMelee(OBJECT_INVALID, 0);
	DelayCommand(0.5, ActionAttack(oSta45a_Sith01, 0));
	DelayCommand(0.5, AssignCommand(oSta45a_Sith01, ActionAttack(object1, 0)));
}
