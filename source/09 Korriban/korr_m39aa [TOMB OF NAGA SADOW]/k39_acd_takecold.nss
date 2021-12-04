void main() {
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "k39_itm_coldgren");
	object object5 = GetItemPossessedBy(oPC, "k39_itm_firegren");
	object object7 = GetItemPossessedBy(oPC, "kor39_itm_datapd");
	DestroyObject(object3, 0.0, 0, 0.0);
	if (GetIsObjectValid(object5)) {
		DestroyObject(object5, 0.0, 0, 0.0);
	}
	if (GetIsObjectValid(object7)) {
		DestroyObject(object7, 0.0, 0, 0.0);
	}
	object oK39_plc_acidpool = GetObjectByTag("k39_plc_acidpool", 0);
	PlayRumblePattern(14);
	AssignCommand(oK39_plc_acidpool, ActionPlayAnimation(201, 1.0, 0.0));
	object oK39_snd_acidice = GetObjectByTag("k39_snd_acidice", 0);
	SoundObjectPlay(oK39_snd_acidice);
}

