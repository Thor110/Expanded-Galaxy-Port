void main() {
	object oVision_channa = GetObjectByTag("vision_channa", 0);
	object oPC = GetFirstPC();
	object oVision_malak = GetObjectByTag("vision_malak", 0);
	int nCurHP = GetCurrentHitPoints(oPC);
	int nMaxHP = GetMaxHitPoints(oPC);
	int int5 = (nCurHP / nMaxHP);
	ApplyEffectToObject(0, EffectHeal(nMaxHP), oPC, 0.0);
	ApplyEffectToObject(0, EffectHeal(nMaxHP), oVision_channa, 0.0);
	ApplyEffectToObject(0, EffectHeal(nMaxHP), oVision_malak, 0.0);
}

