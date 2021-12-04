void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	object oDan14ad_drd01 = GetObjectByTag("dan14ad_drd01", 0);
	object oDan14_nurik = GetObjectByTag("dan14_nurik", 0);
	ChangeToStandardFaction(oDan14ad_drd01, 2);
	ChangeToStandardFaction(oDan14_nurik, 4);
	AssignCommand(oDan14ad_drd01, ActionAttack(oDan14_nurik, 0));
}

