void main() {
	DelayCommand(7.9, SetGlobalNumber("STA_JEDI_ATTACK", 6));
	object oK_sta_darkjedi3 = GetObjectByTag("k_sta_darkjedi3", 0);
	ApplyEffectToObject(1, EffectAssuredHit(), oK_sta_darkjedi3, 5.0);
}

