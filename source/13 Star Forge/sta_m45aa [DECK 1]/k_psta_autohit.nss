void main() {
	object oSta45a_sithvic1 = GetObjectByTag("sta45a_sithvic1", 0);
	object oSta45a_sithvic2 = GetObjectByTag("sta45a_sithvic2", 0);
	object oSta45a_sithvic3 = GetObjectByTag("sta45a_sithvic3", 0);
	object oK_sta_lightjedi1 = GetObjectByTag("k_sta_lightjedi1", 0);
	object oK_sta_lightjedi2 = GetObjectByTag("k_sta_lightjedi2", 0);
	object oK_sta_lightjedi3 = GetObjectByTag("k_sta_lightjedi3", 0);
	effect efHit = EffectAssuredHit();
	ApplyEffectToObject(1, efHit, oSta45a_sithvic1, 25.0);
	ApplyEffectToObject(1, efHit, oSta45a_sithvic2, 25.0);
	ApplyEffectToObject(1, efHit, oSta45a_sithvic3, 25.0);
	ApplyEffectToObject(1, efHit, oK_sta_lightjedi1, 25.0);
	ApplyEffectToObject(1, efHit, oK_sta_lightjedi2, 25.0);
	ApplyEffectToObject(1, efHit, oK_sta_lightjedi3, 25.0);
	object oArea = GetArea(OBJECT_SELF);
	MusicBackgroundStop(oArea);
	DelayCommand(0.1, MusicBattlePlay(oArea));
}

