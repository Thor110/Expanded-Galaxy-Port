void main() {
	object oKas25_wp_wraid2 = GetWaypointByTag("kas25_wp_wraid2");
	object oKas25_vinespawn = GetWaypointByTag("kas25_vinespawn");
	object oKas25_wraid = GetObjectByTag("kas25_wraid", 0);
	object object7 = OBJECT_SELF;
	AssignCommand(oKas25_wraid, ActionMoveToObject(oKas25_wp_wraid2, 0, 1.0));
	AssignCommand(oKas25_wraid, ActionDoCommand(SetFacingPoint(GetPosition(oKas25_vinespawn))));
	ActionPauseConversation();
	DelayCommand(5.5, ActionResumeConversation());
}

