void main() {
	SetGlobalBoolean("KOR_UTHAR_TALK", 1);
	ActionPauseConversation();
	object oPC = GetFirstPC();
	object oKor35_yuthura = GetObjectByTag("kor35_yuthura", 0);
	object oKor35_lashowe = GetObjectByTag("kor35_lashowe", 0);
	object oKor35_mekel = GetObjectByTag("kor35_mekel", 0);
	object oKor35_shaardan = GetObjectByTag("kor35_shaardan", 0);
	object oKor35_hijata = GetObjectByTag("kor35_hijata", 0);
	object oK35_way_yuthjoin = GetObjectByTag("k35_way_yuthjoin", 0);
	object oK35_way_lashjoin = GetObjectByTag("k35_way_lashjoin", 0);
	object oK35_way_mekejoin = GetObjectByTag("k35_way_mekejoin", 0);
	object oK35_way_shaajoin = GetObjectByTag("k35_way_shaajoin", 0);
	object oK35_way_hijajoin = GetObjectByTag("k35_way_hijajoin", 0);
	AssignCommand(oKor35_yuthura, ActionMoveToObject(oK35_way_yuthjoin, 0, 1.0));
	AssignCommand(oKor35_lashowe, ActionMoveToObject(oK35_way_lashjoin, 0, 1.0));
	AssignCommand(oKor35_mekel, ActionMoveToObject(oK35_way_mekejoin, 0, 1.0));
	AssignCommand(oKor35_shaardan, ActionMoveToObject(oK35_way_shaajoin, 0, 1.0));
	AssignCommand(oKor35_hijata, ActionMoveToObject(oK35_way_hijajoin, 0, 1.0));
	ActionWait(3.0);
	ActionResumeConversation();
}

