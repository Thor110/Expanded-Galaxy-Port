void main() {
	object oEnd_droid03 = GetObjectByTag("end_droid03", 0);
	ChangeToStandardFaction(GetObjectByTag("end_trask", 0), 2);
	ChangeToStandardFaction(oEnd_droid03, 4);
	ActionPauseConversation();
	ActionAttack(GetObjectByTag("end_trask", 0), 0);
	AurPostString("Okay", 5, 5, 2.0);
}

