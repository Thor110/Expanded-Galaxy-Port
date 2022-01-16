void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	object oDan14_ahlan = GetObjectByTag("dan14_ahlan", 0);
	object oDan14_nurik = GetObjectByTag("dan14_nurik", 0);
	ChangeToStandardFaction(oDan14_ahlan, 2);
	ChangeToStandardFaction(oDan14_nurik, 4);
	AssignCommand(oDan14_nurik, ActionAttack(oDan14_ahlan, 0));
}

