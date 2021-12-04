void main() {
	object oK35_itm_sithdata = GetObjectByTag("k35_itm_sithdata", 0);
	ActionPauseConversation();
	ActionTakeItem(oK35_itm_sithdata, GetFirstPC());
	ActionDoCommand(DestroyObject(oK35_itm_sithdata, 0.0, 0, 0.0));
	ActionResumeConversation();
}

