void main() {
	object oKor35_captive9 = GetObjectByTag("kor35_captive9", 0);
	object oKor35_sithduel = GetObjectByTag("kor35_sithduel", 0);
	SetMinOneHP(oKor35_captive9, 0);
	ActionPauseConversation();
	AssignCommand(oKor35_sithduel, ActionAttack(oKor35_captive9, 0));
	ActionWait(5.0);
}

