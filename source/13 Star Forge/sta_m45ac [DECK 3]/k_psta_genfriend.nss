void main() {
	SetGlobalBoolean("STA_GEN_FRIEND", 1);
	object oK45_gen_prbdroid = GetObjectByTag("k45_gen_prbdroid", 0);
	object oK45_gen_assdroid = GetObjectByTag("k45_gen_assdroid", 0);
	object oK45_gen_mk2droid = GetObjectByTag("k45_gen_mk2droid", 0);
	object oK45_gen_mk4droid = GetObjectByTag("k45_gen_mk4droid", 0);
	object oK45_gen_wardroid = GetObjectByTag("k45_gen_wardroid", 0);
	ChangeToStandardFaction(oK45_gen_prbdroid, 2);
	ChangeToStandardFaction(oK45_gen_assdroid, 2);
	ChangeToStandardFaction(oK45_gen_mk2droid, 2);
	ChangeToStandardFaction(oK45_gen_mk4droid, 2);
	ChangeToStandardFaction(oK45_gen_wardroid, 2);
}

