void main() {
	object oKor39_yuthura = GetObjectByTag("kor39_yuthura", 0);
	int nMaxHP = GetMaxHitPoints(oKor39_yuthura);
	int int3 = (nMaxHP / 4);
	effect efDamage = EffectDamage(int3, 8, 0);
	ActionPauseConversation();
	ApplyEffectToObject(0, efDamage, oKor39_yuthura, 0.0);
	AssignCommand(oKor39_yuthura, ActionPlayAnimation(13, 0.7, 3.0));
	ActionResumeConversation();
}

