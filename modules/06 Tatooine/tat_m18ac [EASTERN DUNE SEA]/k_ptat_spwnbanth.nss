void main() {
	object oWP_tat18_bantha1_05 = GetWaypointByTag("WP_tat18_bantha1_05");
	object oWP_tat18_bantha2_05 = GetWaypointByTag("WP_tat18_bantha2_05");
	object oWP_tat18_bantha3_05 = GetWaypointByTag("WP_tat18_bantha3_05");
	location location1 = GetLocation(oWP_tat18_bantha1_05);
	location location3 = GetLocation(oWP_tat18_bantha2_05);
	location location5 = GetLocation(oWP_tat18_bantha3_05);
	CreateObject(1, "tat18_bantha1", location1, 0);
	CreateObject(1, "tat18_bantha2", location3, 0);
	CreateObject(1, "tat18_bantha3", location5, 0);
	ActionPauseConversation();
	DelayCommand(1.0, ActionResumeConversation());
}

