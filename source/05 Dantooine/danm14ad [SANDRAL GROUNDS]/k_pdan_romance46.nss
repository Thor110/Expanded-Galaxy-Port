void main() {
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
	object oDan14_ahlan = GetObjectByTag("dan14_ahlan", 0);
	object oDan14_rahasia = GetObjectByTag("dan14_rahasia", 0);
	ChangeToStandardFaction(oDan14_ahlan, 2);
	ChangeToStandardFaction(oDan14_rahasia, 4);
	AssignCommand(oDan14_ahlan, CutsceneAttack(oDan14_rahasia, 217, 3, 100));
}

