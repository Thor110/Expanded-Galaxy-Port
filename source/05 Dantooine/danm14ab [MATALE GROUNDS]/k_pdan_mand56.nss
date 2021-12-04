void main() {
	object oDan14_victim = GetObjectByTag("dan14_victim", 0);
	object oDan14ab_mand01 = GetObjectByTag("dan14ab_mand01", 0);
	ChangeToStandardFaction(oDan14_victim, 2);
	ChangeToStandardFaction(oDan14ab_mand01, 4);
	ActionPauseConversation();
	effect efHit = EffectAssuredHit();
	ApplyEffectToObject(1, efHit, oDan14ab_mand01, 5.0);
	ActionAttack(oDan14_victim, 0);
}

