void main() {
	object oKor35_yuthura = GetObjectByTag("kor35_yuthura", 0);
	object oKor35_lashowe = GetObjectByTag("kor35_lashowe", 0);
	object oKor35_mekel = GetObjectByTag("kor35_mekel", 0);
	object oKor35_shaardan = GetObjectByTag("kor35_shaardan", 0);
	object oKor35_hijata = GetObjectByTag("kor35_hijata", 0);
	object oK35_way_yuthleav = GetObjectByTag("k35_way_yuthleav", 0);
	object oK35_way_lashleav = GetObjectByTag("k35_way_lashleav", 0);
	object oK35_way_mekleave = GetObjectByTag("k35_way_mekleave", 0);
	object oK35_way_shaaleav = GetObjectByTag("k35_way_shaaleav", 0);
	object oK35_way_hijleave = GetObjectByTag("k35_way_hijleave", 0);
	ActionPauseConversation();
	AssignCommand(oKor35_yuthura, ActionMoveToObject(oK35_way_yuthleav, 0, 1.0));
	AssignCommand(oKor35_lashowe, ActionMoveToObject(oK35_way_lashleav, 0, 1.0));
	AssignCommand(oKor35_mekel, ActionMoveToObject(oK35_way_mekleave, 0, 1.0));
	AssignCommand(oKor35_shaardan, ActionMoveToObject(oK35_way_shaaleav, 0, 1.0));
	AssignCommand(oKor35_hijata, ActionMoveToObject(oK35_way_hijleave, 0, 1.0));
	ActionWait(3.0);
	SetLockOrientationInDialog(OBJECT_SELF, 0);
	SetLockHeadFollowInDialog(OBJECT_SELF, 0);
	ActionResumeConversation();
}

