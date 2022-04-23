void main() {
	object oKas24_katarn_04 = GetObjectByTag("kas24_katarn_04", 0);
	object oJolee = GetObjectByTag("Jolee", 0);
	ActionPauseConversation();
	CancelCombat(oJolee);
	AssignCommand(oJolee, ActionAttack(oKas24_katarn_04, 0));
}

