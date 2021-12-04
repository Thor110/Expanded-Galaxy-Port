void main() {
	object object1 = CreateItemOnObject("g_a_jedirobe01", OBJECT_SELF, 1);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
	ActionWait(0.90000004);
	ActionUnequipItem(GetItemInSlot(1, OBJECT_SELF), 1);
	ActionEquipItem(object1, 1, 1);
	ActionDoCommand(AssignCommand(GetObjectByTag("dan13_zhar", 0), ActionResumeConversation()));
}

