void main() {
	object oKas23_meetking2 = GetWaypointByTag("kas23_meetking2");
	object oKas23_meetking3 = GetWaypointByTag("kas23_meetking3");
	object oKas23_meetking4 = GetWaypointByTag("kas23_meetking4");
	object oKas23_meetking5 = GetWaypointByTag("kas23_meetking5");
	object oKas23_meetking6 = GetWaypointByTag("kas23_meetking6");
	location location1 = GetLocation(oKas23_meetking5);
	ActionPauseConversation();
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	object oKas23_wookguard = CreateObject(1, "kas23_wookguard", location1, 0);
	SetGlobalBoolean("tat_ZaalbarTaken", 1);
	SetPartyLeader(0xFFFFFFFF);
	object oNPC = GetPartyMemberByIndex(0);
	object object15 = GetPartyMemberByIndex(1);
	object object17 = GetPartyMemberByIndex(2);
	MusicBackgroundStop(GetArea(OBJECT_SELF));
	MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 20);
	MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 20);
	MusicBackgroundPlay(GetArea(OBJECT_SELF));
	AssignCommand(oNPC, ClearAllActions());
	AssignCommand(object15, ClearAllActions());
	AssignCommand(object17, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oNPC, ActionMoveToObject(oKas23_meetking2, 0, 1.0)));
	DelayCommand(1.0, AssignCommand(object15, ActionMoveToObject(oKas23_meetking3, 0, 1.0)));
	DelayCommand(1.0, AssignCommand(object17, ActionMoveToObject(oKas23_meetking4, 0, 1.0)));
	DelayCommand(1.0, AssignCommand(oKas23_wookguard, ActionMoveToObject(oKas23_meetking6, 0, 1.0)));
	DelayCommand(5.0, ActionResumeConversation());
}

