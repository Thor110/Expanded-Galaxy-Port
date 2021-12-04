void main() {
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	object oTat18_wp_kraytmv = GetWaypointByTag("tat18_wp_kraytmv");
	object oArea = GetArea(OBJECT_SELF);
	object oTat18_bantha1 = GetObjectByTag("tat18_bantha1", 0);
	object oTat18_bantha2 = GetObjectByTag("tat18_bantha2", 0);
	object oTat18_bantha3 = GetObjectByTag("tat18_bantha3", 0);
	object oTat18_wp_bantha4 = GetWaypointByTag("tat18_wp_bantha4");
	object oTat18_wp_bantha5 = GetWaypointByTag("tat18_wp_bantha5");
	object oTat18_wp_bantha6 = GetWaypointByTag("tat18_wp_bantha6");
	AssignCommand(oTat18_bantha1, ClearAllActions());
	AssignCommand(oTat18_bantha2, ClearAllActions());
	AssignCommand(oTat18_bantha3, ClearAllActions());
	AssignCommand(oTat18_bantha1, JumpToLocation(GetLocation(oTat18_wp_bantha4)));
	AssignCommand(oTat18_bantha2, JumpToLocation(GetLocation(oTat18_wp_bantha5)));
	AssignCommand(oTat18_bantha3, JumpToLocation(GetLocation(oTat18_wp_bantha6)));
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	AssignCommand(oTat18_kraytdrag, ActionMoveToObject(oTat18_wp_kraytmv, 0, 1.0));
	AssignCommand(oTat18_kraytdrag, ActionPlayAnimation(116, 1.0, 0.0));
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
}

