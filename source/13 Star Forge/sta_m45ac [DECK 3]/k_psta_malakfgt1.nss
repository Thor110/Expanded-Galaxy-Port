void main() {
	object oPC = GetFirstPC();
	location location1 = GetLocation(oPC);
	object oK45_plc_wardroid = GetObjectByTag("k45_plc_wardroid", 0);
	object oK45_plc_assdroid = GetObjectByTag("k45_plc_assdroid", 0);
	object oK45_plc_mk2droid = GetObjectByTag("k45_plc_mk2droid", 0);
	object oK45_plc_mk4droid = GetObjectByTag("k45_plc_mk4droid", 0);
	object oK45_plc_prbdroid = GetObjectByTag("k45_plc_prbdroid", 0);
	object oK45_plc_excharge = GetObjectByTag("k45_plc_excharge", 0);
	unknown unknown1 = EventUserDefined(145);
	ActionPauseConversation();
	SignalEvent(oK45_plc_wardroid, unknown1);
	SignalEvent(oK45_plc_assdroid, unknown1);
	SignalEvent(oK45_plc_mk2droid, unknown1);
	SignalEvent(oK45_plc_mk4droid, unknown1);
	SignalEvent(oK45_plc_prbdroid, unknown1);
	SignalEvent(oK45_plc_excharge, unknown1);
	SetGlobalBoolean("STA_MALAK_START", 1);
	object oSta_45darthMalak = GetObjectByTag("sta_45darthMalak", 0);
	DestroyObject(oSta_45darthMalak, 0.0, 0, 0.0);
	ActionWait(5.0);
	ActionResumeConversation();
}

