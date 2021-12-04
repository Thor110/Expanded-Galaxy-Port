void main() {
	object oK_sta_darkjedi1 = GetObjectByTag("k_sta_darkjedi1", 0);
	object oK_sta_darkjedi2 = GetObjectByTag("k_sta_darkjedi2", 0);
	object oK_sta_darkjedi3 = GetObjectByTag("k_sta_darkjedi3", 0);
	int nMaxHP = GetMaxHitPoints(oK_sta_darkjedi1);
	int nCurHP = GetCurrentHitPoints(oK_sta_darkjedi1);
	int int5 = GetCurrentHitPoints(oK_sta_darkjedi2);
	int int7 = GetCurrentHitPoints(oK_sta_darkjedi3);
	int nMaxFP = GetMaxForcePoints(oK_sta_darkjedi1);
	int nCurFP = GetCurrentForcePoints(oK_sta_darkjedi1);
	int int13 = GetCurrentForcePoints(oK_sta_darkjedi2);
	int int15 = GetCurrentForcePoints(oK_sta_darkjedi3);
	SetGlobalNumber("STA_JEDI_ATTACK", 4);
	effect efHeal = EffectHeal((nMaxHP - nCurHP));
	effect effect3 = EffectHeal((nMaxHP - int5));
	effect effect5 = EffectHeal((nMaxHP - int7));
}

