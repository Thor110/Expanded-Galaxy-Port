void main() {
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oSta_way_malak2 = GetObjectByTag("sta_way_malak2", 0);
	object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
	ActionPauseConversation();
	DelayCommand(2.1, DestroyObject(oSta_45darthMalak, 0.0, 0, 0.0));
	DelayCommand(0.5, AssignCommand(oK45_door_malak, ActionCloseDoor(oK45_door_malak)));
	ActionWait(2.2);
	ActionResumeConversation();
}

