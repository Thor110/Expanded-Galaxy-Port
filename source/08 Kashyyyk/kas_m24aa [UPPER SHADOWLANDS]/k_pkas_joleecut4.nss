void main() {
	object oKas24_katarn_01 = GetObjectByTag("kas24_katarn_01", 0);
	object oJolee = GetObjectByTag("Jolee", 0);
	ActionPauseConversation();
	CancelCombat(oJolee);
	AssignCommand(oJolee, ActionAttack(oKas24_katarn_01, 0));
}

