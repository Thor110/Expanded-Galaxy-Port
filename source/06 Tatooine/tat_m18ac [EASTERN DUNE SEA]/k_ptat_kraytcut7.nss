void main() {
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	object oTat18_wp_kraytm2 = GetWaypointByTag("tat18_wp_kraytm2");
	ActionPauseConversation();
	DelayCommand(2.0, ActionResumeConversation());
	AssignCommand(oTat18_kraytdrag, ActionMoveToObject(oTat18_wp_kraytm2, 0, 1.0));
	AssignCommand(oTat18_kraytdrag, ActionPlayAnimation(116, 1.0, 0.0));
}

