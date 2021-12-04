void main() {
	object oPC = GetFirstPC();
	object oTat18_kraytdrag = GetObjectByTag("tat18_kraytdrag", 0);
	object oTat18_wp_kraytmv = GetWaypointByTag("tat18_wp_kraytmv");
	object oArea = GetArea(OBJECT_SELF);
	ActionPauseConversation();
	DelayCommand(3.0, ActionResumeConversation());
	DelayCommand(3.5, ApplyEffectToObject(0, EffectVisualEffect(6002, 0), oPC, 0.0));
	AssignCommand(oTat18_kraytdrag, ActionMoveToObject(oTat18_wp_kraytmv, 0, 1.0));
	AssignCommand(oTat18_kraytdrag, ActionPlayAnimation(116, 1.0, 0.0));
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
}

