void main() {
	object oNearestSithMaster = GetNearestObjectByTag("SithMaster", OBJECT_SELF, 1);
	object oK_PSTA_SITH_WP = GetObjectByTag("K_PSTA_SITH_WP", 0);
	ActionPauseConversation();
	AssignCommand(oNearestSithMaster, ActionMoveToObject(oK_PSTA_SITH_WP, 0, 1.0));
	ActionWait(4.3);
	ActionResumeConversation();
}

