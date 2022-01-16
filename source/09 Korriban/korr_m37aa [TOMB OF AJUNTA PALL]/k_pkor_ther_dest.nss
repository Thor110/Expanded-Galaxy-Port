void main() {
	effect efVisual = EffectVisualEffect(3010, 0);
	object oPC = GetFirstPC();
	effect efDeath = EffectDeath(0, 1);
	object oKor37_therangen = GetObjectByTag("kor37_therangen", 0);
	location location1 = GetLocation(oKor37_therangen);
	object object5 = GetItemPossessedBy(oPC, "kor37_datapad01");
	object object7 = GetItemPossessedBy(oPC, "kor37_datapad02");
	ActionPauseConversation();
	if (GetIsObjectValid(object5)) {
		DestroyObject(object5, 0.0, 0, 0.0);
	}
	if (GetIsObjectValid(object7)) {
		DestroyObject(object7, 0.0, 0, 0.0);
	}
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	ApplyEffectToObject(0, efDeath, oKor37_therangen, 0.0);
	PlayRumblePattern(13);
	ActionWait(2.0);
	ActionResumeConversation();
}

